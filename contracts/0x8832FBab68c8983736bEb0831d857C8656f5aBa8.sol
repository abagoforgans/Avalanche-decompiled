contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
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

function sub_1f4eb7da(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
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
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
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
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
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
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = 2
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 64] = call.data[calldata.size len 64]
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 141 len 20]
        if stor5 != 1:
            if 3 >= ('cd', 4).length:
                revert with 0, 50
            if mem[224] != 1:
                if 1 == cd[132]:
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 128
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = block.timestamp + 35
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value uint256(stor6.field_0) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359 len 32 * ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _4692 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = this.address
                    staticcall address(_4692).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _4762 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 199] = address(cd[164])
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = -6
                    call address(_4762).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), -6
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 160
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = 2
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = block.timestamp + 15
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391 len 64]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7185 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _7210 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7233 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7281 = mem[64]
                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7210
                                mem[mem[64] + 36] = 128
                                _7301 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7301:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7281 + 68] = address(_7233)
                                mem[_7281 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7185 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7281 + (32 * _7301) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _7638 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7672 = mem[_7638]
                                require mem[_7638] <= test266151307()
                                require _7638 + return_data.size > _7638 + mem[_7638] + 31
                                _7708 = mem[_7638 + mem[_7638]]
                                if mem[_7638 + mem[_7638]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7638 + mem[_7638]]) + 1 < 0 or _7638 + ceil32(return_data.size) + ceil32(32 * mem[_7638 + mem[_7638]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7638 + ceil32(return_data.size) + ceil32(32 * mem[_7638 + mem[_7638]]) + 1
                                mem[_7638 + ceil32(return_data.size)] = _7708
                                require _7672 + (32 * _7708) + 32 <= return_data.size
                                t = _7638 + ceil32(return_data.size) + 32
                                idx = _7638 + _7672 + 32
                                while idx < _7638 + _7672 + (32 * _7708) + 32:
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
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7187 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7212 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7263 = mem[64]
                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _7292 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7292:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7263 + 68] = address(_7212)
                                mem[_7263 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7187 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7263 + (32 * _7292) + -mem[64] + 160]
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
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 0, 50
                        _3484 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                        staticcall address(_3484).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor6.field_0)
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                        require return_data.size >= 32
                        _4659 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32)
                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 386
                        _4680 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = _4680
                        require _4659 + (32 * _4680) + 32 <= return_data.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _4680)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4659 + 387 len ceil32(32 * _4680)]
                        if _4680 < 1:
                            revert with 0, 17
                        if _4680 - 1 >= _4680:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _4680 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _5697 = mem[64]
                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = mem[64] + 164
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5697 + 68] = this.address
                        mem[_5697 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value uint256(stor6.field_0) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5697 + (32 * ('cd', 36).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _6578 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_6578).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6604 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_6604]
                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                            revert with 0, 18
                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                            revert with 0, 'You are not the IRS.'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] != 0:
                            _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7159:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7585 = mem[128]
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    _7609 = mem[160]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7637 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7692 = mem[64]
                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7609
                                    mem[mem[64] + 36] = 128
                                    _7720 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7720:
                                        mem[w] = mem[v + 12 len 20]
                                        _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7692 + 68] = address(_7637)
                                    mem[_7692 + 100] = block.timestamp + 35
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7585 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7692 + (32 * _7720) + -mem[64] + 160]
                                    if not ext_call.success:
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    _7908 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7917 = mem[_7908]
                                    require mem[_7908] <= test266151307()
                                    require _7908 + return_data.size > _7908 + mem[_7908] + 31
                                    _7940 = mem[_7908 + mem[_7908]]
                                    if mem[_7908 + mem[_7908]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_7908 + mem[_7908]]) + 1 < 0 or _7908 + ceil32(return_data.size) + ceil32(32 * mem[_7908 + mem[_7908]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _7908 + ceil32(return_data.size) + ceil32(32 * mem[_7908 + mem[_7908]]) + 1
                                    mem[_7908 + ceil32(return_data.size)] = _7940
                                    require _7917 + (32 * _7940) + 32 <= return_data.size
                                    t = _7908 + ceil32(return_data.size) + 32
                                    idx = _7908 + _7917 + 32
                                    while idx < _7908 + _7917 + (32 * _7940) + 32:
                                        mem[t] = mem[idx]
                                        _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        t = t + 32
                                        idx = idx + 32
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7159 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                        else:
                            _7160 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7160:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7587 = mem[128]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7611 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7670 = mem[64]
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _7707 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7707:
                                        mem[w] = mem[v + 12 len 20]
                                        _7160 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7670 + 68] = address(_7611)
                                    mem[_7670 + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7587 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7670 + (32 * _7707) + -mem[64] + 160]
                                    if ext_call.success:
                                        if s == -1:
                                            revert with 0, 17
                                        _7160 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _7160 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7160 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                    else:
                        if cd[132] != 3:
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[160] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5595 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _5619 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5635 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5671 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _5619
                                        mem[mem[64] + 36] = 128
                                        _5687 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5687:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5671 + 68] = address(_5635)
                                        mem[_5671 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5595 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5671 + (32 * _5687) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _6491 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6528 = mem[_6491]
                                        require mem[_6491] <= test266151307()
                                        require _6491 + return_data.size > _6491 + mem[_6491] + 31
                                        _6559 = mem[_6491 + mem[_6491]]
                                        if mem[_6491 + mem[_6491]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_6491 + mem[_6491]]) + 1 < 0 or _6491 + ceil32(return_data.size) + ceil32(32 * mem[_6491 + mem[_6491]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _6491 + ceil32(return_data.size) + ceil32(32 * mem[_6491 + mem[_6491]]) + 1
                                        mem[_6491 + ceil32(return_data.size)] = _6559
                                        require _6528 + (32 * _6559) + 32 <= return_data.size
                                        t = _6491 + ceil32(return_data.size) + 32
                                        idx = _6491 + _6528 + 32
                                        while idx < _6491 + _6528 + (32 * _6559) + 32:
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
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5597 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5621 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5647 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _5679 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5679:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5647 + 68] = address(_5621)
                                        mem[_5647 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5597 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5647 + (32 * _5679) + -mem[64] + 160]
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
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            _3494 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                            staticcall address(_3494).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor6.field_0)
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                            require return_data.size >= 32
                            _4658 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32)
                            require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                            require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 386
                            _4679 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = _4679
                            require _4658 + (32 * _4679) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _4679)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4658 + 387 len ceil32(32 * _4679)]
                            var94004 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4658 + ceil32(32 * _4679) + 387
                            if _4679 < 1:
                                revert with 0, 17
                            if _4679 - 1 >= _4679:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _4679 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _5696 = mem[64]
                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = mem[64] + 164
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5696 + 68] = this.address
                            mem[_5696 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value uint256(stor6.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5696 + (32 * ('cd', 36).length) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6575 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = this.address
                            staticcall address(_6575).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_6603]
                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                revert with 0, 18
                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < 0:
                                revert with 0, 'You are not the IRS.'
                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                revert with 0, 'You are not the IRS.'
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6843 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = -6
                            call address(_6843).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), -6
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6863 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6863] == bool(mem[_6863])
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            _6923 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            _6935 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6923
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6947 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                            t = mem[64] + 196
                            while idx < _6947:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6935 + 100] = this.address
                            mem[_6935 + 132] = block.timestamp + 15
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6935 + (32 * _6947) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] != 0:
                                _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7559:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7871 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _7887 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7907 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7927 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7887
                                        mem[mem[64] + 36] = 128
                                        _7951 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7951:
                                            mem[w] = mem[v + 12 len 20]
                                            _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7927 + 68] = address(_7907)
                                        mem[_7927 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7871 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7927 + (32 * _7951) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            idx = idx + 1
                                            continue 
                                        _8035 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8040 = mem[_8035]
                                        require mem[_8035] <= test266151307()
                                        require _8035 + return_data.size > _8035 + mem[_8035] + 31
                                        _8055 = mem[_8035 + mem[_8035]]
                                        if mem[_8035 + mem[_8035]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_8035 + mem[_8035]]) + 1 < 0 or _8035 + ceil32(return_data.size) + ceil32(32 * mem[_8035 + mem[_8035]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _8035 + ceil32(return_data.size) + ceil32(32 * mem[_8035 + mem[_8035]]) + 1
                                        mem[_8035 + ceil32(return_data.size)] = _8055
                                        require _8040 + (32 * _8055) + 32 <= return_data.size
                                        t = _8035 + ceil32(return_data.size) + 32
                                        idx = _8035 + _8040 + 32
                                        while idx < _8035 + _8040 + (32 * _8055) + 32:
                                            mem[t] = mem[idx]
                                            _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7559 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                            else:
                                _7560 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7560:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7873 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7889 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7915 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _7939 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7939:
                                            mem[w] = mem[v + 12 len 20]
                                            _7560 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7915 + 68] = address(_7889)
                                        mem[_7915 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7873 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7915 + (32 * _7939) + -mem[64] + 160]
                                        if ext_call.success:
                                            if s == -1:
                                                revert with 0, 17
                                            _7560 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7560 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7560 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
            else:
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 143 len 20] == stor3:
                    revert with 0, 'Bog'
                if 1 == cd[132]:
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 128
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 327] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 295] = block.timestamp + 35
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value uint256(stor6.field_0) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 35, ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359 len 32 * ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _4696 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 199] = this.address
                    staticcall address(_4696).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 36).length < 1:
                        revert with 0, 17
                    if ('cd', 36).length - 1 >= ('cd', 36).length:
                        revert with 0, 50
                    _4768 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 199] = address(cd[164])
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = -6
                    call address(_4768).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[164]), -6
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 195] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 195] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 199] = ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 231] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 263] = 160
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 359] = 2
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 295] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 327] = block.timestamp + 15
                    require ext_code.size(address(cd[164]))
                    call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391 len 64]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7191 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _7216 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7236 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7284 = mem[64]
                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7216
                                mem[mem[64] + 36] = 128
                                _7304 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7304:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7284 + 68] = address(_7236)
                                mem[_7284 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7191 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7284 + (32 * _7304) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _7642 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7678 = mem[_7642]
                                require mem[_7642] <= test266151307()
                                require _7642 + return_data.size > _7642 + mem[_7642] + 31
                                _7711 = mem[_7642 + mem[_7642]]
                                if mem[_7642 + mem[_7642]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7642 + mem[_7642]]) + 1 < 0 or _7642 + ceil32(return_data.size) + ceil32(32 * mem[_7642 + mem[_7642]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7642 + ceil32(return_data.size) + ceil32(32 * mem[_7642 + mem[_7642]]) + 1
                                mem[_7642 + ceil32(return_data.size)] = _7711
                                require _7678 + (32 * _7711) + 32 <= return_data.size
                                t = _7642 + ceil32(return_data.size) + 32
                                idx = _7642 + _7678 + 32
                                while idx < _7642 + _7678 + (32 * _7711) + 32:
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
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7193 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7218 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7268 = mem[64]
                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _7294 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7294:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7268 + 68] = address(_7218)
                                mem[_7268 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7193 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7268 + (32 * _7294) + -mem[64] + 160]
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
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 0, 50
                        _3510 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                        staticcall address(_3510).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor6.field_0)
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                        require return_data.size >= 32
                        _4664 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32)
                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 386
                        _4683 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = _4683
                        require _4664 + (32 * _4683) + 32 <= return_data.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _4683)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4664 + 387 len ceil32(32 * _4683)]
                        if _4683 < 1:
                            revert with 0, 17
                        if _4683 - 1 >= _4683:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _4683 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _5700 = mem[64]
                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = mem[64] + 164
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5700 + 68] = this.address
                        mem[_5700 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value uint256(stor6.field_0) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5700 + (32 * ('cd', 36).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _6585 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_6585).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_6607]
                        if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                            revert with 0, 18
                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                        if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                            revert with 0, 50
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                            revert with 0, 'You are not the IRS.'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] != 0:
                            _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7161:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7591 = mem[128]
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    _7616 = mem[160]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7641 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7696 = mem[64]
                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7616
                                    mem[mem[64] + 36] = 128
                                    _7722 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7722:
                                        mem[w] = mem[v + 12 len 20]
                                        _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7696 + 68] = address(_7641)
                                    mem[_7696 + 100] = block.timestamp + 35
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7591 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7696 + (32 * _7722) + -mem[64] + 160]
                                    if not ext_call.success:
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    _7910 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7920 = mem[_7910]
                                    require mem[_7910] <= test266151307()
                                    require _7910 + return_data.size > _7910 + mem[_7910] + 31
                                    _7943 = mem[_7910 + mem[_7910]]
                                    if mem[_7910 + mem[_7910]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_7910 + mem[_7910]]) + 1 < 0 or _7910 + ceil32(return_data.size) + ceil32(32 * mem[_7910 + mem[_7910]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _7910 + ceil32(return_data.size) + ceil32(32 * mem[_7910 + mem[_7910]]) + 1
                                    mem[_7910 + ceil32(return_data.size)] = _7943
                                    require _7920 + (32 * _7943) + 32 <= return_data.size
                                    t = _7910 + ceil32(return_data.size) + 32
                                    idx = _7910 + _7920 + 32
                                    while idx < _7910 + _7920 + (32 * _7943) + 32:
                                        mem[t] = mem[idx]
                                        _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        t = t + 32
                                        idx = idx + 32
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7161 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                        else:
                            _7162 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7162:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7593 = mem[128]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7618 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7676 = mem[64]
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _7710 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7710:
                                        mem[w] = mem[v + 12 len 20]
                                        _7162 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7676 + 68] = address(_7618)
                                    mem[_7676 + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7593 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7676 + (32 * _7710) + -mem[64] + 160]
                                    if ext_call.success:
                                        if s == -1:
                                            revert with 0, 17
                                        _7162 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _7162 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7162 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                    else:
                        if cd[132] != 3:
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[160] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5601 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _5623 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5636 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5673 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _5623
                                        mem[mem[64] + 36] = 128
                                        _5689 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5689:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5673 + 68] = address(_5636)
                                        mem[_5673 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5601 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5673 + (32 * _5689) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _6494 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6533 = mem[_6494]
                                        require mem[_6494] <= test266151307()
                                        require _6494 + return_data.size > _6494 + mem[_6494] + 31
                                        _6563 = mem[_6494 + mem[_6494]]
                                        if mem[_6494 + mem[_6494]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_6494 + mem[_6494]]) + 1 < 0 or _6494 + ceil32(return_data.size) + ceil32(32 * mem[_6494 + mem[_6494]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _6494 + ceil32(return_data.size) + ceil32(32 * mem[_6494 + mem[_6494]]) + 1
                                        mem[_6494 + ceil32(return_data.size)] = _6563
                                        require _6533 + (32 * _6563) + 32 <= return_data.size
                                        t = _6494 + ceil32(return_data.size) + 32
                                        idx = _6494 + _6533 + 32
                                        while idx < _6494 + _6533 + (32 * _6563) + 32:
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
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5603 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5625 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5653 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _5681 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5681:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5653 + 68] = address(_5625)
                                        mem[_5653 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5603 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5653 + (32 * _5681) + -mem[64] + 160]
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
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = 4
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227 len 128] = call.data[calldata.size len 128]
                            if ('cd', 36).length < 1:
                                revert with 0, 17
                            if ('cd', 36).length - 1 >= ('cd', 36).length:
                                revert with 0, 50
                            _3526 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = this.address
                            staticcall address(_3526).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 355] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = ext_call.return_data[0]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 359] = uint256(stor6.field_0)
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 391] = 64
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 423] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            staticcall address(cd[164]).getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args uint256(stor6.field_0), Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 455 len 32 * ('cd', 36).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355
                            require return_data.size >= 32
                            _4663 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32)
                            require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                            require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 355 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 386
                            _4682 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 355 len 4], Mask(224, 0, stor6.field_32) + 355]) + 356
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 355] = _4682
                            require _4663 + (32 * _4682) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387 len ceil32(32 * _4682)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4663 + 387 len ceil32(32 * _4682)]
                            if _4682 < 1:
                                revert with 0, 17
                            if _4682 - 1 >= _4682:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[(32 * _4682 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _5699 = mem[64]
                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = mem[64] + 164
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5699 + 68] = this.address
                            mem[_5699 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value uint256(stor6.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5699 + (32 * ('cd', 36).length) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6582 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = this.address
                            staticcall address(_6582).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] = mem[_6606]
                            if 2 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] - mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                                revert with 0, 17
                            if not mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                revert with 0, 18
                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259] < 0:
                                revert with 0, 'You are not the IRS.'
                            if 3 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]:
                                revert with 0, 'You are not the IRS.'
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6848 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = -6
                            call address(_6848).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), -6
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6866] == bool(mem[_6866])
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195]:
                                revert with 0, 50
                            _6924 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            _6937 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6924
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6949 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                            t = mem[64] + 196
                            while idx < _6949:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6937 + 100] = this.address
                            mem[_6937 + 132] = block.timestamp + 15
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6937 + (32 * _6949) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] != 0:
                                _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7561:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7875 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _7892 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7909 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7930 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7892
                                        mem[mem[64] + 36] = 128
                                        _7952 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7952:
                                            mem[w] = mem[v + 12 len 20]
                                            _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7930 + 68] = address(_7909)
                                        mem[_7930 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7875 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7930 + (32 * _7952) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            idx = idx + 1
                                            continue 
                                        _8036 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8042 = mem[_8036]
                                        require mem[_8036] <= test266151307()
                                        require _8036 + return_data.size > _8036 + mem[_8036] + 31
                                        _8057 = mem[_8036 + mem[_8036]]
                                        if mem[_8036 + mem[_8036]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_8036 + mem[_8036]]) + 1 < 0 or _8036 + ceil32(return_data.size) + ceil32(32 * mem[_8036 + mem[_8036]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _8036 + ceil32(return_data.size) + ceil32(32 * mem[_8036 + mem[_8036]]) + 1
                                        mem[_8036 + ceil32(return_data.size)] = _8057
                                        require _8042 + (32 * _8057) + 32 <= return_data.size
                                        t = _8036 + ceil32(return_data.size) + 32
                                        idx = _8036 + _8042 + 32
                                        while idx < _8036 + _8042 + (32 * _8057) + 32:
                                            mem[t] = mem[idx]
                                            _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7561 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                            else:
                                _7562 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7562:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7877 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7894 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7918 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _7942 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7942:
                                            mem[w] = mem[v + 12 len 20]
                                            _7562 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7918 + 68] = address(_7894)
                                        mem[_7918 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7877 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7918 + (32 * _7942) + -mem[64] + 160]
                                        if ext_call.success:
                                            if s == -1:
                                                revert with 0, 17
                                            _7562 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7562 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7562 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]:
                revert with 0, 50
            stor3 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 143 len 20]
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99] = 3
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131 len 96] = call.data[calldata.size len 96]
        if 2 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131] = mem[ceil32(32 * ('cd', 4).length) + 205 len 20]
        if 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 163] = mem[ceil32(32 * ('cd', 4).length) + 173 len 20]
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 195] = mem[ceil32(32 * ('cd', 4).length) + 141 len 20]
        if stor5 != 1:
            if 3 >= ('cd', 4).length:
                revert with 0, 50
            if mem[224] != 1:
                if 1 == cd[132]:
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
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
                    _4700 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
                    staticcall address(_4700).0x70a08231 with:
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
                    _4774 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
                    call address(_4774).approve(address arg1, uint256 arg2) with:
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
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 3
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
                    while idx < 3:
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
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 96]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7197 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _7222 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7239 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7287 = mem[64]
                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7222
                                mem[mem[64] + 36] = 128
                                _7307 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7307:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7287 + 68] = address(_7239)
                                mem[_7287 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7197 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7287 + (32 * _7307) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _7646 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7684 = mem[_7646]
                                require mem[_7646] <= test266151307()
                                require _7646 + return_data.size > _7646 + mem[_7646] + 31
                                _7714 = mem[_7646 + mem[_7646]]
                                if mem[_7646 + mem[_7646]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7646 + mem[_7646]]) + 1 < 0 or _7646 + ceil32(return_data.size) + ceil32(32 * mem[_7646 + mem[_7646]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7646 + ceil32(return_data.size) + ceil32(32 * mem[_7646 + mem[_7646]]) + 1
                                mem[_7646 + ceil32(return_data.size)] = _7714
                                require _7684 + (32 * _7714) + 32 <= return_data.size
                                t = _7646 + ceil32(return_data.size) + 32
                                idx = _7646 + _7684 + 32
                                while idx < _7646 + _7684 + (32 * _7714) + 32:
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
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7199 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7224 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7273 = mem[64]
                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _7296 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7296:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7273 + 68] = address(_7224)
                                mem[_7273 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7199 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7273 + (32 * _7296) + -mem[64] + 160]
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
                        _3517 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                        staticcall address(_3517).0x70a08231 with:
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
                        s = ceil32(32 * ('cd', 4).length) + 129
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
                        _4669 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                        _4686 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _4686
                        require _4669 + (32 * _4686) + 32 <= return_data.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4686)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4669 + 419 len ceil32(32 * _4686)]
                        if _4686 < 1:
                            revert with 0, 17
                        if _4686 - 1 >= _4686:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4686 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _5703 = mem[64]
                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = mem[64] + 164
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5703 + 68] = this.address
                        mem[_5703 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value uint256(stor6.field_0) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5703 + (32 * ('cd', 36).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _6592 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_6592).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6610]
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
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                            revert with 0, 'You are not the IRS.'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] != 0:
                            _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7163:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7597 = mem[128]
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    _7623 = mem[160]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7645 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7700 = mem[64]
                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7623
                                    mem[mem[64] + 36] = 128
                                    _7724 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7724:
                                        mem[w] = mem[v + 12 len 20]
                                        _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7700 + 68] = address(_7645)
                                    mem[_7700 + 100] = block.timestamp + 35
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7597 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7700 + (32 * _7724) + -mem[64] + 160]
                                    if not ext_call.success:
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    _7912 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7923 = mem[_7912]
                                    require mem[_7912] <= test266151307()
                                    require _7912 + return_data.size > _7912 + mem[_7912] + 31
                                    _7946 = mem[_7912 + mem[_7912]]
                                    if mem[_7912 + mem[_7912]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_7912 + mem[_7912]]) + 1 < 0 or _7912 + ceil32(return_data.size) + ceil32(32 * mem[_7912 + mem[_7912]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _7912 + ceil32(return_data.size) + ceil32(32 * mem[_7912 + mem[_7912]]) + 1
                                    mem[_7912 + ceil32(return_data.size)] = _7946
                                    require _7923 + (32 * _7946) + 32 <= return_data.size
                                    t = _7912 + ceil32(return_data.size) + 32
                                    idx = _7912 + _7923 + 32
                                    while idx < _7912 + _7923 + (32 * _7946) + 32:
                                        mem[t] = mem[idx]
                                        _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        t = t + 32
                                        idx = idx + 32
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7163 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                        else:
                            _7164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7164:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7599 = mem[128]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7625 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7682 = mem[64]
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _7713 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7713:
                                        mem[w] = mem[v + 12 len 20]
                                        _7164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7682 + 68] = address(_7625)
                                    mem[_7682 + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7599 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7682 + (32 * _7713) + -mem[64] + 160]
                                    if ext_call.success:
                                        if s == -1:
                                            revert with 0, 17
                                        _7164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _7164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7164 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                    else:
                        if cd[132] != 3:
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[160] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5607 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _5627 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5637 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5675 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _5627
                                        mem[mem[64] + 36] = 128
                                        _5691 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5691:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5675 + 68] = address(_5637)
                                        mem[_5675 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5607 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5675 + (32 * _5691) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _6497 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6538 = mem[_6497]
                                        require mem[_6497] <= test266151307()
                                        require _6497 + return_data.size > _6497 + mem[_6497] + 31
                                        _6567 = mem[_6497 + mem[_6497]]
                                        if mem[_6497 + mem[_6497]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_6497 + mem[_6497]]) + 1 < 0 or _6497 + ceil32(return_data.size) + ceil32(32 * mem[_6497 + mem[_6497]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _6497 + ceil32(return_data.size) + ceil32(32 * mem[_6497 + mem[_6497]]) + 1
                                        mem[_6497 + ceil32(return_data.size)] = _6567
                                        require _6538 + (32 * _6567) + 32 <= return_data.size
                                        t = _6497 + ceil32(return_data.size) + 32
                                        idx = _6497 + _6538 + 32
                                        while idx < _6497 + _6538 + (32 * _6567) + 32:
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
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5609 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5629 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5659 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _5683 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5683:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5659 + 68] = address(_5629)
                                        mem[_5659 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5609 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5659 + (32 * _5683) + -mem[64] + 160]
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
                            _3530 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                            staticcall address(_3530).0x70a08231 with:
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
                            s = ceil32(32 * ('cd', 4).length) + 129
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
                            _4668 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                            require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                            require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                            _4685 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _4685
                            require _4668 + (32 * _4685) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4685)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4668 + 419 len ceil32(32 * _4685)]
                            if _4685 < 1:
                                revert with 0, 17
                            if _4685 - 1 >= _4685:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4685 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _5702 = mem[64]
                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = mem[64] + 164
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5702 + 68] = this.address
                            mem[_5702 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value uint256(stor6.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5702 + (32 * ('cd', 36).length) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6589 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = this.address
                            staticcall address(_6589).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6609]
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
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                revert with 0, 'You are not the IRS.'
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6853 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = -6
                            call address(_6853).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), -6
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6869] == bool(mem[_6869])
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 50
                            _6925 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            _6939 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6925
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6951 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                            t = mem[64] + 196
                            while idx < _6951:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6939 + 100] = this.address
                            mem[_6939 + 132] = block.timestamp + 15
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6939 + (32 * _6951) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] != 0:
                                _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7563:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7879 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _7897 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7911 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7933 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7897
                                        mem[mem[64] + 36] = 128
                                        _7953 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7953:
                                            mem[w] = mem[v + 12 len 20]
                                            _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7933 + 68] = address(_7911)
                                        mem[_7933 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7879 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7933 + (32 * _7953) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            idx = idx + 1
                                            continue 
                                        _8037 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8044 = mem[_8037]
                                        require mem[_8037] <= test266151307()
                                        require _8037 + return_data.size > _8037 + mem[_8037] + 31
                                        _8059 = mem[_8037 + mem[_8037]]
                                        if mem[_8037 + mem[_8037]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_8037 + mem[_8037]]) + 1 < 0 or _8037 + ceil32(return_data.size) + ceil32(32 * mem[_8037 + mem[_8037]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _8037 + ceil32(return_data.size) + ceil32(32 * mem[_8037 + mem[_8037]]) + 1
                                        mem[_8037 + ceil32(return_data.size)] = _8059
                                        require _8044 + (32 * _8059) + 32 <= return_data.size
                                        t = _8037 + ceil32(return_data.size) + 32
                                        idx = _8037 + _8044 + 32
                                        while idx < _8037 + _8044 + (32 * _8059) + 32:
                                            mem[t] = mem[idx]
                                            _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7563 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                            else:
                                _7564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7564:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7881 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7899 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7921 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _7945 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7945:
                                            mem[w] = mem[v + 12 len 20]
                                            _7564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7921 + 68] = address(_7899)
                                        mem[_7921 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7881 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7921 + (32 * _7945) + -mem[64] + 160]
                                        if ext_call.success:
                                            if s == -1:
                                                revert with 0, 17
                                            _7564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7564 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
            else:
                if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 143 len 20] == stor3:
                    revert with 0, 'Bog'
                if 1 == cd[132]:
                    if 35 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = 0
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 263] = 128
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 359] = ('cd', 36).length
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
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
                    _4704 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 231] = this.address
                    staticcall address(_4704).0x70a08231 with:
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
                    _4780 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 231] = address(cd[164])
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 263] = -6
                    call address(_4780).approve(address arg1, uint256 arg2) with:
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
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 391] = 3
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423
                    while idx < 3:
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
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, 3, mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 423 len 96]
                    if not ext_call.success:
                        revert with 0, 'Winnie the pooh approves!'
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    if mem[160] != 0:
                        idx = 0
                        while idx < ('cd', 100).length:
                            s = 0
                            t = 0
                            while s < cd[68]:
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7203 = mem[128]
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                _7228 = mem[160]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7242 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7290 = mem[64]
                                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _7228
                                mem[mem[64] + 36] = 128
                                _7310 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7310:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7290 + 68] = address(_7242)
                                mem[_7290 + 100] = block.timestamp + 35
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7203 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7290 + (32 * _7310) + -mem[64] + 160]
                                if not ext_call.success:
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                _7650 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _7690 = mem[_7650]
                                require mem[_7650] <= test266151307()
                                require _7650 + return_data.size > _7650 + mem[_7650] + 31
                                _7717 = mem[_7650 + mem[_7650]]
                                if mem[_7650 + mem[_7650]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_7650 + mem[_7650]]) + 1 < 0 or _7650 + ceil32(return_data.size) + ceil32(32 * mem[_7650 + mem[_7650]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _7650 + ceil32(return_data.size) + ceil32(32 * mem[_7650 + mem[_7650]]) + 1
                                mem[_7650 + ceil32(return_data.size)] = _7717
                                require _7690 + (32 * _7717) + 32 <= return_data.size
                                t = _7650 + ceil32(return_data.size) + 32
                                idx = _7650 + _7690 + 32
                                while idx < _7650 + _7690 + (32 * _7717) + 32:
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
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                _7205 = mem[128]
                                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                    revert with 0, 50
                                _7230 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                if 35 > !block.timestamp:
                                    revert with 0, 17
                                _7278 = mem[64]
                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                _7298 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                u = 0
                                v = ceil32(32 * ('cd', 4).length) + 129
                                w = mem[64] + 164
                                while u < _7298:
                                    mem[w] = mem[v + 12 len 20]
                                    u = u + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_7278 + 68] = address(_7230)
                                mem[_7278 + 100] = block.timestamp + 35
                                require ext_code.size(address(cd[164]))
                                call address(cd[164]).mem[mem[64] len 4] with:
                                   value _7205 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _7278 + (32 * _7298) + -mem[64] + 160]
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
                        _3551 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                        staticcall address(_3551).0x70a08231 with:
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
                        s = ceil32(32 * ('cd', 4).length) + 129
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
                        _4674 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                        _4689 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _4689
                        require _4674 + (32 * _4689) + 32 <= return_data.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4689)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4674 + 419 len ceil32(32 * _4689)]
                        if _4689 < 1:
                            revert with 0, 17
                        if _4689 - 1 >= _4689:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4689 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                        if 35 > !block.timestamp:
                            revert with 0, 17
                        _5706 = mem[64]
                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        idx = 0
                        s = ceil32(32 * ('cd', 4).length) + 129
                        t = mem[64] + 164
                        while idx < ('cd', 36).length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_5706 + 68] = this.address
                        mem[_5706 + 100] = block.timestamp + 35
                        require ext_code.size(address(cd[164]))
                        call address(cd[164]).mem[mem[64] len 4] with:
                           value uint256(stor6.field_0) wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _5706 + (32 * ('cd', 36).length) + -mem[64] + 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                            revert with 0, 17
                        if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 0, 50
                        _6599 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_6599).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6613]
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
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                            revert with 0, 'You are not the IRS.'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] != 0:
                            _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7165:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7603 = mem[128]
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    _7630 = mem[160]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7649 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7704 = mem[64]
                                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _7630
                                    mem[mem[64] + 36] = 128
                                    _7726 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7726:
                                        mem[w] = mem[v + 12 len 20]
                                        _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7704 + 68] = address(_7649)
                                    mem[_7704 + 100] = block.timestamp + 35
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7603 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7704 + (32 * _7726) + -mem[64] + 160]
                                    if not ext_call.success:
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    _7914 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7926 = mem[_7914]
                                    require mem[_7914] <= test266151307()
                                    require _7914 + return_data.size > _7914 + mem[_7914] + 31
                                    _7949 = mem[_7914 + mem[_7914]]
                                    if mem[_7914 + mem[_7914]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_7914 + mem[_7914]]) + 1 < 0 or _7914 + ceil32(return_data.size) + ceil32(32 * mem[_7914 + mem[_7914]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _7914 + ceil32(return_data.size) + ceil32(32 * mem[_7914 + mem[_7914]]) + 1
                                    mem[_7914 + ceil32(return_data.size)] = _7949
                                    require _7926 + (32 * _7949) + 32 <= return_data.size
                                    t = _7914 + ceil32(return_data.size) + 32
                                    idx = _7914 + _7926 + 32
                                    while idx < _7914 + _7926 + (32 * _7949) + 32:
                                        mem[t] = mem[idx]
                                        _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        t = t + 32
                                        idx = idx + 32
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    s = s + 1
                                    t = 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7165 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                        else:
                            _7166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                            idx = 0
                            while idx < _7166:
                                s = 0
                                t = 0
                                while s < cd[68]:
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    _7605 = mem[128]
                                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                        revert with 0, 50
                                    _7632 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                    if 35 > !block.timestamp:
                                        revert with 0, 17
                                    _7688 = mem[64]
                                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 128
                                    _7716 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                    u = 0
                                    v = ceil32(32 * ('cd', 4).length) + 129
                                    w = mem[64] + 164
                                    while u < _7716:
                                        mem[w] = mem[v + 12 len 20]
                                        _7166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        u = u + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_7688 + 68] = address(_7632)
                                    mem[_7688 + 100] = block.timestamp + 35
                                    require ext_code.size(address(cd[164]))
                                    call address(cd[164]).mem[mem[64] len 4] with:
                                       value _7605 wei
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _7688 + (32 * _7716) + -mem[64] + 160]
                                    if ext_call.success:
                                        if s == -1:
                                            revert with 0, 17
                                        _7166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if t != 1:
                                        revert with 0, 'Your transaction(s) failed!'
                                    if idx == -1:
                                        revert with 0, 17
                                    _7166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                                if idx == -1:
                                    revert with 0, 17
                                _7166 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = idx + 1
                                continue 
                    else:
                        if cd[132] != 3:
                            if 1 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[160] != 0:
                                idx = 0
                                while idx < ('cd', 100).length:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5613 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _5631 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5638 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5677 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _5631
                                        mem[mem[64] + 36] = 128
                                        _5693 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5693:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5677 + 68] = address(_5638)
                                        mem[_5677 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5613 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5677 + (32 * _5693) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        _6500 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _6543 = mem[_6500]
                                        require mem[_6500] <= test266151307()
                                        require _6500 + return_data.size > _6500 + mem[_6500] + 31
                                        _6571 = mem[_6500 + mem[_6500]]
                                        if mem[_6500 + mem[_6500]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_6500 + mem[_6500]]) + 1 < 0 or _6500 + ceil32(return_data.size) + ceil32(32 * mem[_6500 + mem[_6500]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _6500 + ceil32(return_data.size) + ceil32(32 * mem[_6500 + mem[_6500]]) + 1
                                        mem[_6500 + ceil32(return_data.size)] = _6571
                                        require _6543 + (32 * _6571) + 32 <= return_data.size
                                        t = _6500 + ceil32(return_data.size) + 32
                                        idx = _6500 + _6543 + 32
                                        while idx < _6500 + _6543 + (32 * _6571) + 32:
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
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _5615 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _5633 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _5665 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _5685 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _5685:
                                            mem[w] = mem[v + 12 len 20]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_5665 + 68] = address(_5633)
                                        mem[_5665 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _5615 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _5665 + (32 * _5685) + -mem[64] + 160]
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
                            _3567 = mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 391] = this.address
                            staticcall address(_3567).0x70a08231 with:
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
                            s = ceil32(32 * ('cd', 4).length) + 129
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
                            _4673 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32)
                            require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) <= test266151307()
                            require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + return_data.size + 387 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 418
                            _4688 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]
                            if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 387 len 4], Mask(224, 0, stor6.field_32) + 387]) + 388
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 387] = _4688
                            require _4673 + (32 * _4688) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419 len ceil32(32 * _4688)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + _4673 + 419 len ceil32(32 * _4688)]
                            var98002 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + ceil32(32 * _4688) + 419
                            if _4688 < 1:
                                revert with 0, 17
                            if _4688 - 1 >= _4688:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323] = mem[(32 * _4688 - 1) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 419]
                            if 35 > !block.timestamp:
                                revert with 0, 17
                            _5705 = mem[64]
                            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 36).length
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + 129
                            t = mem[64] + 164
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5705 + 68] = this.address
                            mem[_5705 + 100] = block.timestamp + 35
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                               value uint256(stor6.field_0) wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5705 + (32 * ('cd', 36).length) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6596 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = this.address
                            staticcall address(_6596).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 50
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291] = mem[_6612]
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
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]) - (100 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 259]) / mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 323]:
                                revert with 0, 'You are not the IRS.'
                            if mem[ceil32(32 * ('cd', 4).length) + 97] < 1:
                                revert with 0, 17
                            if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            _6858 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
                            mem[mem[64] + 4] = address(cd[164])
                            mem[mem[64] + 36] = -6
                            call address(_6858).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[164]), -6
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6872 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_6872] == bool(mem[_6872])
                            if 1 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 227]:
                                revert with 0, 50
                            _6926 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 291]
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            _6941 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _6926
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _6953 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]
                            idx = 0
                            s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 131
                            t = mem[64] + 196
                            while idx < _6953:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6941 + 100] = this.address
                            mem[_6941 + 132] = block.timestamp + 15
                            require ext_code.size(address(cd[164]))
                            call address(cd[164]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6941 + (32 * _6953) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with 0, 'Winnie the pooh approves!'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] != 0:
                                _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7565:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7883 = mem[128]
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        _7902 = mem[160]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7913 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7936 = mem[64]
                                        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _7902
                                        mem[mem[64] + 36] = 128
                                        _7954 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7954:
                                            mem[w] = mem[v + 12 len 20]
                                            _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7936 + 68] = address(_7913)
                                        mem[_7936 + 100] = block.timestamp + 35
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7883 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7936 + (32 * _7954) + -mem[64] + 160]
                                        if not ext_call.success:
                                            if t != 1:
                                                revert with 0, 'Your transaction(s) failed!'
                                            if idx == -1:
                                                revert with 0, 17
                                            _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            idx = idx + 1
                                            continue 
                                        _8038 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8046 = mem[_8038]
                                        require mem[_8038] <= test266151307()
                                        require _8038 + return_data.size > _8038 + mem[_8038] + 31
                                        _8061 = mem[_8038 + mem[_8038]]
                                        if mem[_8038 + mem[_8038]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_8038 + mem[_8038]]) + 1 < 0 or _8038 + ceil32(return_data.size) + ceil32(32 * mem[_8038 + mem[_8038]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _8038 + ceil32(return_data.size) + ceil32(32 * mem[_8038 + mem[_8038]]) + 1
                                        mem[_8038 + ceil32(return_data.size)] = _8061
                                        require _8046 + (32 * _8061) + 32 <= return_data.size
                                        t = _8038 + ceil32(return_data.size) + 32
                                        idx = _8038 + _8046 + 32
                                        while idx < _8038 + _8046 + (32 * _8061) + 32:
                                            mem[t] = mem[idx]
                                            _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        s = s + 1
                                        t = 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7565 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
                            else:
                                _7566 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                idx = 0
                                while idx < _7566:
                                    s = 0
                                    t = 0
                                    while s < cd[68]:
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        _7885 = mem[128]
                                        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                                            revert with 0, 50
                                        _7904 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
                                        if 35 > !block.timestamp:
                                            revert with 0, 17
                                        _7924 = mem[64]
                                        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 128
                                        _7948 = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 4).length) + 97]
                                        u = 0
                                        v = ceil32(32 * ('cd', 4).length) + 129
                                        w = mem[64] + 164
                                        while u < _7948:
                                            mem[w] = mem[v + 12 len 20]
                                            _7566 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            u = u + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_7924 + 68] = address(_7904)
                                        mem[_7924 + 100] = block.timestamp + 35
                                        require ext_code.size(address(cd[164]))
                                        call address(cd[164]).mem[mem[64] len 4] with:
                                           value _7885 wei
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _7924 + (32 * _7948) + -mem[64] + 160]
                                        if ext_call.success:
                                            if s == -1:
                                                revert with 0, 17
                                            _7566 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                            s = s + 1
                                            t = 1
                                            continue 
                                        if t != 1:
                                            revert with 0, 'Your transaction(s) failed!'
                                        if idx == -1:
                                            revert with 0, 17
                                        _7566 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                        idx = idx + 1
                                        continue 
                                    if idx == -1:
                                        revert with 0, 17
                                    _7566 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]
                                    idx = idx + 1
                                    continue 
            if 0 >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 99]:
                revert with 0, 50
            stor3 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 100).length) + 143 len 20]
}



}
