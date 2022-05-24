contract main {




// =====================  Runtime code  =====================


#
#  - sub_743acb80(?)
#
address WETHAddress;
address owner;
mapping of uint8 stor2;
array of struct whitelist;

function operators(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function whitelist(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < whitelist.length
    return whitelist[arg1].field_0, bool(whitelist[arg1].field_160)
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    owner = arg1
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < whitelist.length:
        mem[0] = 3
        if whitelist[idx].field_0 == arg1:
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            if 1 == bool(whitelist[idx].field_160):
                return 1, idx
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if not whitelist[idx].field_160:
                return 0, idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0, -1
}

function removeOperators(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_adb574d4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if WETHAddress == arg1:
            require ext_code.size(WETHAddress)
            call WETHAddress.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg2 with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function removeWhitelistAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        _32 = mem[(32 * idx) + 128]
        s = 0
        while s < whitelist.length:
            mem[0] = 3
            if whitelist[s].field_0 != address(_32):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if bool(whitelist[s].field_160) != 1:
                if s >= whitelist.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                if not whitelist[s].field_160:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            _45 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_45] = mem[(32 * idx) + 140 len 20]
            mem[_45 + 32] = 0
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            whitelist[s].field_0 = mem[_45 + 12 len 20]
            whitelist[s].field_160 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_d9c8287a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'ownerOrOperator'
    idx = 0
    while idx < whitelist.length:
        mem[0] = 3
        if whitelist[idx].field_0 != address(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= whitelist.length:
            revert with 'NH{q', 50
        if bool(whitelist[idx].field_160) != 1:
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if not whitelist[idx].field_160:
                revert with 0, 'restrict to whitelist address'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call address(arg2) with:
               value arg3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if WETHAddress == address(arg1):
                require ext_code.size(WETHAddress)
                call WETHAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(arg2) with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
    revert with 0, 'restrict to whitelist address'
}

function getWhitelistAddresses() {
    if whitelist.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = whitelist.length
    mem[64] = (32 * whitelist.length) + 128
    if not whitelist.length:
        idx = 0
        s = 0
        while idx < whitelist.length:
            mem[0] = 3
            if not whitelist[idx].field_160:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = whitelist[idx].field_0
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * whitelist.length) + 128] = 32
        mem[(32 * whitelist.length) + 160] = whitelist.length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < whitelist.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * whitelist.length] = call.data[calldata.size len 32 * whitelist.length]
        idx = 0
        s = 0
        while idx < whitelist.length:
            mem[0] = 3
            if not whitelist[idx].field_160:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = whitelist[idx].field_0
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * whitelist.length) + 128] = 32
        mem[(32 * whitelist.length) + 160] = whitelist.length
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * whitelist.length) + -mem[64] + 192
}

function sub_99b85104(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(ceil32(arg2.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 102 len arg2.length - 4]
    if not return_data.size:
        if ext_call.success:
            return Array(len=arg2.length, data=arg2[all])
        if arg2.length:
            revert with arg2[all]
        revert with 0, 
                    32,
                    arg4.length,
                    arg4[all],
                    Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, 32) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ext_call.success:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 
                32,
                arg4.length,
                arg4[all],
                Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, return_data.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
}

function addWhitelistAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _44 = mem[(32 * idx) + 128]
        s = 0
        while s < whitelist.length:
            mem[0] = 3
            if whitelist[s].field_0 != address(_44):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= whitelist.length:
                revert with 'NH{q', 50
            if 1 == bool(whitelist[s].field_160):
            if s >= whitelist.length:
                revert with 'NH{q', 50
            mem[0] = 3
            if whitelist[s].field_160:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s != -1:
                _69 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_69] = mem[(32 * idx) + 140 len 20]
                mem[_69 + 32] = 1
                if s >= whitelist.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                whitelist[s].field_0 = mem[_69 + 12 len 20]
                whitelist[s].field_160 = 1
            else:
                _71 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_71] = mem[(32 * idx) + 140 len 20]
                mem[_71 + 32] = 1
                whitelist.length++
                mem[0] = 3
                whitelist[whitelist.length].field_0 = mem[_71 + 12 len 20]
                whitelist[whitelist.length].field_160 = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_61] = mem[(32 * idx) + 140 len 20]
        mem[_61 + 32] = 1
        whitelist.length++
        mem[0] = 3
        whitelist[whitelist.length].field_0 = mem[_61 + 12 len 20]
        whitelist[whitelist.length].field_160 = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if WETHAddress != msg.sender:
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb83921a6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xb83921a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                    s = cd[4] + 36
                    t = 160
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'onlyOwner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        _10733 = mem[(32 * idx) + 160]
                        s = 0
                        while s < whitelist.length:
                            mem[0] = 3
                            if whitelist[s].field_0 != address(_10733):
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if s >= whitelist.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            if bool(whitelist[s].field_160) != 1:
                                if s >= whitelist.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                if not whitelist[s].field_160:
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            _16932 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            mem[_16932] = mem[(32 * idx) + 172 len 20]
                            mem[_16932 + 32] = 0
                            if s >= whitelist.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            whitelist[s].field_0 = mem[_16932 + 12 len 20]
                            whitelist[s].field_160 = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xbeabacc8(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xd365a377(?????):
                            require unknown_0xd9c8287a(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if owner != msg.sender:
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'ownerOrOperator'
                            idx = 0
                            while idx < whitelist.length:
                                mem[0] = 3
                                if whitelist[idx].field_0 != address(cd[36]):
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                if idx >= whitelist.length:
                                    revert with 'NH{q', 50
                                if bool(whitelist[idx].field_160) != 1:
                                    if idx >= whitelist.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    if not whitelist[idx].field_160:
                                        revert with 0, 'restrict to whitelist address'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                if address(cd[4]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                    call address(cd[36]) with:
                                       value cd[68] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if WETHAddress == address(cd[4]):
                                        require ext_code.size(WETHAddress)
                                        call WETHAddress.withdraw(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call address(cd[36]) with:
                                           value cd[68] wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[36]), cd[68]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            revert with 0, 'restrict to whitelist address'
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'onlyOwner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[0] = mem[(32 * idx) + 172 len 20]
                            mem[32] = 2
                            stor2[mem[(32 * idx) + 172 len 20]] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'onlyOwner'
                        if address(cd[4]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            call address(cd[36]) with:
                               value cd[68] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if WETHAddress == address(cd[4]):
                                require ext_code.size(WETHAddress)
                                call WETHAddress.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args cd[68]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call address(cd[36]) with:
                                   value cd[68] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x99b85104(?????):
                if unknown_0xad5c4648(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return WETHAddress
                require unknown_0xadb574d4(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 'NH{q', 65
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if owner != msg.sender:
                    revert with 0, 'onlyOwner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 172 len 20]] = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            if ('cd', 36).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[128] = ('cd', 36).length
            require cd[36] + ('cd', 36).length + 36 <= calldata.size
            mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            mem[('cd', 36).length + 160] = 0
            require cd[100] <= test266151307()
            require calldata.size > cd[100] + 35
            if ('cd', 100).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(('cd', 100).length)) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 100).length
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            mem[ceil32(ceil32(('cd', 36).length)) + 161 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
            mem[ceil32(ceil32(('cd', 36).length)) + ('cd', 100).length + 161] = 0
            if owner != msg.sender:
                revert with 0, 'onlyOwner'
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
            if ceil32(('cd', 36).length) > ('cd', 36).length:
                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = 0
            call address(cd[4]).mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len 4] with:
               value cd[68] wei
                 gas gas_remaining wei
                args mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 134 len ('cd', 36).length - 4]
            if return_data.size:
                if ext_call.success:
                    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            ('cd', 100).length,
                            call.data[cd[100] + 36 len ('cd', 100).length],
                            Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, return_data.size) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 
                            32,
                            ('cd', 100).length,
                            call.data[cd[100] + 36 len ('cd', 100).length],
                            Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, 32) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = 32
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = mem[96]
            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) > mem[96]:
                mem[mem[96] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = 0
            return Array(len=mem[96], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[96])]), 
        if unknown_0x3af32abf(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != addWhitelistAddresses(address[] arg1):
                if uint32(call.func_hash) >> 224 != unknown_0x13af4035(?????):
                    require unknown_0x13e7c9d8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor2[cd[4]])
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'onlyOwner'
                owner = address(cd[4])
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 4).length) + 129
                mem[128] = ('cd', 4).length
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if owner != msg.sender:
                    revert with 0, 'onlyOwner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 'NH{q', 50
                    _10728 = mem[(32 * idx) + 160]
                    s = 0
                    while s < whitelist.length:
                        mem[0] = 3
                        if whitelist[s].field_0 != address(_10728):
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if s >= whitelist.length:
                            revert with 'NH{q', 50
                        if 1 == bool(whitelist[s].field_160):
                        if s >= whitelist.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if whitelist[s].field_160:
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if s != -1:
                            _16938 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            mem[_16938] = mem[(32 * idx) + 172 len 20]
                            mem[_16938 + 32] = 1
                            if s >= whitelist.length:
                                revert with 'NH{q', 50
                            mem[0] = 3
                            whitelist[s].field_0 = mem[_16938 + 12 len 20]
                            whitelist[s].field_160 = 1
                        else:
                            _16940 = mem[64]
                            mem[64] = mem[64] + 64
                            if idx >= mem[128]:
                                revert with 'NH{q', 50
                            mem[_16940] = mem[(32 * idx) + 172 len 20]
                            mem[_16940 + 32] = 1
                            whitelist.length++
                            mem[0] = 3
                            whitelist[whitelist.length].field_0 = mem[_16940 + 12 len 20]
                            whitelist[whitelist.length].field_160 = 1
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _15898 = mem[64]
                    mem[64] = mem[64] + 64
                    if idx >= mem[128]:
                        revert with 'NH{q', 50
                    mem[_15898] = mem[(32 * idx) + 172 len 20]
                    mem[_15898 + 32] = 1
                    whitelist.length++
                    mem[0] = 3
                    whitelist[whitelist.length].field_0 = mem[_15898 + 12 len 20]
                    whitelist[whitelist.length].field_160 = 1
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if unknown_0x3af32abf(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                idx = 0
                while idx < whitelist.length:
                    mem[0] = 3
                    if whitelist[idx].field_0 == address(cd[4]):
                        if idx >= whitelist.length:
                            revert with 'NH{q', 50
                        if 1 == bool(whitelist[idx].field_160):
                            return 1, idx
                        if idx >= whitelist.length:
                            revert with 'NH{q', 50
                        mem[0] = 3
                        if not whitelist[idx].field_160:
                            return 0, idx
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                return 0, -1
            if unknown_0x578cbd1f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if whitelist.length > test266151307():
                    revert with 'NH{q', 65
                mem[128] = whitelist.length
                mem[64] = (32 * whitelist.length) + 160
                if whitelist.length:
                    mem[160 len 32 * whitelist.length] = call.data[calldata.size len 32 * whitelist.length]
                idx = 0
                s = 0
                while idx < whitelist.length:
                    mem[0] = 3
                    if not whitelist[idx].field_160:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= whitelist.length:
                        revert with 'NH{q', 50
                    mem[0] = 3
                    if s >= whitelist.length:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 160] = whitelist[idx].field_0
                    if s == -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[(32 * whitelist.length) + 160] = 32
                mem[(32 * whitelist.length) + 192] = whitelist.length
                idx = 0
                s = mem[64] + 64
                t = 160
                while idx < whitelist.length:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * whitelist.length) + -mem[64] + 224
            if uint32(call.func_hash) >> 224 != unknown_0x743acb80(?????):
                require unknown_0x7ebd1b30(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] < whitelist.length
                return whitelist[cd[4]].field_0, bool(whitelist[cd[4]].field_160)
            require not msg.value
            require calldata.size - 4 >= 192
            require cd[4] == address(cd[4])
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            if ('cd', 100).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * ('cd', 100).length) + 129 < 128 or ceil32(32 * ('cd', 100).length) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[128] = ('cd', 100).length
            require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
            s = cd[100] + 36
            t = 160
            idx = 0
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if msg.sender == owner:
                if block.number > cd[164]:
                    revert with 0, 'expired'
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                if mem[172 len 20] < mem[204 len 20]:
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _5462 = mem[160]
                    if 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(32 * ('cd', 100).length) + 129 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if mem[172 len 20] == address(_5462):
                        if not cd[132]:
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5694 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5694).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5830 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5830).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5462):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5462):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5832 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5832).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[50 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6150 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6150).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                    else:
                        if not cd[132]:
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5698 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5698).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5835 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5835).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5462):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5462):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5837 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5837).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[18 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6160 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6160).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5462):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                else:
                    if 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _5464 = mem[192]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(32 * ('cd', 100).length) + 129 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if mem[172 len 20] == address(_5464):
                        if not cd[132]:
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5702 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5702).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5840 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5840).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5464):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5464):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5842 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5842).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[50 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6170 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6170).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                    else:
                        if not cd[132]:
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5706 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5706).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5845 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5845).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5464):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5464):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5847 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5847).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[18 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6180 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6180).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5464):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
            else:
                if bool(stor2[msg.sender]) != 1:
                    revert with 0, 'ownerOrOperator'
                if block.number > cd[164]:
                    revert with 0, 'expired'
                if 1 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                if 0 >= ('cd', 100).length:
                    revert with 'NH{q', 50
                if mem[172 len 20] < mem[204 len 20]:
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _5483 = mem[160]
                    if 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(32 * ('cd', 100).length) + 129 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if mem[172 len 20] == address(_5483):
                        if not cd[132]:
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5746 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5746).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5910 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5910).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5483):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5483):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5912 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5912).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[50 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6262 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6262).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                    else:
                        if not cd[132]:
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5750 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5750).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5915 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5915).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5483):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5483):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5917 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5917).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[18 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6272 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6272).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5483):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                else:
                    if 1 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    _5485 = mem[192]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getReserves() with:
                            gas gas_remaining wei
                    mem[ceil32(32 * ('cd', 100).length) + 129 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    if mem[172 len 20] == address(_5485):
                        if not cd[132]:
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5754 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5754).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[50 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[18 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5920 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5920).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5485):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5485):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5922 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5922).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[50 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[18 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6282 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6282).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                    else:
                        if not cd[132]:
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5758 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5758).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            else:
                                if False and ext_call.return_data[18 len 14] > 0:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 18
                                if 0 / 10000 * ext_call.return_data[50 len 14] < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5925 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5925).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 100).length == bool(('cd', 100).length)
                                    if not ('cd', 100).length:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5485):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                            else:
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                    if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[172 len 20] == address(_5485):
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                        mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                        else:
                            if cd[36] and cd[132] > -1 / cd[36]:
                                revert with 'NH{q', 17
                            if not cd[132]:
                                revert with 'NH{q', 18
                            if cd[36] * cd[132] / cd[132] != cd[36]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if 0 / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _5927 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_5927).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                            else:
                                if cd[36] * cd[132] and ext_call.return_data[18 len 14] > -1 / cd[36] * cd[132]:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != cd[36] * cd[132]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * ext_call.return_data[50 len 14] > !(cd[36] * cd[132]):
                                    revert with 'NH{q', 17
                                if (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < 10000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]):
                                    revert with 'NH{q', 18
                                if cd[36] * cd[132] * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (cd[36] * cd[132]) < cd[68]:
                                    revert with 0, 'insufficient output'
                                if 0 >= ('cd', 100).length:
                                    revert with 'NH{q', 50
                                _6292 = mem[160]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = address(cd[4])
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = 68
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 161 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 96] = 0, address(cd[4]), cd[36], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 28]
                                mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                call address(_6292).mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 233 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 100).length == bool(('cd', 100).length)
                                        if not ('cd', 100).length:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 265] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 297] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 361] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 393] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 425 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229])]
                                else:
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 229] = return_data.size
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261] == bool(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261])
                                        if not mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 261]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if 0 >= ('cd', 100).length:
                                        revert with 'NH{q', 50
                                    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if mem[172 len 20] == address(_5485):
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                    else:
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 266] = cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132])
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = 0
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 362] = 128
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 394] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]
                                        mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])] = mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 262 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
                                        if ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]) > mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230]:
                                            mem[mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args cd[36] * cd[132] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (cd[36] * cd[132]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230], mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 426 len ceil32(mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
