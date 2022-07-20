contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
address tokenERC20Address;
uint256 price;
uint256 sub_30aa49cb;
uint256 total;
uint256 limit;

function total() {
    return total
}

function sub_30aa49cb(?) {
    return sub_30aa49cb
}

function owner() {
    return address(owner)
}

function tokenERC20() {
    return tokenERC20Address
}

function price() {
    return price
}

function limit() {
    return limit
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: address(owner), 0
    address(owner) = 0
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenERC20Address = arg1
}

function withdrawBnb() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: address(owner), arg1
    address(owner) = arg1
}

function withdraw() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(tokenERC20Address)
    staticcall tokenERC20Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenERC20Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenERC20Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function transfer(uint256 arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        if idx >= mem[96]:
            revert with 0, 50
        _136 = mem[(32 * idx) + 128]
        _137 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_136)
        mem[mem[64] + 100] = arg1
        _138 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_138 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_138 + 36 len 28]
        mem[64] = _137 + 196
        mem[_137 + 132] = 32
        mem[_137 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenERC20Address):
            revert with 0, 'Address: call to non-contract'
        _145 = mem[_138]
        s = 0
        while s < _145:
            mem[s + _137 + 196] = mem[s + _138 + 32]
            s = s + 32
            continue 
        if ceil32(_145) > _145:
            mem[_145 + _137 + 196] = 0
        call tokenERC20Address.mem[_137 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_137 + 200 len _145 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_137 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_137 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _137 + 264] = mem[idx + _137 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_137 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _137 + ceil32(return_data.size) + 197
            mem[_137 + 196] = return_data.size
            mem[_137 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_137 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_137 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _137 + ceil32(return_data.size) + 265] = mem[idx + _137 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_137 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_137 + 228] == bool(mem[_137 + 228])
                if not mem[_137 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        revert with 0, 'R'
    if unknown_0x144fa6d7(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] == address(cd[4])
        if address(owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        tokenERC20Address = address(cd[4])
    else:
        if unknown_0x1da0603a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if address(owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x2ddbd13a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return total
            if unknown_0x30aa49cb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_30aa49cb
            if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit 0xfe8be007: address(owner), 0
                    address(owner) = 0
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return address(owner)
                    if unknown_0x9d143e8e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenERC20Address
                    if unknown_0xa035b1fe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return price
                    if unknown_0xa4d66daf(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return limit
                    if uint32(call.func_hash) >> 224 != unknown_0xd41f2365(?????):
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit 0xfe8be007: address(owner), address(cd[4])
                        address(owner) = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 36).length) + 129 > test266151307() or ceil32(32 * ('cd', 36).length) + 129 < 128:
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 36).length) + 129
                        mem[128] = ('cd', 36).length
                        require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
                        s = cd[36] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < ('cd', 36).length:
                            if idx >= mem[128]:
                                revert with 0, 50
                            _293 = mem[(32 * idx) + 160]
                            _294 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = address(_293)
                            mem[mem[64] + 100] = cd[4]
                            _303 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_303 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_303 + 36 len 28]
                            mem[64] = _294 + 196
                            mem[_294 + 132] = 32
                            mem[_294 + 164] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(tokenERC20Address):
                                revert with 0, 'Address: call to non-contract'
                            _310 = mem[_303]
                            s = 0
                            while s < _310:
                                mem[s + _294 + 196] = mem[s + _303 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_310) > _310:
                                mem[_310 + _294 + 196] = 0
                            call tokenERC20Address.mem[_294 + 196 len 4] with:
                                 gas gas_remaining wei
                                args mem[_294 + 200 len _310 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_294 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_294 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _294 + 264] = mem[idx + _294 + 164]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_294 + 264]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _294 + ceil32(return_data.size) + 197
                                mem[_294 + 196] = return_data.size
                                mem[_294 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_294 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_294 + ceil32(return_data.size) + 201] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _294 + ceil32(return_data.size) + 265] = mem[idx + _294 + 164]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_294 + ceil32(return_data.size) + 265]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_294 + 228] == bool(mem[_294 + 228])
                                    if not mem[_294 + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                require not msg.value
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[132] = this.address
                require ext_code.size(tokenERC20Address)
                staticcall tokenERC20Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 164] = address(owner)
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokenERC20Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 360] = 0
                call tokenERC20Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
