contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f4eb7da(?)
#
address stor0;
address stor1;
mapping of uint8 stor2;
address stor3;
uint256 stor5;
uint256 stor6; offset 32
uint256 stor6;

function isOwner() {
    return (msg.sender == stor0)
}

function sub_d5292a0b(?) {
    return (msg.sender == stor1)
}

function isWhitelisted() {
    return (1 == bool(stor2[msg.sender]))
}

function sub_44abc979(?) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor5 = arg1
}

function sub_26e3b8e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor2[address(arg1)] = 1
}

function sub_f3450751(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Mind your own business!'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    stor2[stor0] = 0
    stor0 = arg1
    stor2[arg1] = 1
}

function sub_5a1ed9e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Mind your own business!'
    if stor0 == address(arg1):
        revert with 0, 'Big Boss has immunity!'
    if stor1 != address(arg1):
        stor2[address(arg1)] = 0
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
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x88f93af8(?????) <= uint32(call.func_hash) >> 224:
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
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 172 len 20]] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (msg.sender == stor0)
                if unknown_0xd5292a0b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (msg.sender == stor1)
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xf3450751(?????) == uint32(call.func_hash) >> 224
                    require calldata.size - 4 >= 32
                    if bool(stor2[msg.sender]) != 1:
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
                    stor2[stor0] = 0
                    stor0 = address(cd[4])
                    stor2[address(cd[4])] = 1
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x1f4eb7da(?????):
                if unknown_0x26e3b8e2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if stor0 != msg.sender:
                        revert with 0, 'Mind your own business!'
                    stor2[address(cd[4])] = 1
                else:
                    if unknown_0x44abc979(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if stor1 != msg.sender:
                            revert with 0, 'Mind your own business!'
                        stor5 = cd[4]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x5a1ed9e3(?????):
                            require unknown_0x611b4095(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return (1 == bool(stor2[msg.sender]))
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor0 != msg.sender:
                            revert with 0, 'Mind your own business!'
                        if stor0 == address(cd[4]):
                            revert with 0, 'Big Boss has immunity!'
                        if stor1 != address(cd[4]):
                            stor2[address(cd[4])] = 0
            else:
                require calldata.size - 4 >= 192
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = cd[36] + 36
                s = ceil32(32 * ('cd', 4).length) + 161
                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 100).length) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 100).length
                require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                idx = cd[100] + 36
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162
                while idx < cd[100] + (32 * ('cd', 100).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[164] == address(cd[164])
                mem[0] = msg.sender
                mem[32] = 2
                if bool(stor2[msg.sender]) != 1:
                    revert with 0, 'Mind your own business!'
                if ('cd', 36).length != 3:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = 2
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163 len 64] = call.data[calldata.size len 64]
                    if 1 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
                    if 0 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
                    if stor5 != 1:
                        if 3 >= ('cd', 4).length:
                            revert with 0, 50
                        if mem[256] != 1:
                            if 1 == cd[132]:
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor6.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4735 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
                                staticcall address(_4735).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4805 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
                                call address(_4805).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[164]), -6
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 227] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 160
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 2
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = block.timestamp + 15
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 64]
                                if not ext_call.success:
                                    revert with 0, 'Winnie the pooh approves!'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7228 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _7253 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7276 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7253
                                            mem[mem[64] + 36] = 128
                                            _7344 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7344:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7276)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7228 wei
                                                 gas gas_remaining wei
                                                args _7253, 128, address(_7276), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7344) + 32]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            _7681 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7715 = mem[_7681]
                                            require mem[_7681] <= test266151307()
                                            require _7681 + return_data.size > _7681 + mem[_7681] + 31
                                            _7751 = mem[_7681 + mem[_7681]]
                                            if mem[_7681 + mem[_7681]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7681 + mem[_7681]]) + 1 < 0 or _7681 + ceil32(return_data.size) + ceil32(32 * mem[_7681 + mem[_7681]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _7681 + ceil32(return_data.size) + ceil32(32 * mem[_7681 + mem[_7681]]) + 1
                                            mem[_7681 + ceil32(return_data.size)] = _7751
                                            require _7715 + (32 * _7751) + 32 <= return_data.size
                                            t = _7681 + ceil32(return_data.size) + 32
                                            idx = _7681 + _7715 + 32
                                            while idx < _7681 + _7715 + (32 * _7751) + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7230 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7255 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _7335 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7335:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7255)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7230 wei
                                                 gas gas_remaining wei
                                                args 0, 128, address(_7255), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7335) + 32]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if 2 == cd[132]:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    _3527 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                    staticcall address(_3527).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor6.field_0)
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                                    require return_data.size >= 32
                                    _4702 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                                    _4723 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                    require _4702 + (32 * _4723) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4723)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4702 + 419 len ceil32(32 * _4723)]
                                    if _4723 < 1:
                                        revert with 0, 17
                                    if _4723 - 1 >= _4723:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4723 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor6.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _6621 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_6621).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6647 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6647]
                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                        revert with 0, 18
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                        revert with 0, 'You are not the IRS.'
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7202:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7628 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _7652 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7680 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7652
                                                mem[mem[64] + 36] = 128
                                                _7763 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7763:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7680)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7628 wei
                                                     gas gas_remaining wei
                                                    args _7652, 128, address(_7680), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7763) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _7951 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7960 = mem[_7951]
                                                require mem[_7951] <= test266151307()
                                                require _7951 + return_data.size > _7951 + mem[_7951] + 31
                                                _7983 = mem[_7951 + mem[_7951]]
                                                if mem[_7951 + mem[_7951]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_7951 + mem[_7951]]) + 1 < 0 or _7951 + ceil32(return_data.size) + ceil32(32 * mem[_7951 + mem[_7951]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _7951 + ceil32(return_data.size) + ceil32(32 * mem[_7951 + mem[_7951]]) + 1
                                                mem[_7951 + ceil32(return_data.size)] = _7983
                                                require _7960 + (32 * _7983) + 32 <= return_data.size
                                                t = _7951 + ceil32(return_data.size) + 32
                                                idx = _7951 + _7960 + 32
                                                while idx < _7951 + _7960 + (32 * _7983) + 32:
                                                    mem[t] = mem[idx]
                                                    _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7202 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _7203 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7203:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7630 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7654 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                _7713 = mem[64]
                                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _7750 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7750:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7203 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[_7713 + 68] = address(_7654)
                                                mem[_7713 + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).mem[mem[64] len 4] with:
                                                   value _7630 wei
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _7713 + (32 * _7750) + -mem[64] + 160]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7203 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7203 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7203 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                else:
                                    if cd[132] != 3:
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5638 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _5662 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5678 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _5662
                                                    mem[mem[64] + 36] = 128
                                                    _5730 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5730:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5678)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5638 wei
                                                         gas gas_remaining wei
                                                        args _5662, 128, address(_5678), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5730) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    _6534 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6571 = mem[_6534]
                                                    require mem[_6534] <= test266151307()
                                                    require _6534 + return_data.size > _6534 + mem[_6534] + 31
                                                    _6602 = mem[_6534 + mem[_6534]]
                                                    if mem[_6534 + mem[_6534]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_6534 + mem[_6534]]) + 1 < 0 or _6534 + ceil32(return_data.size) + ceil32(32 * mem[_6534 + mem[_6534]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _6534 + ceil32(return_data.size) + ceil32(32 * mem[_6534 + mem[_6534]]) + 1
                                                    mem[_6534 + ceil32(return_data.size)] = _6602
                                                    require _6571 + (32 * _6602) + 32 <= return_data.size
                                                    t = _6534 + ceil32(return_data.size) + 32
                                                    idx = _6534 + _6571 + 32
                                                    while idx < _6534 + _6571 + (32 * _6602) + 32:
                                                        mem[t] = mem[idx]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5640 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5664 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _5722 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5722:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5664)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5640 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_5664), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5722) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        _3537 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                        staticcall address(_3537).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor6.field_0)
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                                        require return_data.size >= 32
                                        _4701 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                                        _4722 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                        require _4701 + (32 * _4722) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4722)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4701 + 419 len ceil32(32 * _4722)]
                                        var97004 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4701 + ceil32(32 * _4722) + 419
                                        if _4722 < 1:
                                            revert with 0, 17
                                        if _4722 - 1 >= _4722:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4722 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = mem[64] + 164
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value uint256(stor6.field_0) wei
                                             gas gas_remaining wei
                                            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6618 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = this.address
                                        staticcall address(_6618).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6646 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6646]
                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                            revert with 0, 17
                                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                            revert with 0, 18
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < 0:
                                            revert with 0, 'You are not the IRS.'
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 2 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                            revert with 0, 'You are not the IRS.'
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6886 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = address(cd[164])
                                        mem[mem[64] + 36] = -6
                                        call address(_6886).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[164]), -6
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6906 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6906] == bool(mem[_6906])
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        _6966 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                                        if 15 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6966
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        _6990 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                        t = mem[64] + 196
                                        while idx < _6990:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 15
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _6966, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _6990) + 32]
                                        if not ext_call.success:
                                            revert with 0, 'Winnie the pooh approves!'
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7602:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7914 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _7930 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7950 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _7930
                                                    mem[mem[64] + 36] = 128
                                                    _7994 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7994:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7950)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7914 wei
                                                         gas gas_remaining wei
                                                        args _7930, 128, address(_7950), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7994) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        idx = idx + 1
                                                        continue 
                                                    _8078 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _8083 = mem[_8078]
                                                    require mem[_8078] <= test266151307()
                                                    require _8078 + return_data.size > _8078 + mem[_8078] + 31
                                                    _8098 = mem[_8078 + mem[_8078]]
                                                    if mem[_8078 + mem[_8078]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_8078 + mem[_8078]]) + 1 < 0 or _8078 + ceil32(return_data.size) + ceil32(32 * mem[_8078 + mem[_8078]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _8078 + ceil32(return_data.size) + ceil32(32 * mem[_8078 + mem[_8078]]) + 1
                                                    mem[_8078 + ceil32(return_data.size)] = _8098
                                                    require _8083 + (32 * _8098) + 32 <= return_data.size
                                                    t = _8078 + ceil32(return_data.size) + 32
                                                    idx = _8078 + _8083 + 32
                                                    while idx < _8078 + _8083 + (32 * _8098) + 32:
                                                        mem[t] = mem[idx]
                                                        _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7602 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            _7603 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7603:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7916 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7932 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    _7958 = mem[64]
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _7982 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7982:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7603 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[_7958 + 68] = address(_7932)
                                                    mem[_7958 + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).mem[mem[64] len 4] with:
                                                       value _7916 wei
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _7958 + (32 * _7982) + -mem[64] + 160]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        _7603 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7603 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7603 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                        else:
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 175 len 20] == stor3:
                                revert with 0, 'Bog'
                            if 1 == cd[132]:
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor6.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4739 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
                                staticcall address(_4739).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4811 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
                                call address(_4811).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[164]), -6
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 227] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 227] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 160
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 2
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = block.timestamp + 15
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 64]
                                if not ext_call.success:
                                    revert with 0, 'Winnie the pooh approves!'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7234 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _7259 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7279 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7259
                                            mem[mem[64] + 36] = 128
                                            _7347 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7347:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7279)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7234 wei
                                                 gas gas_remaining wei
                                                args _7259, 128, address(_7279), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7347) + 32]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            _7685 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7721 = mem[_7685]
                                            require mem[_7685] <= test266151307()
                                            require _7685 + return_data.size > _7685 + mem[_7685] + 31
                                            _7754 = mem[_7685 + mem[_7685]]
                                            if mem[_7685 + mem[_7685]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7685 + mem[_7685]]) + 1 < 0 or _7685 + ceil32(return_data.size) + ceil32(32 * mem[_7685 + mem[_7685]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _7685 + ceil32(return_data.size) + ceil32(32 * mem[_7685 + mem[_7685]]) + 1
                                            mem[_7685 + ceil32(return_data.size)] = _7754
                                            require _7721 + (32 * _7754) + 32 <= return_data.size
                                            t = _7685 + ceil32(return_data.size) + 32
                                            idx = _7685 + _7721 + 32
                                            while idx < _7685 + _7721 + (32 * _7754) + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7236 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7261 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _7337 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7337:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7261)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7236 wei
                                                 gas gas_remaining wei
                                                args 0, 128, address(_7261), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7337) + 32]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if 2 == cd[132]:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    _3553 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                    staticcall address(_3553).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor6.field_0)
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                                    require return_data.size >= 32
                                    _4707 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                                    _4726 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                    require _4707 + (32 * _4726) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4726)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4707 + 419 len ceil32(32 * _4726)]
                                    if _4726 < 1:
                                        revert with 0, 17
                                    if _4726 - 1 >= _4726:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4726 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor6.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _6628 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_6628).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6650 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6650]
                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                        revert with 0, 18
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                        revert with 0, 50
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                        revert with 0, 'You are not the IRS.'
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7204:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7634 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _7659 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7684 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7659
                                                mem[mem[64] + 36] = 128
                                                _7765 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7765:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7684)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7634 wei
                                                     gas gas_remaining wei
                                                    args _7659, 128, address(_7684), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7765) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _7953 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7963 = mem[_7953]
                                                require mem[_7953] <= test266151307()
                                                require _7953 + return_data.size > _7953 + mem[_7953] + 31
                                                _7986 = mem[_7953 + mem[_7953]]
                                                if mem[_7953 + mem[_7953]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_7953 + mem[_7953]]) + 1 < 0 or _7953 + ceil32(return_data.size) + ceil32(32 * mem[_7953 + mem[_7953]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _7953 + ceil32(return_data.size) + ceil32(32 * mem[_7953 + mem[_7953]]) + 1
                                                mem[_7953 + ceil32(return_data.size)] = _7986
                                                require _7963 + (32 * _7986) + 32 <= return_data.size
                                                t = _7953 + ceil32(return_data.size) + 32
                                                idx = _7953 + _7963 + 32
                                                while idx < _7953 + _7963 + (32 * _7986) + 32:
                                                    mem[t] = mem[idx]
                                                    _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7204 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _7205 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7205:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7636 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7661 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _7753 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7753:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7205 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7661)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7636 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, address(_7661), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7753) + 32]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7205 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7205 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7205 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                else:
                                    if cd[132] != 3:
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5644 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _5666 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5679 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    _5716 = mem[64]
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _5666
                                                    mem[mem[64] + 36] = 128
                                                    _5732 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5732:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[_5716 + 68] = address(_5679)
                                                    mem[_5716 + 100] = block.timestamp + 35
                                                    call address(cd[164]).mem[mem[64] len 4] with:
                                                       value _5644 wei
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _5716 + (32 * _5732) + -mem[64] + 160]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    _6537 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6576 = mem[_6537]
                                                    require mem[_6537] <= test266151307()
                                                    require _6537 + return_data.size > _6537 + mem[_6537] + 31
                                                    _6606 = mem[_6537 + mem[_6537]]
                                                    if mem[_6537 + mem[_6537]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_6537 + mem[_6537]]) + 1 < 0 or _6537 + ceil32(return_data.size) + ceil32(32 * mem[_6537 + mem[_6537]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _6537 + ceil32(return_data.size) + ceil32(32 * mem[_6537 + mem[_6537]]) + 1
                                                    mem[_6537 + ceil32(return_data.size)] = _6606
                                                    require _6576 + (32 * _6606) + 32 <= return_data.size
                                                    t = _6537 + ceil32(return_data.size) + 32
                                                    idx = _6537 + _6576 + 32
                                                    while idx < _6537 + _6576 + (32 * _6606) + 32:
                                                        mem[t] = mem[idx]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5646 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5668 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _5724 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5724:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5668)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5646 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_5668), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5724) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 4
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259 len 128] = call.data[calldata.size len 128]
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        _3569 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                                        staticcall address(_3569).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = uint256(stor6.field_0)
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = 64
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387
                                        require return_data.size >= 32
                                        _4706 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                                        _4725 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                                        require _4706 + (32 * _4725) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4725)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4706 + 419 len ceil32(32 * _4725)]
                                        if _4725 < 1:
                                            revert with 0, 17
                                        if _4725 - 1 >= _4725:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4725 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = mem[64] + 164
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value uint256(stor6.field_0) wei
                                             gas gas_remaining wei
                                            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6625 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = this.address
                                        staticcall address(_6625).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6649 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6649]
                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                            revert with 0, 17
                                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                            revert with 0, 18
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] < 0:
                                            revert with 0, 'You are not the IRS.'
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        if 2 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                            revert with 0, 'You are not the IRS.'
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6891 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = address(cd[164])
                                        mem[mem[64] + 36] = -6
                                        call address(_6891).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[164]), -6
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6909 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6909] == bool(mem[_6909])
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                            revert with 0, 50
                                        _6967 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                                        if 15 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6967
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        _6992 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                        t = mem[64] + 196
                                        while idx < _6992:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 15
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _6967, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _6992) + 32]
                                        if not ext_call.success:
                                            revert with 0, 'Winnie the pooh approves!'
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7604:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7918 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _7935 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7952 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _7935
                                                    mem[mem[64] + 36] = 128
                                                    _7995 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7995:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7952)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7918 wei
                                                         gas gas_remaining wei
                                                        args _7935, 128, address(_7952), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7995) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        idx = idx + 1
                                                        continue 
                                                    _8079 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _8085 = mem[_8079]
                                                    require mem[_8079] <= test266151307()
                                                    require _8079 + return_data.size > _8079 + mem[_8079] + 31
                                                    _8100 = mem[_8079 + mem[_8079]]
                                                    if mem[_8079 + mem[_8079]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_8079 + mem[_8079]]) + 1 < 0 or _8079 + ceil32(return_data.size) + ceil32(32 * mem[_8079 + mem[_8079]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _8079 + ceil32(return_data.size) + ceil32(32 * mem[_8079 + mem[_8079]]) + 1
                                                    mem[_8079 + ceil32(return_data.size)] = _8100
                                                    require _8085 + (32 * _8100) + 32 <= return_data.size
                                                    t = _8079 + ceil32(return_data.size) + 32
                                                    idx = _8079 + _8085 + 32
                                                    while idx < _8079 + _8085 + (32 * _8100) + 32:
                                                        mem[t] = mem[idx]
                                                        _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7604 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            _7605 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7605:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7920 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7937 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _7985 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7985:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7605 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7937)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7920 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_7937), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7985) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        _7605 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7605 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7605 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]:
                            revert with 0, 50
                        stor3 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 175 len 20]
                else:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = 3
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163 len 96] = call.data[calldata.size len 96]
                    if 2 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 237 len 20]
                    if 1 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
                    if 0 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
                    if stor5 != 1:
                        if 3 >= ('cd', 4).length:
                            revert with 0, 50
                        if mem[256] != 1:
                            if 1 == cd[132]:
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = 128
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor6.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4743 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
                                staticcall address(_4743).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4817 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = address(cd[164])
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 295] = -6
                                call address(_4817).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[164]), -6
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 259] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = 160
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423] = 3
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = block.timestamp + 15
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455 len 96]
                                if not ext_call.success:
                                    revert with 0, 'Winnie the pooh approves!'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7240 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _7265 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7282 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7265
                                            mem[mem[64] + 36] = 128
                                            _7350 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7350:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7282)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7240 wei
                                                 gas gas_remaining wei
                                                args _7265, 128, address(_7282), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7350) + 32]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            _7689 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7727 = mem[_7689]
                                            require mem[_7689] <= test266151307()
                                            require _7689 + return_data.size > _7689 + mem[_7689] + 31
                                            _7757 = mem[_7689 + mem[_7689]]
                                            if mem[_7689 + mem[_7689]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7689 + mem[_7689]]) + 1 < 0 or _7689 + ceil32(return_data.size) + ceil32(32 * mem[_7689 + mem[_7689]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _7689 + ceil32(return_data.size) + ceil32(32 * mem[_7689 + mem[_7689]]) + 1
                                            mem[_7689 + ceil32(return_data.size)] = _7757
                                            require _7727 + (32 * _7757) + 32 <= return_data.size
                                            t = _7689 + ceil32(return_data.size) + 32
                                            idx = _7689 + _7727 + 32
                                            while idx < _7689 + _7727 + (32 * _7757) + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7242 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7267 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _7339 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7339:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7267)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7242 wei
                                                 gas gas_remaining wei
                                                args 0, 128, address(_7267), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7339) + 32]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if 2 == cd[132]:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    _3560 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                    staticcall address(_3560).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor6.field_0)
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                    require return_data.size >= 32
                                    _4712 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 450
                                    _4729 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _4729
                                    require _4712 + (32 * _4729) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _4729)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4712 + 451 len ceil32(32 * _4729)]
                                    if _4729 < 1:
                                        revert with 0, 17
                                    if _4729 - 1 >= _4729:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _4729 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor6.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _6635 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_6635).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6653 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_6653]
                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 18
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 'You are not the IRS.'
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7206:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7640 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _7666 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7688 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7666
                                                mem[mem[64] + 36] = 128
                                                _7767 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7767:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7688)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7640 wei
                                                     gas gas_remaining wei
                                                    args _7666, 128, address(_7688), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7767) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _7955 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7966 = mem[_7955]
                                                require mem[_7955] <= test266151307()
                                                require _7955 + return_data.size > _7955 + mem[_7955] + 31
                                                _7989 = mem[_7955 + mem[_7955]]
                                                if mem[_7955 + mem[_7955]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_7955 + mem[_7955]]) + 1 < 0 or _7955 + ceil32(return_data.size) + ceil32(32 * mem[_7955 + mem[_7955]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _7955 + ceil32(return_data.size) + ceil32(32 * mem[_7955 + mem[_7955]]) + 1
                                                mem[_7955 + ceil32(return_data.size)] = _7989
                                                require _7966 + (32 * _7989) + 32 <= return_data.size
                                                t = _7955 + ceil32(return_data.size) + 32
                                                idx = _7955 + _7966 + 32
                                                while idx < _7955 + _7966 + (32 * _7989) + 32:
                                                    mem[t] = mem[idx]
                                                    _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7206 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _7207 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7207:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7642 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7668 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _7756 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7756:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7207 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7668)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7642 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, address(_7668), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7756) + 32]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7207 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7207 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7207 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                else:
                                    if cd[132] != 3:
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5650 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _5670 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5680 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _5670
                                                    mem[mem[64] + 36] = 128
                                                    _5734 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5734:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5680)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5650 wei
                                                         gas gas_remaining wei
                                                        args _5670, 128, address(_5680), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5734) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    _6540 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6581 = mem[_6540]
                                                    require mem[_6540] <= test266151307()
                                                    require _6540 + return_data.size > _6540 + mem[_6540] + 31
                                                    _6610 = mem[_6540 + mem[_6540]]
                                                    if mem[_6540 + mem[_6540]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_6540 + mem[_6540]]) + 1 < 0 or _6540 + ceil32(return_data.size) + ceil32(32 * mem[_6540 + mem[_6540]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _6540 + ceil32(return_data.size) + ceil32(32 * mem[_6540 + mem[_6540]]) + 1
                                                    mem[_6540 + ceil32(return_data.size)] = _6610
                                                    require _6581 + (32 * _6610) + 32 <= return_data.size
                                                    t = _6540 + ceil32(return_data.size) + 32
                                                    idx = _6540 + _6581 + 32
                                                    while idx < _6540 + _6581 + (32 * _6610) + 32:
                                                        mem[t] = mem[idx]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5652 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5672 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _5726 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5726:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5672)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5652 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_5672), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5726) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        _3573 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                        staticcall address(_3573).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor6.field_0)
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                        require return_data.size >= 32
                                        _4711 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32)
                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 450
                                        _4728 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _4728
                                        require _4711 + (32 * _4728) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _4728)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4711 + 451 len ceil32(32 * _4728)]
                                        if _4728 < 1:
                                            revert with 0, 17
                                        if _4728 - 1 >= _4728:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _4728 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = mem[64] + 164
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value uint256(stor6.field_0) wei
                                             gas gas_remaining wei
                                            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6632 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = this.address
                                        staticcall address(_6632).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6652 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_6652]
                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                            revert with 0, 17
                                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                            revert with 0, 18
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < 0:
                                            revert with 0, 'You are not the IRS.'
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 2 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                            revert with 0, 'You are not the IRS.'
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6896 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = address(cd[164])
                                        mem[mem[64] + 36] = -6
                                        call address(_6896).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[164]), -6
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6912 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6912] == bool(mem[_6912])
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        _6968 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                        if 15 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6968
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        _6994 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                        t = mem[64] + 196
                                        while idx < _6994:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 15
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _6968, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _6994) + 32]
                                        if not ext_call.success:
                                            revert with 0, 'Winnie the pooh approves!'
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7606:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7922 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _7940 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7954 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _7940
                                                    mem[mem[64] + 36] = 128
                                                    _7996 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7996:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7954)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7922 wei
                                                         gas gas_remaining wei
                                                        args _7940, 128, address(_7954), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7996) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        idx = idx + 1
                                                        continue 
                                                    _8080 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _8087 = mem[_8080]
                                                    require mem[_8080] <= test266151307()
                                                    require _8080 + return_data.size > _8080 + mem[_8080] + 31
                                                    _8102 = mem[_8080 + mem[_8080]]
                                                    if mem[_8080 + mem[_8080]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_8080 + mem[_8080]]) + 1 < 0 or _8080 + ceil32(return_data.size) + ceil32(32 * mem[_8080 + mem[_8080]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _8080 + ceil32(return_data.size) + ceil32(32 * mem[_8080 + mem[_8080]]) + 1
                                                    mem[_8080 + ceil32(return_data.size)] = _8102
                                                    require _8087 + (32 * _8102) + 32 <= return_data.size
                                                    t = _8080 + ceil32(return_data.size) + 32
                                                    idx = _8080 + _8087 + 32
                                                    while idx < _8080 + _8087 + (32 * _8102) + 32:
                                                        mem[t] = mem[idx]
                                                        _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7606 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            _7607 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7607:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7924 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7942 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _7988 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7988:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7607 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7942)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7924 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_7942), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7988) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        _7607 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7607 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7607 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                        else:
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 175 len 20] == stor3:
                                revert with 0, 'Bog'
                            if 1 == cd[132]:
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = 128
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = ('cd', 36).length
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + 161
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423
                                while idx < ('cd', 36).length:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value uint256(stor6.field_0) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423 len 32 * ('cd', 36).length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4747 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
                                staticcall address(_4747).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ('cd', 36).length < 1:
                                    revert with 0, 17
                                if ('cd', 36).length - 1 >= ('cd', 36).length:
                                    revert with 0, 50
                                _4823 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = address(cd[164])
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 295] = -6
                                call address(_4823).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[164]), -6
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 259] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if 15 > !block.timestamp:
                                    revert with 0, 17
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 259] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = 0
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = 160
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423] = 3
                                idx = 0
                                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = block.timestamp + 15
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 455 len 96]
                                if not ext_call.success:
                                    revert with 0, 'Winnie the pooh approves!'
                                if 1 >= ('cd', 4).length:
                                    revert with 0, 50
                                if mem[192] != 0:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7246 = mem[160]
                                            if 1 >= mem[128]:
                                                revert with 0, 50
                                            _7271 = mem[192]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7285 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _7271
                                            mem[mem[64] + 36] = 128
                                            _7353 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7353:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7285)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7246 wei
                                                 gas gas_remaining wei
                                                args _7271, 128, address(_7285), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7353) + 32]
                                            if not ext_call.success:
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            _7693 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7733 = mem[_7693]
                                            require mem[_7693] <= test266151307()
                                            require _7693 + return_data.size > _7693 + mem[_7693] + 31
                                            _7760 = mem[_7693 + mem[_7693]]
                                            if mem[_7693 + mem[_7693]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_7693 + mem[_7693]]) + 1 < 0 or _7693 + ceil32(return_data.size) + ceil32(32 * mem[_7693 + mem[_7693]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _7693 + ceil32(return_data.size) + ceil32(32 * mem[_7693 + mem[_7693]]) + 1
                                            mem[_7693 + ceil32(return_data.size)] = _7760
                                            require _7733 + (32 * _7760) + 32 <= return_data.size
                                            t = _7693 + ceil32(return_data.size) + 32
                                            idx = _7693 + _7733 + 32
                                            while idx < _7693 + _7733 + (32 * _7760) + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                else:
                                    idx = 0
                                    while idx < ('cd', 100).length:
                                        s = 0
                                        t = 0
                                        while s < cd[68]:
                                            if 0 >= mem[128]:
                                                revert with 0, 50
                                            _7248 = mem[160]
                                            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                revert with 0, 50
                                            _7273 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                            if 35 > !block.timestamp:
                                                revert with 0, 17
                                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0
                                            mem[mem[64] + 36] = 128
                                            _7341 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                            u = 0
                                            v = ceil32(32 * ('cd', 4).length) + 161
                                            w = mem[64] + 164
                                            while u < _7341:
                                                mem[w] = mem[v + 12 len 20]
                                                u = u + 1
                                                v = v + 32
                                                w = w + 32
                                                continue 
                                            mem[mem[64] + 68] = address(_7273)
                                            mem[mem[64] + 100] = block.timestamp + 35
                                            require ext_code.size(address(cd[164]))
                                            call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value _7248 wei
                                                 gas gas_remaining wei
                                                args 0, 128, address(_7273), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7341) + 32]
                                            if ext_call.success:
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                            else:
                                if 2 == cd[132]:
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                    if ('cd', 36).length < 1:
                                        revert with 0, 17
                                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                                        revert with 0, 50
                                    _3594 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                    staticcall address(_3594).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor6.field_0)
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                    require return_data.size >= 32
                                    _4717 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32)
                                    require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                    require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 450
                                    _4732 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _4732
                                    require _4717 + (32 * _4732) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _4732)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4717 + 451 len ceil32(32 * _4732)]
                                    if _4732 < 1:
                                        revert with 0, 17
                                    if _4732 - 1 >= _4732:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _4732 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 36).length
                                    idx = 0
                                    s = ceil32(32 * ('cd', 4).length) + 161
                                    t = mem[64] + 164
                                    while idx < ('cd', 36).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value uint256(stor6.field_0) wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                        revert with 0, 50
                                    _6642 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                    mem[mem[64] + 4] = this.address
                                    staticcall address(_6642).balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6656 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_6656]
                                    if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                        revert with 0, 17
                                    if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 18
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                    if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                        revert with 0, 50
                                    if 2 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                        revert with 0, 'You are not the IRS.'
                                    if 1 >= ('cd', 4).length:
                                        revert with 0, 50
                                    if mem[192] != 0:
                                        _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7208:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7646 = mem[160]
                                                if 1 >= mem[128]:
                                                    revert with 0, 50
                                                _7673 = mem[192]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7692 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _7673
                                                mem[mem[64] + 36] = 128
                                                _7769 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7769:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7692)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7646 wei
                                                     gas gas_remaining wei
                                                    args _7673, 128, address(_7692), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7769) + 32]
                                                if not ext_call.success:
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                _7957 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7969 = mem[_7957]
                                                require mem[_7957] <= test266151307()
                                                require _7957 + return_data.size > _7957 + mem[_7957] + 31
                                                _7992 = mem[_7957 + mem[_7957]]
                                                if mem[_7957 + mem[_7957]] > test266151307():
                                                    revert with 0, 65
                                                if ceil32(32 * mem[_7957 + mem[_7957]]) + 1 < 0 or _7957 + ceil32(return_data.size) + ceil32(32 * mem[_7957 + mem[_7957]]) + 1 > test266151307():
                                                    revert with 0, 65
                                                mem[64] = _7957 + ceil32(return_data.size) + ceil32(32 * mem[_7957 + mem[_7957]]) + 1
                                                mem[_7957 + ceil32(return_data.size)] = _7992
                                                require _7969 + (32 * _7992) + 32 <= return_data.size
                                                t = _7957 + ceil32(return_data.size) + 32
                                                idx = _7957 + _7969 + 32
                                                while idx < _7957 + _7969 + (32 * _7992) + 32:
                                                    mem[t] = mem[idx]
                                                    _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                if s == -1:
                                                    revert with 0, 17
                                                _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                s = s + 1
                                                t = 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7208 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        _7209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        idx = 0
                                        while idx < _7209:
                                            s = 0
                                            t = 0
                                            while s < cd[68]:
                                                if 0 >= mem[128]:
                                                    revert with 0, 50
                                                _7648 = mem[160]
                                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                    revert with 0, 50
                                                _7675 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                if 35 > !block.timestamp:
                                                    revert with 0, 17
                                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0
                                                mem[mem[64] + 36] = 128
                                                _7759 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                u = 0
                                                v = ceil32(32 * ('cd', 4).length) + 161
                                                w = mem[64] + 164
                                                while u < _7759:
                                                    mem[w] = mem[v + 12 len 20]
                                                    _7209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    u = u + 1
                                                    v = v + 32
                                                    w = w + 32
                                                    continue 
                                                mem[mem[64] + 68] = address(_7675)
                                                mem[mem[64] + 100] = block.timestamp + 35
                                                require ext_code.size(address(cd[164]))
                                                call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value _7648 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, address(_7675), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7759) + 32]
                                                if ext_call.success:
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if t != 1:
                                                    revert with 0, 'Your transaction(s) failed!'
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                            if idx == -1:
                                                revert with 0, 17
                                            _7209 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = idx + 1
                                            continue 
                                else:
                                    if cd[132] != 3:
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5656 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _5674 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5681 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _5674
                                                    mem[mem[64] + 36] = 128
                                                    _5736 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5736:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5681)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5656 wei
                                                         gas gas_remaining wei
                                                        args _5674, 128, address(_5681), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5736) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        idx = idx + 1
                                                        continue 
                                                    _6543 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6586 = mem[_6543]
                                                    require mem[_6543] <= test266151307()
                                                    require _6543 + return_data.size > _6543 + mem[_6543] + 31
                                                    _6614 = mem[_6543 + mem[_6543]]
                                                    if mem[_6543 + mem[_6543]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_6543 + mem[_6543]]) + 1 < 0 or _6543 + ceil32(return_data.size) + ceil32(32 * mem[_6543 + mem[_6543]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _6543 + ceil32(return_data.size) + ceil32(32 * mem[_6543 + mem[_6543]]) + 1
                                                    mem[_6543 + ceil32(return_data.size)] = _6614
                                                    require _6586 + (32 * _6614) + 32 <= return_data.size
                                                    t = _6543 + ceil32(return_data.size) + 32
                                                    idx = _6543 + _6586 + 32
                                                    while idx < _6543 + _6586 + (32 * _6614) + 32:
                                                        mem[t] = mem[idx]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                        else:
                                            idx = 0
                                            while idx < ('cd', 100).length:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _5658 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _5676 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _5728 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _5728:
                                                        mem[w] = mem[v + 12 len 20]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_5676)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _5658 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_5676), block.timestamp + 35, mem[mem[64] + 132 len (32 * _5728) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                    else:
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = 4
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291 len 128] = call.data[calldata.size len 128]
                                        if ('cd', 36).length < 1:
                                            revert with 0, 17
                                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                                            revert with 0, 50
                                        _3610 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 423] = this.address
                                        staticcall address(_3610).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 419] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = ext_call.return_data[0]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = uint256(stor6.field_0)
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455] = 64
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 487] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 519 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419
                                        require return_data.size >= 32
                                        _4716 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32)
                                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 419 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 450
                                        _4731 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 419 len 4], Mask(224, 0, stor6.field_32) + 419]) + 420
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419] = _4731
                                        require _4716 + (32 * _4731) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451 len ceil32(32 * _4731)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4716 + 451 len ceil32(32 * _4731)]
                                        var101002 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * _4731) + 451
                                        if _4731 < 1:
                                            revert with 0, 17
                                        if _4731 - 1 >= _4731:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = mem[(32 * _4731 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 451]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + 161
                                        t = mem[64] + 164
                                        while idx < ('cd', 36).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value uint256(stor6.field_0) wei
                                             gas gas_remaining wei
                                            args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[mem[64] + 164 len 32 * ('cd', 36).length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6639 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = this.address
                                        staticcall address(_6639).balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6655 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[_6655]
                                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                            revert with 0, 17
                                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                            revert with 0, 18
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 387] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] < 0:
                                            revert with 0, 'You are not the IRS.'
                                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        if 2 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[224] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355]:
                                            revert with 0, 'You are not the IRS.'
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] < 1:
                                            revert with 0, 17
                                        if mem[ceil32(32 * ('cd', 4).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                            revert with 0, 50
                                        _6901 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 129] - 1) + ceil32(32 * ('cd', 4).length) + 161]
                                        mem[mem[64] + 4] = address(cd[164])
                                        mem[mem[64] + 36] = -6
                                        call address(_6901).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[164]), -6
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6915 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6915] == bool(mem[_6915])
                                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]:
                                            revert with 0, 50
                                        _6969 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]
                                        if 15 > !block.timestamp:
                                            revert with 0, 17
                                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6969
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 160
                                        _6996 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]
                                        idx = 0
                                        s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163
                                        t = mem[64] + 196
                                        while idx < _6996:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = block.timestamp + 15
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _6969, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _6996) + 32]
                                        if not ext_call.success:
                                            revert with 0, 'Winnie the pooh approves!'
                                        if 1 >= ('cd', 4).length:
                                            revert with 0, 50
                                        if mem[192] != 0:
                                            _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7608:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7926 = mem[160]
                                                    if 1 >= mem[128]:
                                                        revert with 0, 50
                                                    _7945 = mem[192]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7956 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _7945
                                                    mem[mem[64] + 36] = 128
                                                    _7997 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7997:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7956)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    call address(cd[164]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7926 wei
                                                         gas gas_remaining wei
                                                        args _7945, 128, address(_7956), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7997) + 32]
                                                    if not ext_call.success:
                                                        if t != 1:
                                                            revert with 0, 'Your transaction(s) failed!'
                                                        if idx == -1:
                                                            revert with 0, 17
                                                        _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        idx = idx + 1
                                                        continue 
                                                    _8081 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _8089 = mem[_8081]
                                                    require mem[_8081] <= test266151307()
                                                    require _8081 + return_data.size > _8081 + mem[_8081] + 31
                                                    _8104 = mem[_8081 + mem[_8081]]
                                                    if mem[_8081 + mem[_8081]] > test266151307():
                                                        revert with 0, 65
                                                    if ceil32(32 * mem[_8081 + mem[_8081]]) + 1 < 0 or _8081 + ceil32(return_data.size) + ceil32(32 * mem[_8081 + mem[_8081]]) + 1 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = _8081 + ceil32(return_data.size) + ceil32(32 * mem[_8081 + mem[_8081]]) + 1
                                                    mem[_8081 + ceil32(return_data.size)] = _8104
                                                    require _8089 + (32 * _8104) + 32 <= return_data.size
                                                    t = _8081 + ceil32(return_data.size) + 32
                                                    idx = _8081 + _8089 + 32
                                                    while idx < _8081 + _8089 + (32 * _8104) + 32:
                                                        mem[t] = mem[idx]
                                                        _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        t = t + 32
                                                        idx = idx + 32
                                                        continue 
                                                    if s == -1:
                                                        revert with 0, 17
                                                    _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    s = s + 1
                                                    t = 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7608 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                                        else:
                                            _7609 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                            idx = 0
                                            while idx < _7609:
                                                s = 0
                                                t = 0
                                                while s < cd[68]:
                                                    if 0 >= mem[128]:
                                                        revert with 0, 50
                                                    _7928 = mem[160]
                                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                                                        revert with 0, 50
                                                    _7947 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162]
                                                    if 35 > !block.timestamp:
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0
                                                    mem[mem[64] + 36] = 128
                                                    _7991 = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 129]
                                                    u = 0
                                                    v = ceil32(32 * ('cd', 4).length) + 161
                                                    w = mem[64] + 164
                                                    while u < _7991:
                                                        mem[w] = mem[v + 12 len 20]
                                                        _7609 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        u = u + 1
                                                        v = v + 32
                                                        w = w + 32
                                                        continue 
                                                    mem[mem[64] + 68] = address(_7947)
                                                    mem[mem[64] + 100] = block.timestamp + 35
                                                    require ext_code.size(address(cd[164]))
                                                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value _7928 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, address(_7947), block.timestamp + 35, mem[mem[64] + 132 len (32 * _7991) + 32]
                                                    if ext_call.success:
                                                        if s == -1:
                                                            revert with 0, 17
                                                        _7609 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                        s = s + 1
                                                        t = 1
                                                        continue 
                                                    if t != 1:
                                                        revert with 0, 'Your transaction(s) failed!'
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    _7609 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                    idx = idx + 1
                                                    continue 
                                                if idx == -1:
                                                    revert with 0, 17
                                                _7609 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                                idx = idx + 1
                                                continue 
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131]:
                            revert with 0, 50
                        stor3 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 175 len 20]
}



}
