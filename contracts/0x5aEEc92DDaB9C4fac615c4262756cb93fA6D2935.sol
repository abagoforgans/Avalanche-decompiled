contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 stor3;
uint256 stor4; offset 32
uint256 stor4;

function isOwner() {
    return (msg.sender == stor0)
}

function isWhitelisted() {
    return (bool(stor1[msg.sender]) == 1)
}

function sub_6adff6d7(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    stor3 = arg1
}

function sub_26e3b8e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor1[stor0] = 0
    stor0 = arg1
    stor1[arg1] = 1
}

function drain(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
}

function sub_5a1ed9e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    if stor0 == address(arg1):
        revert with 0, 'Big Boss has immunity!'
    stor1[address(arg1)] = 0
}

function sub_88f93af8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x88f93af8(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x26e3b8e2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if stor0 != msg.sender:
                revert with 0, 'Mind your own business!'
            stor1[address(cd[4])] = 1
        else:
            if unknown_0x5a1ed9e3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if stor0 != msg.sender:
                    revert with 0, 'Mind your own business!'
                if stor0 == address(cd[4]):
                    revert with 0, 'Big Boss has immunity!'
                stor1[address(cd[4])] = 0
            else:
                if unknown_0x611b4095(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (bool(stor1[msg.sender]) == 1)
                require unknown_0x6adff6d7(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if bool(stor1[msg.sender]) != 1:
                    revert with 0, 'Mind your own business!'
                stor3 = cd[4]
    if unknown_0x88f93af8(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
            revert with 0, 65
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        idx = cd[4] + 36
        s = 160
        while idx < cd[4] + (32 * ('cd', 4).length) + 36:
            require cd[idx] == address(cd[idx])
            mem[s] = cd[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if stor0 != msg.sender:
            revert with 0, 'Mind your own business!'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 172 len 20]
            mem[32] = 1
            stor1[mem[(32 * idx) + 172 len 20]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return (msg.sender == stor0)
    if uint32(call.func_hash) >> 224 != unknown_0xaa6796b7(?????):
        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
            require unknown_0xf6b19c74(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 32
            if bool(stor1[msg.sender]) != 1:
                revert with 0, 'Mind your own business!'
            call msg.sender with:
               value cd[4] wei
                 gas gas_remaining wei
        else:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if stor0 != msg.sender:
                revert with 0, 'Mind your own business!'
            stor1[stor0] = 0
            stor0 = address(cd[4])
            stor1[address(cd[4])] = 1
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
        revert with 0, 65
    mem[128] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 160
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    mem[ceil32(32 * ('cd', 4).length) + 129] = 4
    mem[ceil32(32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + 257] = 0
    if 1 == stor3:
        return ''
    if ('cd', 4).length != 3:
        mem[ceil32(32 * ('cd', 4).length) + 289] = 2
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 321] = mem[204 len 20]
        if 0 >= ('cd', 4).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 353] = mem[172 len 20]
        mem[ceil32(32 * ('cd', 4).length) + 385] = 4
        mem[ceil32(32 * ('cd', 4).length) + 417 len 128] = call.data[calldata.size len 128]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 549] = this.address
        staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * ('cd', 4).length) + 545] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 == cd[68]:
            mem[ceil32(32 * ('cd', 4).length) + 449] = ext_call.return_data[0]
            mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = ext_call.return_data[0]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = 64
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = 2
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 321
            t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545
            require return_data.size >= 32
            _1165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 545 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 576
            _1169 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]
            if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 546 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 546
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545] = _1169
            require _1165 + (32 * _1169) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577 len ceil32(32 * _1169)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1165 + 577 len ceil32(32 * _1169)]
            if _1169 < 1:
                revert with 0, 17
            if _1169 - 1 >= _1169:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _1169 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = -6
            call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), -6
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1679] == bool(mem[_1679])
            if 15 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 321
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + 225] = 2
                mem[mem[64]] = 32
                _2137 = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 64 len 32 * _2137] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2137]
                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2137) + 32]
                mem[mem[64]] = 32
                _2581 = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 64 len 32 * _2581] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2581]
                return 32, mem[mem[64] + 32 len (32 * _2581) + 32]
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
                revert with 0, 17
            if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                revert with 0, 18
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                revert with 0, 17
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 225] = 1
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
            mem[mem[64]] = 32
            _2225 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2225] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2225]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2225) + 32]
            mem[mem[64]] = 32
            _2582 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2582] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2582]
            return 32, mem[mem[64] + 32 len (32 * _2582) + 32]
        mem[ceil32(32 * ('cd', 4).length) + 417] = ext_call.return_data[0]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = uint256(stor4.field_0)
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = 64
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = ('cd', 4).length
        idx = 0
        s = 160
        t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args uint256(stor4.field_0), Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645 len 32 * ('cd', 4).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545
        require return_data.size >= 32
        _1166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32)
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 545 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 576
        _1170 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 546 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 546
        mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545] = _1170
        require _1166 + (32 * _1170) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577 len ceil32(32 * _1170)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1166 + 577 len ceil32(32 * _1170)]
        if _1170 < 1:
            revert with 0, 17
        if _1170 - 1 >= _1170:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _1170 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577]
        if 35 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 4).length
        idx = 0
        s = 160
        t = mem[64] + 164
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp + 35
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value uint256(stor4.field_0) wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 4).length, mem[mem[64] + 164 len 32 * ('cd', 4).length]
        if not ext_call.success:
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 161] = 2
            mem[mem[64]] = 32
            _2139 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2139] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2139]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2139) + 32]
            mem[mem[64]] = 32
            _2583 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2583] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2583]
            return 32, mem[mem[64] + 32 len (32 * _2583) + 32]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 449] = mem[_2169]
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if mem[ceil32(32 * ('cd', 4).length) + 449] < mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 17
        if mem[ceil32(32 * ('cd', 4).length) + 449] - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not mem[ceil32(32 * ('cd', 4).length) + 481]:
            revert with 0, 18
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 100 < (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
            revert with 0, 17
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 161] = 1
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 0 == mem[ceil32(32 * ('cd', 4).length) + 449]:
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 193] = 100
            mem[mem[64]] = 32
            _2264 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2264] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2264]
            return 32, mem[mem[64] + 32 len (32 * _2264) + 32]
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 193] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
        if 1 == cd[68]:
            mem[mem[64]] = 32
            _2263 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2263] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2263]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2263) + 32]
            mem[mem[64]] = 32
            _2584 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2584] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2584]
            return 32, mem[mem[64] + 32 len (32 * _2584) + 32]
        if cd[68] != 2:
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            _2271 = mem[ceil32(32 * ('cd', 4).length) + 449]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2271
            mem[mem[64] + 36] = 64
            _2285 = mem[ceil32(32 * ('cd', 4).length) + 289]
            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 289]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 321
            t = mem[64] + 100
            while idx < _2285:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _2271, 64, mem[mem[64] + 68 len (32 * _2285) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2572 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2589 = mem[_2572]
            require mem[_2572] <= test266151307()
            require _2572 + return_data.size > _2572 + mem[_2572] + 31
            _2604 = mem[_2572 + mem[_2572]]
            if mem[_2572 + mem[_2572]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2572 + mem[_2572]]) + 1 < 0 or _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2572 + ceil32(return_data.size) + ceil32(32 * mem[_2572 + mem[_2572]]) + 1
            mem[_2572 + ceil32(return_data.size)] = _2604
            require _2589 + (32 * _2604) + 32 <= return_data.size
            mem[_2572 + ceil32(return_data.size) + 32 len ceil32(32 * _2604)] = mem[_2572 + _2589 + 32 len ceil32(32 * _2604)]
            if _2604 < 1:
                revert with 0, 17
            if _2604 - 1 >= _2604:
                revert with 0, 50
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _2604 - 1) + _2572 + ceil32(return_data.size) + 32]
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = -6
            call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), -6
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2873] == bool(mem[_2873])
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            _2885 = mem[ceil32(32 * ('cd', 4).length) + 449]
            if 15 > !block.timestamp:
                revert with 0, 17
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2885
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _2893 = mem[ceil32(32 * ('cd', 4).length) + 289]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 289]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 321
            t = mem[64] + 196
            while idx < _2893:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _2885, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2893) + 32]
            if not ext_call.success:
                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 50
                mem[ceil32(32 * ('cd', 4).length) + 225] = 2
                mem[mem[64]] = 32
                _3053 = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 64 len 32 * _3053] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3053]
                var185001 = _3053
                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3053) + 32]
                mem[mem[64]] = 32
                _3193 = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
                mem[mem[64] + 64 len 32 * _3193] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3193]
                return 32, mem[mem[64] + 32 len (32 * _3193) + 32]
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
                revert with 0, 17
            if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                revert with 0, 18
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                revert with 0, 17
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 225] = 1
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                revert with 0, 50
            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
            mem[mem[64]] = 32
            _3141 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3141] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3141]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3141) + 32]
            mem[mem[64]] = 32
            _3194 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3194] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3194]
            return 32, mem[mem[64] + 32 len (32 * _3194) + 32]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 449] = mem[_2293]
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        _2319 = mem[ceil32(32 * ('cd', 4).length) + 449]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2319
        mem[mem[64] + 36] = 64
        _2325 = mem[ceil32(32 * ('cd', 4).length) + 289]
        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 289]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = mem[64] + 100
        while idx < _2325:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _2319, 64, mem[mem[64] + 68 len (32 * _2325) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2573 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2590 = mem[_2573]
        require mem[_2573] <= test266151307()
        require _2573 + return_data.size > _2573 + mem[_2573] + 31
        _2605 = mem[_2573 + mem[_2573]]
        if mem[_2573 + mem[_2573]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2573 + mem[_2573]]) + 1 < 0 or _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2573 + ceil32(return_data.size) + ceil32(32 * mem[_2573 + mem[_2573]]) + 1
        mem[_2573 + ceil32(return_data.size)] = _2605
        require _2590 + (32 * _2605) + 32 <= return_data.size
        mem[_2573 + ceil32(return_data.size) + 32 len ceil32(32 * _2605)] = mem[_2573 + _2590 + 32 len ceil32(32 * _2605)]
        if _2605 < 1:
            revert with 0, 17
        if _2605 - 1 >= _2605:
            revert with 0, 50
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _2605 - 1) + _2573 + ceil32(return_data.size) + 32]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = -6
        call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), -6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2874 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2874] == bool(mem[_2874])
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        _2886 = mem[ceil32(32 * ('cd', 4).length) + 449]
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2886
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _2894 = mem[ceil32(32 * ('cd', 4).length) + 289]
        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 289]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = mem[64] + 196
        while idx < _2894:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 15
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _2886, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2894) + 32]
        if not ext_call.success:
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 225] = 2
            mem[mem[64]] = 32
            _3055 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3055] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3055]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3055) + 32]
            mem[mem[64]] = 32
            _3195 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3195] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3195]
            return 32, mem[mem[64] + 32 len (32 * _3195) + 32]
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 17
        if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not mem[ceil32(32 * ('cd', 4).length) + 481]:
            revert with 0, 18
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
            revert with 0, 17
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 225] = 1
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
        mem[mem[64]] = 32
        _3142 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3142] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3142]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3142) + 32]
        mem[mem[64]] = 32
        _3196 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3196] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3196]
        return 32, mem[mem[64] + 32 len (32 * _3196) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 289] = 3
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 321] = mem[236 len 20]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 353] = mem[204 len 20]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 385] = mem[172 len 20]
    mem[ceil32(32 * ('cd', 4).length) + 417] = 4
    mem[ceil32(32 * ('cd', 4).length) + 449 len 128] = call.data[calldata.size len 128]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 581] = this.address
    staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 4).length) + 577] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 == cd[68]:
        mem[ceil32(32 * ('cd', 4).length) + 481] = ext_call.return_data[0]
        mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = ext_call.return_data[0]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = 64
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645] = 3
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 677
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=3, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 677 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577
        require return_data.size >= 32
        _1167 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 577 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 608
        _1171 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 577]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 577] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 577]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 577]) + 578 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], ext_call.return_data[0 len 28] + 577]) + 578
        mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577] = _1171
        require _1167 + (32 * _1171) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 609 len ceil32(32 * _1171)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1167 + 609 len ceil32(32 * _1171)]
        if _1171 < 1:
            revert with 0, 17
        if _1171 - 1 >= _1171:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 513] = mem[(32 * _1171 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 609]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = -6
        call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), -6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1681 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1681] == bool(mem[_1681])
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 3
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = mem[64] + 196
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 15
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
        if not ext_call.success:
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 225] = 2
            mem[mem[64]] = 32
            _2140 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2140] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2140]
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2140) + 32]
            mem[mem[64]] = 32
            _2585 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _2585] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2585]
            return 32, mem[mem[64] + 32 len (32 * _2585) + 32]
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 481] = eth.balance(this.address)
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 449]:
            revert with 0, 17
        if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 449] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not mem[ceil32(32 * ('cd', 4).length) + 513]:
            revert with 0, 18
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]:
            revert with 0, 17
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 545] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 225] = 1
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
        mem[mem[64]] = 32
        _2227 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2227] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2227]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2227) + 32]
        mem[mem[64]] = 32
        _2586 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2586] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2586]
        return 32, mem[mem[64] + 32 len (32 * _2586) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 449] = ext_call.return_data[0]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = uint256(stor4.field_0)
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = 64
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645] = ('cd', 4).length
    idx = 0
    s = 160
    t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 677
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor4.field_0), Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 677 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577
    require return_data.size >= 32
    _1168 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32)
    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 577 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 608
    _1172 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 577]
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 577] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 577]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 577]) + 578 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 577 len 4], Mask(224, 0, stor4.field_32) + 577]) + 578
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577] = _1172
    require _1168 + (32 * _1172) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 609 len ceil32(32 * _1172)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1168 + 609 len ceil32(32 * _1172)]
    if _1172 < 1:
        revert with 0, 17
    if _1172 - 1 >= _1172:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 513] = mem[(32 * _1172 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 609]
    if 35 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 4).length
    idx = 0
    s = 160
    t = mem[64] + 164
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp + 35
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value uint256(stor4.field_0) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 4).length, mem[mem[64] + 164 len 32 * ('cd', 4).length]
    if not ext_call.success:
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 161] = 2
        mem[mem[64]] = 32
        _2142 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2142] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2142]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2142) + 32]
        mem[mem[64]] = 32
        _2587 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2587] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2587]
        return 32, mem[mem[64] + 32 len (32 * _2587) + 32]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2170 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 481] = mem[_2170]
    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if mem[ceil32(32 * ('cd', 4).length) + 481] < mem[ceil32(32 * ('cd', 4).length) + 449]:
        revert with 0, 17
    if mem[ceil32(32 * ('cd', 4).length) + 481] - mem[ceil32(32 * ('cd', 4).length) + 449] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not mem[ceil32(32 * ('cd', 4).length) + 513]:
        revert with 0, 18
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 100 < (100 * mem[ceil32(32 * ('cd', 4).length) + 481]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]:
        revert with 0, 17
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 545] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 481]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 161] = 1
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 0 == mem[ceil32(32 * ('cd', 4).length) + 481]:
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 193] = 100
        mem[mem[64]] = 32
        _2268 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2268] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2268]
        return 32, mem[mem[64] + 32 len (32 * _2268) + 32]
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 193] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 481]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
    if 1 == cd[68]:
        mem[mem[64]] = 32
        _2267 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2267] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2267]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2267) + 32]
        mem[mem[64]] = 32
        _2588 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _2588] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _2588]
        return 32, mem[mem[64] + 32 len (32 * _2588) + 32]
    if cd[68] != 2:
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        _2275 = mem[ceil32(32 * ('cd', 4).length) + 481]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2275
        mem[mem[64] + 36] = 64
        _2289 = mem[ceil32(32 * ('cd', 4).length) + 289]
        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 289]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = mem[64] + 100
        while idx < _2289:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _2275, 64, mem[mem[64] + 68 len (32 * _2289) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2578 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2591 = mem[_2578]
        require mem[_2578] <= test266151307()
        require _2578 + return_data.size > _2578 + mem[_2578] + 31
        _2610 = mem[_2578 + mem[_2578]]
        if mem[_2578 + mem[_2578]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_2578 + mem[_2578]]) + 1 < 0 or _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _2578 + ceil32(return_data.size) + ceil32(32 * mem[_2578 + mem[_2578]]) + 1
        mem[_2578 + ceil32(return_data.size)] = _2610
        require _2591 + (32 * _2610) + 32 <= return_data.size
        mem[_2578 + ceil32(return_data.size) + 32 len ceil32(32 * _2610)] = mem[_2578 + _2591 + 32 len ceil32(32 * _2610)]
        if _2610 < 1:
            revert with 0, 17
        if _2610 - 1 >= _2610:
            revert with 0, 50
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 513] = mem[(32 * _2610 - 1) + _2578 + ceil32(return_data.size) + 32]
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = -6
        call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), -6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2875 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2875] == bool(mem[_2875])
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        _2887 = mem[ceil32(32 * ('cd', 4).length) + 481]
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2887
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _2895 = mem[ceil32(32 * ('cd', 4).length) + 289]
        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 289]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 321
        t = mem[64] + 196
        while idx < _2895:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 15
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _2887, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2895) + 32]
        if not ext_call.success:
            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 50
            mem[ceil32(32 * ('cd', 4).length) + 225] = 2
            mem[mem[64]] = 32
            _3057 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3057] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3057]
            var187001 = _3057
            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3057) + 32]
            mem[mem[64]] = 32
            _3197 = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
            mem[mem[64] + 64 len 32 * _3197] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3197]
            return 32, mem[mem[64] + 32 len (32 * _3197) + 32]
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 481] = eth.balance(this.address)
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 449]:
            revert with 0, 17
        if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 449] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if not mem[ceil32(32 * ('cd', 4).length) + 513]:
            revert with 0, 18
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]:
            revert with 0, 17
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 545] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 225] = 1
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
            revert with 0, 50
        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
        mem[mem[64]] = 32
        _3143 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3143] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3143]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3143) + 32]
        mem[mem[64]] = 32
        _3198 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3198] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3198]
        return 32, mem[mem[64] + 32 len (32 * _3198) + 32]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    staticcall mem[(32 * ('cd', 4).length - 1) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2295 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 481] = mem[_2295]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    _2321 = mem[ceil32(32 * ('cd', 4).length) + 481]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _2321
    mem[mem[64] + 36] = 64
    _2326 = mem[ceil32(32 * ('cd', 4).length) + 289]
    mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 289]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 321
    t = mem[64] + 100
    while idx < _2326:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _2321, 64, mem[mem[64] + 68 len (32 * _2326) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2579 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2592 = mem[_2579]
    require mem[_2579] <= test266151307()
    require _2579 + return_data.size > _2579 + mem[_2579] + 31
    _2611 = mem[_2579 + mem[_2579]]
    if mem[_2579 + mem[_2579]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_2579 + mem[_2579]]) + 1 < 0 or _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _2579 + ceil32(return_data.size) + ceil32(32 * mem[_2579 + mem[_2579]]) + 1
    mem[_2579 + ceil32(return_data.size)] = _2611
    require _2592 + (32 * _2611) + 32 <= return_data.size
    mem[_2579 + ceil32(return_data.size) + 32 len ceil32(32 * _2611)] = mem[_2579 + _2592 + 32 len ceil32(32 * _2611)]
    if _2611 < 1:
        revert with 0, 17
    if _2611 - 1 >= _2611:
        revert with 0, 50
    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 513] = mem[(32 * _2611 - 1) + _2579 + ceil32(return_data.size) + 32]
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = -6
    call mem[(32 * ('cd', 4).length - 1) + 172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), -6
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2876 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2876] == bool(mem[_2876])
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    _2888 = mem[ceil32(32 * ('cd', 4).length) + 481]
    if 15 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _2888
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _2896 = mem[ceil32(32 * ('cd', 4).length) + 289]
    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 289]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 321
    t = mem[64] + 196
    while idx < _2896:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 15
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _2888, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2896) + 32]
    if not ext_call.success:
        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 225] = 2
        mem[mem[64]] = 32
        _3059 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3059] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3059]
        emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3059) + 32]
        mem[mem[64]] = 32
        _3199 = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 64 len 32 * _3199] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3199]
        return 32, mem[mem[64] + 32 len (32 * _3199) + 32]
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 481] = eth.balance(this.address)
    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 449]:
        revert with 0, 17
    if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 449] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not mem[ceil32(32 * ('cd', 4).length) + 513]:
        revert with 0, 18
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]:
        revert with 0, 17
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 545] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 225] = 1
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 417]:
        revert with 0, 50
    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
        revert with 0, 50
    mem[ceil32(32 * ('cd', 4).length) + 257] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) / mem[ceil32(32 * ('cd', 4).length) + 513]) + 100
    mem[mem[64]] = 32
    _3144 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 64 len 32 * _3144] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3144]
    emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3144) + 32]
    mem[mem[64]] = 32
    _3200 = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 129]
    mem[mem[64] + 64 len 32 * _3200] = mem[ceil32(32 * ('cd', 4).length) + 161 len 32 * _3200]
    return 32, mem[mem[64] + 32 len (32 * _3200) + 32]
}

