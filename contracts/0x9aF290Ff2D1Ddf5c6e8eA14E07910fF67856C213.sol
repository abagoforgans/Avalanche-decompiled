contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_296f9ca4;
array of address factories;
array of address candidates;

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function candidates(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < candidates.length
    return candidates[arg1]
}

function factories(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < factories.length
    return factories[arg1]
}

function owner() {
    return owner
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call arg1 with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_e273adb9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < factories.length:
            mem[0] = 2
            if address(cd[((32 * idx) + cd[4] + 36)]) == factories[s]:
                revert with 0, 'repeat'
            s = s + 1
            continue 
        factories.length++
        mem[0] = 2
        factories[factories.length] = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_3ea410b4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < candidates.length:
            mem[0] = 3
            if candidates[s] == address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'repeat token'
            s = s + 1
            continue 
        candidates.length++
        mem[0] = 3
        candidates[candidates.length] = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_027d6f56(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_f71c7e67(?) {
    require calldata.size - 4 >= 128
    if arg1 == arg2:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        return 0
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - arg3:
        if ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * arg3:
                    if ext_call.return_data[0] * arg3:
                        if 1000 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    else:
        if ext_call.return_data[0] - arg3:
            if (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4) / ext_call.return_data[0] - arg3 != sub_296f9ca4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                if (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4):
                    return ((0 / (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4)) + 1)
            else:
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0] * arg3:
                        if (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4):
                            return ((0 / (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4)) + 1)
                    else:
                        if ext_call.return_data[0] * arg3:
                            if 1000 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4):
                                return ((1000 * ext_call.return_data[0] * arg3 / (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4)) + 1)
    revert
}

function sub_e26fdb0a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    idx = 0
    while idx < factories.length:
        mem[0] = 2
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(factories[idx])
        staticcall factories[idx].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            if arg1 != arg2:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > arg3:
                    _49 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_49] = 30
                    mem[_49 + 32] = 'SafeMath: subtraction overflow'
                    if arg3 > ext_call.return_data[0]:
                        _50 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_50 + idx + 68] = mem[_49 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_50 + 68] = mem[_50 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _50 + -mem[64] + 100
                    if not ext_call.return_data[0] - arg3:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require ext_call.return_data[0] * arg3
                        require ext_call.return_data[0] * arg3
                        require 1000 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != 1000
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require ext_call.return_data[0] - arg3
                    if (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4) / ext_call.return_data[0] - arg3 != sub_296f9ca4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * arg3 / ext_call.return_data[0] != arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] * arg3:
                            require ext_call.return_data[0] * arg3
                            if 1000 * ext_call.return_data[0] * arg3 / ext_call.return_data[0] * arg3 != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (ext_call.return_data[0] * sub_296f9ca4) - (arg3 * sub_296f9ca4)
        idx = idx + 1
        continue 
    return 0
}

function sub_3d2860ce(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    idx = 0
    while idx < factories.length:
        mem[0] = 2
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = arg3
        require ext_code.size(factories[idx])
        staticcall factories[idx].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            if arg2 != arg3:
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                require ext_code.size(arg3)
                staticcall arg3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > arg1:
                    _89 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_89] = 30
                    mem[_89 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 > ext_call.return_data[0]:
                        _94 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_94 + idx + 68] = mem[_89 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_94 + 68] = mem[_94 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _94 + -mem[64] + 100
                    if not ext_call.return_data[0] - arg1:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require ext_call.return_data[0] * arg1
                        require ext_call.return_data[0] * arg1
                        require 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require ext_call.return_data[0] - arg1
                    if (ext_call.return_data[0] * sub_296f9ca4) - (arg1 * sub_296f9ca4) / ext_call.return_data[0] - arg1 != sub_296f9ca4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] * arg1:
                            require ext_call.return_data[0] * arg1
                            if 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require (ext_call.return_data[0] * sub_296f9ca4) - (arg1 * sub_296f9ca4)
        idx = idx + 1
        continue 
    idx = 0
    while idx < candidates.length:
        mem[0] = 3
        s = 0
        while s < factories.length:
            mem[0] = 2
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = candidates[idx]
            require ext_code.size(factories[s])
            staticcall factories[s].getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), candidates[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                if arg2 != candidates[idx]:
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = address(ext_call.return_data[0])
                    require ext_code.size(candidates[idx])
                    staticcall candidates[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > arg1:
                        _182 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_182] = 30
                        mem[_182 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 > ext_call.return_data[0]:
                            _183 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_183 + idx + 68] = mem[_182 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_183 + 68] = mem[_183 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _183 + -mem[64] + 100
                        if not ext_call.return_data[0] - arg1:
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require ext_call.return_data[0] * arg1
                            require ext_call.return_data[0] * arg1
                            require 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require ext_call.return_data[0] - arg1
                        if (ext_call.return_data[0] * sub_296f9ca4) - (arg1 * sub_296f9ca4) / ext_call.return_data[0] - arg1 != sub_296f9ca4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] * arg1:
                                require ext_call.return_data[0] * arg1
                                if 1000 * ext_call.return_data[0] * arg1 / ext_call.return_data[0] * arg1 != 1000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require (ext_call.return_data[0] * sub_296f9ca4) - (arg1 * sub_296f9ca4)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    return 0
}



}