function sub_aa6796b7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    else:
        if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
            revert with 0, 65
        else:
            mem[96] = ('cd', 4).length
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            idx = cd[4] + 36
            s = 128
            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                idx = idx + 32
                s = s + 32
                continue 
            require cd[36] == address(cd[36])
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[msg.sender]) != 1:
                revert with 0, 'Mind your own business!'
            else:
                mem[ceil32(32 * ('cd', 4).length) + 97] = 4
                mem[ceil32(32 * ('cd', 4).length) + 129] = 0
                mem[ceil32(32 * ('cd', 4).length) + 161] = 0
                mem[ceil32(32 * ('cd', 4).length) + 193] = 0
                mem[ceil32(32 * ('cd', 4).length) + 225] = 0
                if stor3 != 1:
                    if ('cd', 4).length != 3:
                        mem[ceil32(32 * ('cd', 4).length) + 257] = 2
                        if 1 >= ('cd', 4).length:
                            revert with 0, 50
                        else:
                            mem[ceil32(32 * ('cd', 4).length) + 289] = mem[172 len 20]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            else:
                                mem[ceil32(32 * ('cd', 4).length) + 321] = mem[140 len 20]
                                mem[ceil32(32 * ('cd', 4).length) + 353] = 4
                                mem[ceil32(32 * ('cd', 4).length) + 385 len 128] = call.data[calldata.size len 128]
                                if 2 == cd[68]:
                                    if ('cd', 4).length < 1:
                                        revert with 0, 17
                                    else:
                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        else:
                                            mem[ceil32(32 * ('cd', 4).length) + 517] = this.address
                                            staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(32 * ('cd', 4).length) + 513] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[ceil32(32 * ('cd', 4).length) + 417] = ext_call.return_data[0]
                                                mem[ceil32(32 * ('cd', 4).length) + 385] = eth.balance(this.address)
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = 64
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = 2
                                                idx = 0
                                                s = ceil32(32 * ('cd', 4).length) + 289
                                                t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0], Array(len=2, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613 len 64])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 513
                                                    require return_data.size >= 32
                                                    _1138 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28]
                                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 513 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 544
                                                    _1142 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513]
                                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513] > test266151307():
                                                        revert with 0, 65
                                                    else:
                                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513]) + 514 > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513]) + 514
                                                            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 513] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], ext_call.return_data[0 len 28] + 513]
                                                            require _1138 + (32 * _1142) + 32 <= return_data.size
                                                            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545 len ceil32(32 * _1142)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1138 + 545 len ceil32(32 * _1142)]
                                                            if _1142 < 1:
                                                                revert with 0, 17
                                                            else:
                                                                if _1142 - 1 >= _1142:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[ceil32(32 * ('cd', 4).length) + 449] = mem[(32 * _1142 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545]
                                                                    if ('cd', 4).length < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                            mem[mem[64] + 36] = -6
                                                                            call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args address(cd[36]), -6
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1652 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_1652] == bool(mem[_1652])
                                                                                if 15 > !block.timestamp:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                    mem[mem[64] + 4] = ext_call.return_data[0]
                                                                                    mem[mem[64] + 36] = 0
                                                                                    mem[mem[64] + 68] = 160
                                                                                    mem[mem[64] + 164] = 2
                                                                                    idx = 0
                                                                                    s = ceil32(32 * ('cd', 4).length) + 289
                                                                                    t = mem[64] + 196
                                                                                    while idx < 2:
                                                                                        mem[t] = mem[s + 12 len 20]
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    mem[mem[64] + 100] = this.address
                                                                                    mem[mem[64] + 132] = block.timestamp + 15
                                                                                    require ext_code.size(address(cd[36]))
                                                                                    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                         gas gas_remaining wei
                                                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
                                                                                    if not ext_call.success:
                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                            mem[mem[64]] = 32
                                                                                            _2110 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                            mem[mem[64] + 64 len 32 * _2110] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2110]
                                                                                            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2110) + 32]
                                                                                            mem[mem[64]] = 32
                                                                                            _2554 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                            mem[mem[64] + 64 len 32 * _2554] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2554]
                                                                                            return 32, mem[mem[64] + 32 len (32 * _2554) + 32]
                                                                                    else:
                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 385] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                _2198 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                mem[mem[64] + 64 len 32 * _2198] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2198]
                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2198) + 32]
                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                _2555 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                mem[mem[64] + 64 len 32 * _2555] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2555]
                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _2555) + 32]
                                else:
                                    if ('cd', 4).length < 1:
                                        revert with 0, 17
                                    else:
                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        else:
                                            mem[ceil32(32 * ('cd', 4).length) + 517] = this.address
                                            staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[ceil32(32 * ('cd', 4).length) + 513] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[ceil32(32 * ('cd', 4).length) + 385] = ext_call.return_data[0]
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 517] = uint256(stor4.field_0)
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = 64
                                                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = ('cd', 4).length
                                                idx = 0
                                                s = 128
                                                t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613
                                                while idx < ('cd', 4).length:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                        gas gas_remaining wei
                                                       args uint256(stor4.field_0), Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613 len 32 * ('cd', 4).length])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 513
                                                    require return_data.size >= 32
                                                    _1139 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32)
                                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                                    require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 513 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 544
                                                    _1143 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513]
                                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513] > test266151307():
                                                        revert with 0, 65
                                                    else:
                                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513]) + 514 > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513]) + 514
                                                            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 513] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 513 len 4], Mask(224, 0, stor4.field_32) + 513]
                                                            require _1139 + (32 * _1143) + 32 <= return_data.size
                                                            mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545 len ceil32(32 * _1143)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1139 + 545 len ceil32(32 * _1143)]
                                                            if _1143 < 1:
                                                                revert with 0, 17
                                                            else:
                                                                if _1143 - 1 >= _1143:
                                                                    revert with 0, 50
                                                                else:
                                                                    mem[ceil32(32 * ('cd', 4).length) + 449] = mem[(32 * _1143 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545]
                                                                    if 35 > !block.timestamp:
                                                                        revert with 0, 17
                                                                    else:
                                                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                                        mem[mem[64] + 4] = 0
                                                                        mem[mem[64] + 36] = 128
                                                                        mem[mem[64] + 132] = ('cd', 4).length
                                                                        idx = 0
                                                                        s = 128
                                                                        t = mem[64] + 164
                                                                        while idx < ('cd', 4).length:
                                                                            mem[t] = mem[s + 12 len 20]
                                                                            idx = idx + 1
                                                                            s = s + 32
                                                                            t = t + 32
                                                                            continue 
                                                                        mem[mem[64] + 68] = this.address
                                                                        mem[mem[64] + 100] = block.timestamp + 35
                                                                        require ext_code.size(address(cd[36]))
                                                                        call address(cd[36]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                           value uint256(stor4.field_0) wei
                                                                             gas gas_remaining wei
                                                                            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 4).length, mem[mem[64] + 164 len 32 * ('cd', 4).length]
                                                                        if not ext_call.success:
                                                                            if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[ceil32(32 * ('cd', 4).length) + 129] = 2
                                                                                mem[mem[64]] = 32
                                                                                _2112 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                mem[mem[64] + 64 len 32 * _2112] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2112]
                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2112) + 32]
                                                                                mem[mem[64]] = 32
                                                                                _2556 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                mem[mem[64] + 64 len 32 * _2556] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2556]
                                                                                return 32, mem[mem[64] + 32 len (32 * _2556) + 32]
                                                                        else:
                                                                            if ('cd', 4).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[mem[64] + 4] = this.address
                                                                                    staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2142 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            mem[ceil32(32 * ('cd', 4).length) + 417] = mem[_2142]
                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        if mem[ceil32(32 * ('cd', 4).length) + 417] < mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if mem[ceil32(32 * ('cd', 4).length) + 417] - mem[ceil32(32 * ('cd', 4).length) + 385] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if 100 < (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 417]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 129] = 1
                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            if mem[ceil32(32 * ('cd', 4).length) + 417] != 0:
                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 161] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 417]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                        if cd[68] != 1:
                                                                                                                                                            if cd[68] != 2:
                                                                                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                else:
                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 385] = eth.balance(this.address)
                                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        _2244 = mem[ceil32(32 * ('cd', 4).length) + 417]
                                                                                                                                                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                        mem[mem[64] + 4] = _2244
                                                                                                                                                                        mem[mem[64] + 36] = 64
                                                                                                                                                                        _2258 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                        idx = 0
                                                                                                                                                                        s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                        t = mem[64] + 100
                                                                                                                                                                        while idx < _2258:
                                                                                                                                                                            mem[t] = mem[s + 12 len 20]
                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                            s = s + 32
                                                                                                                                                                            t = t + 32
                                                                                                                                                                            continue 
                                                                                                                                                                        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args _2244, 64, mem[mem[64] + 68 len (32 * _2258) + 32]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            _2545 = mem[64]
                                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            _2562 = mem[_2545]
                                                                                                                                                                            require mem[_2545] <= test266151307()
                                                                                                                                                                            require _2545 + return_data.size > _2545 + mem[_2545] + 31
                                                                                                                                                                            _2577 = mem[_2545 + mem[_2545]]
                                                                                                                                                                            if mem[_2545 + mem[_2545]] > test266151307():
                                                                                                                                                                                revert with 0, 65
                                                                                                                                                                            else:
                                                                                                                                                                                if ceil32(32 * mem[_2545 + mem[_2545]]) + 1 < 0 or _2545 + ceil32(return_data.size) + ceil32(32 * mem[_2545 + mem[_2545]]) + 1 > test266151307():
                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[64] = _2545 + ceil32(return_data.size) + ceil32(32 * mem[_2545 + mem[_2545]]) + 1
                                                                                                                                                                                    mem[_2545 + ceil32(return_data.size)] = _2577
                                                                                                                                                                                    require _2562 + (32 * _2577) + 32 <= return_data.size
                                                                                                                                                                                    mem[_2545 + ceil32(return_data.size) + 32 len ceil32(32 * _2577)] = mem[_2545 + _2562 + 32 len ceil32(32 * _2577)]
                                                                                                                                                                                    if _2577 < 1:
                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                    else:
                                                                                                                                                                                        if _2577 - 1 >= _2577:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                            else:
                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = mem[(32 * _2577 - 1) + _2545 + ceil32(return_data.size) + 32]
                                                                                                                                                                                                if ('cd', 4).length < 1:
                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                                                        mem[mem[64] + 36] = -6
                                                                                                                                                                                                        call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                            args address(cd[36]), -6
                                                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            _2846 = mem[64]
                                                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                            require mem[_2846] == bool(mem[_2846])
                                                                                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _2858 = mem[ceil32(32 * ('cd', 4).length) + 417]
                                                                                                                                                                                                                if 15 > !block.timestamp:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                    mem[mem[64] + 4] = _2858
                                                                                                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                                                                                                    _2866 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                    s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                                                    t = mem[64] + 196
                                                                                                                                                                                                                    while idx < _2866:
                                                                                                                                                                                                                        mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                    mem[mem[64] + 100] = this.address
                                                                                                                                                                                                                    mem[mem[64] + 132] = block.timestamp + 15
                                                                                                                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                                                                                                                    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                        args _2858, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2866) + 32]
                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                                                                                            _3026 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                            mem[mem[64] + 64 len 32 * _3026] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3026]
                                                                                                                                                                                                                            var180001 = _3026
                                                                                                                                                                                                                            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3026) + 32]
                                                                                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                                                                                            _3166 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                            mem[mem[64] + 64 len 32 * _3166] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3166]
                                                                                                                                                                                                                            return 32, mem[mem[64] + 32 len (32 * _3166) + 32]
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 385] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if not mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                                                                                                                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                _3114 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3114] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3114]
                                                                                                                                                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3114) + 32]
                                                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                _3167 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3167] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3167]
                                                                                                                                                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _3167) + 32]
                                                                                                                                                            else:
                                                                                                                                                                if ('cd', 4).length < 1:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                                                        staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args this.address
                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            _2266 = mem[64]
                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                            else:
                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 417] = mem[_2266]
                                                                                                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 385] = eth.balance(this.address)
                                                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                    else:
                                                                                                                                                                                        _2292 = mem[ceil32(32 * ('cd', 4).length) + 417]
                                                                                                                                                                                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                        mem[mem[64] + 4] = _2292
                                                                                                                                                                                        mem[mem[64] + 36] = 64
                                                                                                                                                                                        _2298 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                        mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                        idx = 0
                                                                                                                                                                                        s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                        t = mem[64] + 100
                                                                                                                                                                                        while idx < _2298:
                                                                                                                                                                                            mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                            continue 
                                                                                                                                                                                        staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                                               args _2292, 64, mem[mem[64] + 68 len (32 * _2298) + 32]
                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                        else:
                                                                                                                                                                                            _2546 = mem[64]
                                                                                                                                                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                            _2563 = mem[_2546]
                                                                                                                                                                                            require mem[_2546] <= test266151307()
                                                                                                                                                                                            require _2546 + return_data.size > _2546 + mem[_2546] + 31
                                                                                                                                                                                            _2578 = mem[_2546 + mem[_2546]]
                                                                                                                                                                                            if mem[_2546 + mem[_2546]] > test266151307():
                                                                                                                                                                                                revert with 0, 65
                                                                                                                                                                                            else:
                                                                                                                                                                                                if ceil32(32 * mem[_2546 + mem[_2546]]) + 1 < 0 or _2546 + ceil32(return_data.size) + ceil32(32 * mem[_2546 + mem[_2546]]) + 1 > test266151307():
                                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[64] = _2546 + ceil32(return_data.size) + ceil32(32 * mem[_2546 + mem[_2546]]) + 1
                                                                                                                                                                                                    mem[_2546 + ceil32(return_data.size)] = _2578
                                                                                                                                                                                                    require _2563 + (32 * _2578) + 32 <= return_data.size
                                                                                                                                                                                                    mem[_2546 + ceil32(return_data.size) + 32 len ceil32(32 * _2578)] = mem[_2546 + _2563 + 32 len ceil32(32 * _2578)]
                                                                                                                                                                                                    if _2578 < 1:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if _2578 - 1 >= _2578:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = mem[(32 * _2578 - 1) + _2546 + ceil32(return_data.size) + 32]
                                                                                                                                                                                                                if ('cd', 4).length < 1:
                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                                                                        mem[mem[64] + 36] = -6
                                                                                                                                                                                                                        call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                            args address(cd[36]), -6
                                                                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            _2847 = mem[64]
                                                                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                                                                            require mem[_2847] == bool(mem[_2847])
                                                                                                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                _2859 = mem[ceil32(32 * ('cd', 4).length) + 417]
                                                                                                                                                                                                                                if 15 > !block.timestamp:
                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                    mem[mem[64] + 4] = _2859
                                                                                                                                                                                                                                    mem[mem[64] + 36] = 0
                                                                                                                                                                                                                                    mem[mem[64] + 68] = 160
                                                                                                                                                                                                                                    _2867 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                                    mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                                    idx = 0
                                                                                                                                                                                                                                    s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                                                                    t = mem[64] + 196
                                                                                                                                                                                                                                    while idx < _2867:
                                                                                                                                                                                                                                        mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                                                                                        s = s + 32
                                                                                                                                                                                                                                        t = t + 32
                                                                                                                                                                                                                                        continue 
                                                                                                                                                                                                                                    mem[mem[64] + 100] = this.address
                                                                                                                                                                                                                                    mem[mem[64] + 132] = block.timestamp + 15
                                                                                                                                                                                                                                    require ext_code.size(address(cd[36]))
                                                                                                                                                                                                                                    call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                                                                                        args _2859, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2867) + 32]
                                                                                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                                                                                                            _3028 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                            mem[mem[64] + 64 len 32 * _3028] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3028]
                                                                                                                                                                                                                                            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3028) + 32]
                                                                                                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                                                                                                            _3168 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                            mem[mem[64] + 64 len 32 * _3168] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3168]
                                                                                                                                                                                                                                            return 32, mem[mem[64] + 32 len (32 * _3168) + 32]
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 385] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if not mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                                                                                                                                                    revert with 0, 18
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]:
                                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                                                                                                                                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 353]:
                                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 385]) / mem[ceil32(32 * ('cd', 4).length) + 449]) + 100
                                                                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                                _3115 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3115] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3115]
                                                                                                                                                                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3115) + 32]
                                                                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                                _3169 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3169] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3169]
                                                                                                                                                                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _3169) + 32]
                                                                                                                                                        else:
                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                            _2236 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                            mem[mem[64] + 64 len 32 * _2236] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2236]
                                                                                                                                                            emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2236) + 32]
                                                                                                                                                            mem[mem[64]] = 32
                                                                                                                                                            _2557 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                            mem[mem[64] + 64 len 32 * _2557] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2557]
                                                                                                                                                            return 32, mem[mem[64] + 32 len (32 * _2557) + 32]
                                                                                                                                            else:
                                                                                                                                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 161] = 100
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _2237 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 64 len 32 * _2237] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2237]
                                                                                                                                                    return 32, mem[mem[64] + 32 len (32 * _2237) + 32]
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + 257] = 3
                        if 2 >= ('cd', 4).length:
                            revert with 0, 50
                        else:
                            mem[ceil32(32 * ('cd', 4).length) + 289] = mem[204 len 20]
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            else:
                                mem[ceil32(32 * ('cd', 4).length) + 321] = mem[172 len 20]
                                if 0 >= ('cd', 4).length:
                                    revert with 0, 50
                                else:
                                    mem[ceil32(32 * ('cd', 4).length) + 353] = mem[140 len 20]
                                    mem[ceil32(32 * ('cd', 4).length) + 385] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + 417 len 128] = call.data[calldata.size len 128]
                                    if 2 == cd[68]:
                                        if ('cd', 4).length < 1:
                                            revert with 0, 17
                                        else:
                                            if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                revert with 0, 50
                                            else:
                                                mem[ceil32(32 * ('cd', 4).length) + 549] = this.address
                                                staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[ceil32(32 * ('cd', 4).length) + 545] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    mem[ceil32(32 * ('cd', 4).length) + 449] = ext_call.return_data[0]
                                                    mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = ext_call.return_data[0]
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = 64
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = 3
                                                    idx = 0
                                                    s = ceil32(32 * ('cd', 4).length) + 289
                                                    t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645
                                                    while idx < 3:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args ext_call.return_data[0], Array(len=3, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645 len 96])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545
                                                        require return_data.size >= 32
                                                        _1140 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28]
                                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                                        require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 545 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 576
                                                        _1144 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]
                                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 546 > test266151307():
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], ext_call.return_data[0 len 28] + 545]) + 546
                                                                mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545] = _1144
                                                                require _1140 + (32 * _1144) + 32 <= return_data.size
                                                                mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577 len ceil32(32 * _1144)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1140 + 577 len ceil32(32 * _1144)]
                                                                if _1144 < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if _1144 - 1 >= _1144:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _1144 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577]
                                                                        if ('cd', 4).length < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[mem[64] + 4] = address(cd[36])
                                                                                mem[mem[64] + 36] = -6
                                                                                call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                     gas gas_remaining wei
                                                                                    args address(cd[36]), -6
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1654 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1654] == bool(mem[_1654])
                                                                                    if 15 > !block.timestamp:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                        mem[mem[64] + 4] = ext_call.return_data[0]
                                                                                        mem[mem[64] + 36] = 0
                                                                                        mem[mem[64] + 68] = 160
                                                                                        mem[mem[64] + 164] = 3
                                                                                        idx = 0
                                                                                        s = ceil32(32 * ('cd', 4).length) + 289
                                                                                        t = mem[64] + 196
                                                                                        while idx < 3:
                                                                                            mem[t] = mem[s + 12 len 20]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        mem[mem[64] + 100] = this.address
                                                                                        mem[mem[64] + 132] = block.timestamp + 15
                                                                                        require ext_code.size(address(cd[36]))
                                                                                        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                             gas gas_remaining wei
                                                                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
                                                                                        if not ext_call.success:
                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                                mem[mem[64]] = 32
                                                                                                _2113 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                mem[mem[64] + 64 len 32 * _2113] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2113]
                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2113) + 32]
                                                                                                mem[mem[64]] = 32
                                                                                                _2558 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                mem[mem[64] + 64 len 32 * _2558] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2558]
                                                                                                return 32, mem[mem[64] + 32 len (32 * _2558) + 32]
                                                                                        else:
                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _2200 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 64 len 32 * _2200] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2200]
                                                                                                                                                    emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2200) + 32]
                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                    _2559 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                    mem[mem[64] + 64 len 32 * _2559] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2559]
                                                                                                                                                    return 32, mem[mem[64] + 32 len (32 * _2559) + 32]
                                    else:
                                        if ('cd', 4).length < 1:
                                            revert with 0, 17
                                        else:
                                            if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                revert with 0, 50
                                            else:
                                                mem[ceil32(32 * ('cd', 4).length) + 549] = this.address
                                                staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[ceil32(32 * ('cd', 4).length) + 545] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    mem[ceil32(32 * ('cd', 4).length) + 417] = ext_call.return_data[0]
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 549] = uint256(stor4.field_0)
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 581] = 64
                                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 613] = ('cd', 4).length
                                                    idx = 0
                                                    s = 128
                                                    t = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645
                                                    while idx < ('cd', 4).length:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                            gas gas_remaining wei
                                                           args uint256(stor4.field_0), Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 645 len 32 * ('cd', 4).length])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545
                                                        require return_data.size >= 32
                                                        _1141 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32)
                                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) <= test266151307()
                                                        require ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + return_data.size + 545 > ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 576
                                                        _1145 = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]
                                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545] > test266151307():
                                                            revert with 0, 65
                                                        else:
                                                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 546 > test266151307():
                                                                revert with 0, 65
                                                            else:
                                                                mem[64] = ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 545 len 4], Mask(224, 0, stor4.field_32) + 545]) + 546
                                                                mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 545] = _1145
                                                                require _1141 + (32 * _1145) + 32 <= return_data.size
                                                                mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577 len ceil32(32 * _1145)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + _1141 + 577 len ceil32(32 * _1145)]
                                                                if _1145 < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if _1145 - 1 >= _1145:
                                                                        revert with 0, 50
                                                                    else:
                                                                        mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _1145 - 1) + ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 577]
                                                                        if 35 > !block.timestamp:
                                                                            revert with 0, 17
                                                                        else:
                                                                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = 0
                                                                            mem[mem[64] + 36] = 128
                                                                            mem[mem[64] + 132] = ('cd', 4).length
                                                                            idx = 0
                                                                            s = 128
                                                                            t = mem[64] + 164
                                                                            while idx < ('cd', 4).length:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 68] = this.address
                                                                            mem[mem[64] + 100] = block.timestamp + 35
                                                                            require ext_code.size(address(cd[36]))
                                                                            call address(cd[36]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                                               value uint256(stor4.field_0) wei
                                                                                 gas gas_remaining wei
                                                                                args 0, 128, address(this.address), block.timestamp + 35, ('cd', 4).length, mem[mem[64] + 164 len 32 * ('cd', 4).length]
                                                                            if not ext_call.success:
                                                                                if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    mem[ceil32(32 * ('cd', 4).length) + 129] = 2
                                                                                    mem[mem[64]] = 32
                                                                                    _2115 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                    mem[mem[64] + 64 len 32 * _2115] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2115]
                                                                                    emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2115) + 32]
                                                                                    mem[mem[64]] = 32
                                                                                    _2560 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                    mem[mem[64] + 64 len 32 * _2560] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2560]
                                                                                    return 32, mem[mem[64] + 32 len (32 * _2560) + 32]
                                                                            else:
                                                                                if ('cd', 4).length < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[mem[64] + 4] = this.address
                                                                                        staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args this.address
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _2143 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = mem[_2143]
                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            if mem[ceil32(32 * ('cd', 4).length) + 449] < mem[ceil32(32 * ('cd', 4).length) + 417]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if mem[ceil32(32 * ('cd', 4).length) + 449] - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if 100 < (100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 129] = 1
                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if mem[ceil32(32 * ('cd', 4).length) + 449] != 0:
                                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                            revert with 0, 50
                                                                                                                                                        else:
                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 161] = -((100 * mem[ceil32(32 * ('cd', 4).length) + 449]) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                            if cd[68] != 1:
                                                                                                                                                                if cd[68] != 2:
                                                                                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                    else:
                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            _2248 = mem[ceil32(32 * ('cd', 4).length) + 449]
                                                                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                            mem[mem[64] + 4] = _2248
                                                                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                                                                            _2262 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                            idx = 0
                                                                                                                                                                            s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                            t = mem[64] + 100
                                                                                                                                                                            while idx < _2262:
                                                                                                                                                                                mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                s = s + 32
                                                                                                                                                                                t = t + 32
                                                                                                                                                                                continue 
                                                                                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args _2248, 64, mem[mem[64] + 68 len (32 * _2262) + 32]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _2551 = mem[64]
                                                                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                _2564 = mem[_2551]
                                                                                                                                                                                require mem[_2551] <= test266151307()
                                                                                                                                                                                require _2551 + return_data.size > _2551 + mem[_2551] + 31
                                                                                                                                                                                _2583 = mem[_2551 + mem[_2551]]
                                                                                                                                                                                if mem[_2551 + mem[_2551]] > test266151307():
                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                else:
                                                                                                                                                                                    if ceil32(32 * mem[_2551 + mem[_2551]]) + 1 < 0 or _2551 + ceil32(return_data.size) + ceil32(32 * mem[_2551 + mem[_2551]]) + 1 > test266151307():
                                                                                                                                                                                        revert with 0, 65
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[64] = _2551 + ceil32(return_data.size) + ceil32(32 * mem[_2551 + mem[_2551]]) + 1
                                                                                                                                                                                        mem[_2551 + ceil32(return_data.size)] = _2583
                                                                                                                                                                                        require _2564 + (32 * _2583) + 32 <= return_data.size
                                                                                                                                                                                        mem[_2551 + ceil32(return_data.size) + 32 len ceil32(32 * _2583)] = mem[_2551 + _2564 + 32 len ceil32(32 * _2583)]
                                                                                                                                                                                        if _2583 < 1:
                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                        else:
                                                                                                                                                                                            if _2583 - 1 >= _2583:
                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                            else:
                                                                                                                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                else:
                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _2583 - 1) + _2551 + ceil32(return_data.size) + 32]
                                                                                                                                                                                                    if ('cd', 4).length < 1:
                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                                                            mem[mem[64] + 36] = -6
                                                                                                                                                                                                            call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                args address(cd[36]), -6
                                                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                _2848 = mem[64]
                                                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                require mem[_2848] == bool(mem[_2848])
                                                                                                                                                                                                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    _2860 = mem[ceil32(32 * ('cd', 4).length) + 449]
                                                                                                                                                                                                                    if 15 > !block.timestamp:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                        mem[mem[64] + 4] = _2860
                                                                                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                                                                                        _2868 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                        s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                                                        t = mem[64] + 196
                                                                                                                                                                                                                        while idx < _2868:
                                                                                                                                                                                                                            mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                        mem[mem[64] + 100] = this.address
                                                                                                                                                                                                                        mem[mem[64] + 132] = block.timestamp + 15
                                                                                                                                                                                                                        require ext_code.size(address(cd[36]))
                                                                                                                                                                                                                        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                            args _2860, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2868) + 32]
                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                _3030 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3030] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3030]
                                                                                                                                                                                                                                var182001 = _3030
                                                                                                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3030) + 32]
                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                _3170 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3170] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3170]
                                                                                                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _3170) + 32]
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
                                                                                                                                                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                                                                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                    _3116 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                    mem[mem[64] + 64 len 32 * _3116] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3116]
                                                                                                                                                                                                                                                                                    emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3116) + 32]
                                                                                                                                                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                    _3171 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                    mem[mem[64] + 64 len 32 * _3171] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3171]
                                                                                                                                                                                                                                                                                    return 32, mem[mem[64] + 32 len (32 * _3171) + 32]
                                                                                                                                                                else:
                                                                                                                                                                    if ('cd', 4).length < 1:
                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                    else:
                                                                                                                                                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                        else:
                                                                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                                                                            staticcall mem[(32 * ('cd', 4).length - 1) + 140 len 20].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args this.address
                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                _2268 = mem[64]
                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                else:
                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 449] = mem[_2268]
                                                                                                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                    else:
                                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 417] = eth.balance(this.address)
                                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                        else:
                                                                                                                                                                                            _2294 = mem[ceil32(32 * ('cd', 4).length) + 449]
                                                                                                                                                                                            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                            mem[mem[64] + 4] = _2294
                                                                                                                                                                                            mem[mem[64] + 36] = 64
                                                                                                                                                                                            _2299 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                            idx = 0
                                                                                                                                                                                            s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                            t = mem[64] + 100
                                                                                                                                                                                            while idx < _2299:
                                                                                                                                                                                                mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                                s = s + 32
                                                                                                                                                                                                t = t + 32
                                                                                                                                                                                                continue 
                                                                                                                                                                                            staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                                   args _2294, 64, mem[mem[64] + 68 len (32 * _2299) + 32]
                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                            else:
                                                                                                                                                                                                _2552 = mem[64]
                                                                                                                                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                _2565 = mem[_2552]
                                                                                                                                                                                                require mem[_2552] <= test266151307()
                                                                                                                                                                                                require _2552 + return_data.size > _2552 + mem[_2552] + 31
                                                                                                                                                                                                _2584 = mem[_2552 + mem[_2552]]
                                                                                                                                                                                                if mem[_2552 + mem[_2552]] > test266151307():
                                                                                                                                                                                                    revert with 0, 65
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if ceil32(32 * mem[_2552 + mem[_2552]]) + 1 < 0 or _2552 + ceil32(return_data.size) + ceil32(32 * mem[_2552 + mem[_2552]]) + 1 > test266151307():
                                                                                                                                                                                                        revert with 0, 65
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        mem[64] = _2552 + ceil32(return_data.size) + ceil32(32 * mem[_2552 + mem[_2552]]) + 1
                                                                                                                                                                                                        mem[_2552 + ceil32(return_data.size)] = _2584
                                                                                                                                                                                                        require _2565 + (32 * _2584) + 32 <= return_data.size
                                                                                                                                                                                                        mem[_2552 + ceil32(return_data.size) + 32 len ceil32(32 * _2584)] = mem[_2552 + _2565 + 32 len ceil32(32 * _2584)]
                                                                                                                                                                                                        if _2584 < 1:
                                                                                                                                                                                                            revert with 0, 17
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if _2584 - 1 >= _2584:
                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 481] = mem[(32 * _2584 - 1) + _2552 + ceil32(return_data.size) + 32]
                                                                                                                                                                                                                    if ('cd', 4).length < 1:
                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        if ('cd', 4).length - 1 >= ('cd', 4).length:
                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                            mem[mem[64] + 4] = address(cd[36])
                                                                                                                                                                                                                            mem[mem[64] + 36] = -6
                                                                                                                                                                                                                            call mem[(32 * ('cd', 4).length - 1) + 140 len 20].approve(address arg1, uint256 arg2) with:
                                                                                                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                                                                                                args address(cd[36]), -6
                                                                                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                _2849 = mem[64]
                                                                                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                                                                require mem[_2849] == bool(mem[_2849])
                                                                                                                                                                                                                                if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                    _2861 = mem[ceil32(32 * ('cd', 4).length) + 449]
                                                                                                                                                                                                                                    if 15 > !block.timestamp:
                                                                                                                                                                                                                                        revert with 0, 17
                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                                                                                                                                                                                                        mem[mem[64] + 4] = _2861
                                                                                                                                                                                                                                        mem[mem[64] + 36] = 0
                                                                                                                                                                                                                                        mem[mem[64] + 68] = 160
                                                                                                                                                                                                                                        _2869 = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + 257]
                                                                                                                                                                                                                                        idx = 0
                                                                                                                                                                                                                                        s = ceil32(32 * ('cd', 4).length) + 289
                                                                                                                                                                                                                                        t = mem[64] + 196
                                                                                                                                                                                                                                        while idx < _2869:
                                                                                                                                                                                                                                            mem[t] = mem[s + 12 len 20]
                                                                                                                                                                                                                                            idx = idx + 1
                                                                                                                                                                                                                                            s = s + 32
                                                                                                                                                                                                                                            t = t + 32
                                                                                                                                                                                                                                            continue 
                                                                                                                                                                                                                                        mem[mem[64] + 100] = this.address
                                                                                                                                                                                                                                        mem[mem[64] + 132] = block.timestamp + 15
                                                                                                                                                                                                                                        require ext_code.size(address(cd[36]))
                                                                                                                                                                                                                                        call address(cd[36]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                                                                                                            args _2861, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _2869) + 32]
                                                                                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                                                                                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 193] = 2
                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                _3032 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3032] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3032]
                                                                                                                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3032) + 32]
                                                                                                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                                                                                                _3172 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                mem[mem[64] + 64 len 32 * _3172] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3172]
                                                                                                                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _3172) + 32]
                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                mem[ceil32(32 * ('cd', 4).length) + 449] = eth.balance(this.address)
                                                                                                                                                                                                                                                if 2 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                            if eth.balance(this.address) < mem[ceil32(32 * ('cd', 4).length) + 417]:
                                                                                                                                                                                                                                                                revert with 0, 17
                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                if eth.balance(this.address) - mem[ceil32(32 * ('cd', 4).length) + 417] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                    if not mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                                                                                                                                                        revert with 0, 18
                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                if 100 < (100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]:
                                                                                                                                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                                        revert with 0, 50
                                                                                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 513] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                                                                                                                                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                            revert with 0, 50
                                                                                                                                                                                                                                                                                        else:
                                                                                                                                                                                                                                                                                            mem[ceil32(32 * ('cd', 4).length) + 193] = 1
                                                                                                                                                                                                                                                                                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + 385]:
                                                                                                                                                                                                                                                                                                revert with 0, 50
                                                                                                                                                                                                                                                                                            else:
                                                                                                                                                                                                                                                                                                if 3 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                                                                                                                                                                    revert with 0, 50
                                                                                                                                                                                                                                                                                                else:
                                                                                                                                                                                                                                                                                                    mem[ceil32(32 * ('cd', 4).length) + 225] = -((100 * eth.balance(this.address)) - (100 * mem[ceil32(32 * ('cd', 4).length) + 417]) / mem[ceil32(32 * ('cd', 4).length) + 481]) + 100
                                                                                                                                                                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                                    _3117 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                    mem[mem[64] + 64 len 32 * _3117] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3117]
                                                                                                                                                                                                                                                                                                    emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _3117) + 32]
                                                                                                                                                                                                                                                                                                    mem[mem[64]] = 32
                                                                                                                                                                                                                                                                                                    _3173 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                                                                                                                                                    mem[mem[64] + 64 len 32 * _3173] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _3173]
                                                                                                                                                                                                                                                                                                    return 32, mem[mem[64] + 32 len (32 * _3173) + 32]
                                                                                                                                                            else:
                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                _2240 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                mem[mem[64] + 64 len 32 * _2240] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2240]
                                                                                                                                                                emit 0x7a6e9660: 32, mem[mem[64] + 32 len (32 * _2240) + 32]
                                                                                                                                                                mem[mem[64]] = 32
                                                                                                                                                                _2561 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                                mem[mem[64] + 64 len 32 * _2561] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2561]
                                                                                                                                                                return 32, mem[mem[64] + 32 len (32 * _2561) + 32]
                                                                                                                                                else:
                                                                                                                                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        mem[ceil32(32 * ('cd', 4).length) + 161] = 100
                                                                                                                                                        mem[mem[64]] = 32
                                                                                                                                                        _2241 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                                                                                                                                        mem[mem[64] + 64 len 32 * _2241] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _2241]
                                                                                                                                                        return 32, mem[mem[64] + 32 len (32 * _2241) + 32]
                else:
                    return ''
}



}
