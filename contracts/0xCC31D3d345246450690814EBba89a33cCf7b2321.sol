contract main {




// =====================  Runtime code  =====================


#
#  - sub_6b1ef327(?)
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
uint128 stor0; offset 176
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 sub_caa20f2c;
uint256 stor2;
mapping of struct sub_5a1d1136;
mapping of struct sub_a6c35a3e;
array of address sub_6b67885c;
array of address sub_f645dbe3;

function sub_5a1d1136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5a1d1136[arg1].field_0, bool(sub_5a1d1136[arg1].field_160)
}

function sub_6ae3c48e(?) payable {
    return bool(uint8(stor0.field_176))
}

function sub_6b67885c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6b67885c.length
    return sub_6b67885c[arg1]
}

function sub_87cf4e47(?) payable {
    return bool(uint8(stor0.field_168))
}

function owner() payable {
    return owner
}

function sub_a6c35a3e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a6c35a3e[arg1].field_0, bool(sub_a6c35a3e[arg1].field_160)
}

function sub_caa20f2c(?) payable {
    return sub_caa20f2c
}

function sub_d75f0da7(?) payable {
    return bool(uint8(stor0.field_160))
}

function sub_f645dbe3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f645dbe3.length
    return sub_f645dbe3[arg1]
}

function _fallback() payable {
    revert
}

function blockContract() payable {
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    Mask(96, 0, stor0.field_160) = 1
}

function sub_48949de3(?) payable {
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    Mask(88, 0, stor0.field_168) = Mask(88, 0, not bool(uint8(stor0.field_168)))
}

function sub_ad43f1aa(?) payable {
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    Mask(80, 0, stor0.field_176) = Mask(80, 0, not bool(uint8(stor0.field_176)))
}

function changeRefPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    sub_caa20f2c = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    if not arg1:
        revert with 0, 'Zero address'
    owner = arg1
}

function sub_75a440ad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    sub_5a1d1136[address(arg1)].field_0 = msg.sender
    sub_5a1d1136[address(arg1)].field_160 = 1
    sub_6b67885c.length++
    sub_6b67885c[sub_6b67885c.length] = address(arg1)
    if address(arg2):
        sub_a6c35a3e[address(msg.sender)].field_0 = address(arg2)
        sub_a6c35a3e[address(msg.sender)].field_160 = 1
        sub_f645dbe3.length++
        sub_f645dbe3[sub_f645dbe3.length] = msg.sender
}

function sub_edcb321f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _101 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _103 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_103))
        staticcall address(_103).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_106]
        require mem[_106] == mem[_106]
        _108 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = _107
        _109 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_109 + 32] = mem[_109 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        _112 = mem[_109]
        s = 0
        while s < _112:
            mem[_108 + s + 100] = mem[_109 + s + 32]
            s = s + 32
            continue 
        if ceil32(_112) <= _112:
            call address(_101).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _108 + _112 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe Transfer failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe Transfer failed'
            else:
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_148] = return_data.size
                mem[_148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_148 + 32] == bool(mem[_148 + 32])
                    if not mem[_148 + 32]:
                        revert with 0, 'Safe Transfer failed'
        else:
            mem[_108 + _112 + 100] = 0
            call address(_101).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _108 + _112 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe Transfer failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe Transfer failed'
            else:
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_150] = return_data.size
                mem[_150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_150 + 32] == bool(mem[_150 + 32])
                    if not mem[_150 + 32]:
                        revert with 0, 'Safe Transfer failed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b5c678e3(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    if uint8(stor0.field_160):
        revert with 0, 'Contract is blocked'
    if not sub_5a1d1136[address(msg.sender)].field_160:
        revert with 0, 'Not attached feeAddress'
    if arg3 and arg6 > -1 / arg3:
        revert with 'NH{q', 17
    if not stor2:
        revert with 'NH{q', 18
    mem[ceil32(ceil32(arg1.length)) + 101] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -(arg3 * arg6 / stor2) - 1:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = 100
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 133 len 28] = sub_5a1d1136[address(msg.sender)].field_0
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 229 len 128] = unknown_0x23b872dd(?????), sub_5a1d1136[address(msg.sender)].field_0, sub_5a1d1136[address(msg.sender)].field_0, address(this.address), arg3, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 229 len 28]
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 329] = 0
    call address(arg2).mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 229 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 233 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Safe TransferFrom failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'Safe TransferFrom failed'
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0] + (arg3 * arg6 / stor2):
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < -arg3 * arg6 / stor2:
            if -arg3 * arg6 / stor2 and 100 > -1 / -arg3 * arg6 / stor2:
                revert with 'NH{q', 17
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg5), -100 * arg3 * arg6 / stor2, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 329 len 28]
            call address(arg2).mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if arg1.length:
                    require arg1.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe approve failed'
            else:
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 361] == bool(mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 361])
                    if not mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 361]:
                        revert with 0, 'Safe approve failed'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Safe TransferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 261] == bool(mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 261])
            if not mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 261]:
                revert with 0, 'Safe TransferFrom failed'
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0] + (arg3 * arg6 / stor2):
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < -arg3 * arg6 / stor2:
            if -arg3 * arg6 / stor2 and 100 > -1 / -arg3 * arg6 / stor2:
                revert with 'NH{q', 17
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 96] = 0, address(arg5), -100 * arg3 * arg6 / stor2, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 28]
            call address(arg2).mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if arg1.length:
                    require arg1.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe approve failed'
            else:
                mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362] == bool(mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362])
                    if not mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362]:
                        revert with 0, 'Safe approve failed'
    if block.timestamp > -2:
        revert with 'NH{q', 17
    require ext_code.size(address(arg5))
    call address(arg5).exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 32, 160, sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1, -arg3 * arg6 / stor2, arg4, arg1.length, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function swapV2Erc20(address[][] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require arg1 + cd[s] + 67 < calldata.size
        if cd[(arg1 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _114 = mem[64]
        if mem[64] + floor32(cd[(arg1 + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg1 + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(arg1 + cd[s] + 36)]) + 1
        mem[_114] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (32 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _114 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    _115 = mem[96]
    idx = 0
    while idx < _115:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 50
        _229 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_229))
        staticcall address(_229).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_232]
        require mem[_232] == mem[_232]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[(32 * idx) + 128]]:
            revert with 'NH{q', 50
        _237 = mem[mem[(32 * idx) + 128] + 32]
        if mem[_232] and 100 > -1 / mem[_232]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg2
        require ext_code.size(address(_237))
        staticcall address(_237).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_240] == mem[_240]
        if mem[_240] >= 100 * _233:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _243 = mem[(32 * idx) + 128]
            if block.timestamp > -2:
                revert with 'NH{q', 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _233
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _249 = mem[_243]
            mem[mem[64] + 164] = mem[_243]
            s = 0
            t = _243 + 32
            u = mem[64] + 196
            while s < _249:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp + 1
            require ext_code.size(arg2)
            call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _233, 0, 160, msg.sender, block.timestamp + 1, mem[mem[64] + 164 len (32 * _249) + 32]
        else:
            if 100 * _233 and 100 > -1 / 100 * _233:
                revert with 'NH{q', 17
            _244 = mem[64]
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = 10000 * _233
            _246 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_246 + 32] = mem[_246 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _250 = mem[_246]
            s = 0
            while s < _250:
                mem[_244 + s + 100] = mem[_246 + s + 32]
                s = s + 32
                continue 
            if ceil32(_250) <= _250:
                call address(_237).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _244 + _250 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _359 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        _369 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _393 = mem[_359]
                        mem[mem[64] + 164] = mem[_359]
                        s = 0
                        t = _359 + 32
                        u = mem[64] + 196
                        while s < _393:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_369 + 100] = msg.sender
                        mem[_369 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _369 + (32 * _393) + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'Safe approve failed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _379 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _401 = mem[_379]
                        mem[mem[64] + 164] = mem[_379]
                        s = 0
                        t = _379 + 32
                        u = mem[64] + 196
                        while s < _401:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _233, 0, 160, msg.sender, block.timestamp + 1, mem[mem[64] + 164 len (32 * _401) + 32]
                else:
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_337] = return_data.size
                    mem[_337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _360 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        _371 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _394 = mem[_360]
                        mem[mem[64] + 164] = mem[_360]
                        s = 0
                        t = _360 + 32
                        u = mem[64] + 196
                        while s < _394:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_371 + 100] = msg.sender
                        mem[_371 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _371 + (32 * _394) + -mem[64] + 192]
                    else:
                        require return_data.size >= 32
                        require mem[_337 + 32] == bool(mem[_337 + 32])
                        if not mem[_337 + 32]:
                            revert with 0, 'Safe approve failed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _380 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _402 = mem[_380]
                        mem[mem[64] + 164] = mem[_380]
                        s = 0
                        t = _380 + 32
                        u = mem[64] + 196
                        while s < _402:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _233, 0, 160, msg.sender, block.timestamp + 1, mem[mem[64] + 164 len (32 * _402) + 32]
            else:
                mem[_244 + _250 + 100] = 0
                call address(_237).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _244 + _250 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not mem[96]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _363 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        _373 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _395 = mem[_363]
                        mem[mem[64] + 164] = mem[_363]
                        s = 0
                        t = _363 + 32
                        u = mem[64] + 196
                        while s < _395:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_373 + 100] = msg.sender
                        mem[_373 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _373 + (32 * _395) + -mem[64] + 192]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'Safe approve failed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _383 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        _391 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _403 = mem[_383]
                        mem[mem[64] + 164] = mem[_383]
                        s = 0
                        t = _383 + 32
                        u = mem[64] + 196
                        while s < _403:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_391 + 100] = msg.sender
                        mem[_391 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _391 + (32 * _403) + -mem[64] + 192]
                else:
                    _339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_339] = return_data.size
                    mem[_339 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not return_data.size:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _364 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _396 = mem[_364]
                        mem[mem[64] + 164] = mem[_364]
                        s = 0
                        t = _364 + 32
                        u = mem[64] + 196
                        while s < _396:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _233, 0, 160, msg.sender, block.timestamp + 1, mem[mem[64] + 164 len (32 * _396) + 32]
                    else:
                        require return_data.size >= 32
                        require mem[_339 + 32] == bool(mem[_339 + 32])
                        if not mem[_339 + 32]:
                            revert with 0, 'Safe approve failed'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _384 = mem[(32 * idx) + 128]
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        _392 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _233
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _404 = mem[_384]
                        mem[mem[64] + 164] = mem[_384]
                        s = 0
                        t = _384 + 32
                        u = mem[64] + 196
                        while s < _404:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_392 + 100] = msg.sender
                        mem[_392 + 132] = block.timestamp + 1
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _392 + (32 * _404) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2b39da6a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _119 = mem[128]
    if uint8(stor0.field_160):
        revert with 0, 'Contract is blocked'
    if not sub_5a1d1136[address(msg.sender)].field_160:
        revert with 0, 'Not attached feeAddress'
    if cd[36] and cd[132] > -1 / cd[36]:
        revert with 'NH{q', 17
    if not stor2:
        revert with 'NH{q', 18
    mem[floor32(('cd', 4).length) + 101] = this.address
    require ext_code.size(address(_119))
    staticcall address(_119).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -(cd[36] * cd[132] / stor2) - 1:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 133] = sub_5a1d1136[address(msg.sender)].field_0
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 165] = this.address
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 197] = cd[36]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = 100
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 229 len 128] = 0, sub_5a1d1136[address(msg.sender)].field_0, address(this.address), cd[36], mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 229 len 28]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 329] = 0
    call address(_119).mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 229 len 4] with:
         gas gas_remaining wei
        args mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 233 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Safe TransferFrom failed'
        if ('cd', 4).length:
            require ('cd', 4).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'Safe TransferFrom failed'
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 233] = this.address
        require ext_code.size(address(_119))
        staticcall address(_119).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0] + (cd[36] * cd[132] / stor2):
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 233] = this.address
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 265] = address(cd[100])
        require ext_code.size(address(_119))
        staticcall address(_119).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= -cd[36] * cd[132] / stor2:
            if block.timestamp > -2:
                revert with 'NH{q', 17
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 229] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 233] = -cd[36] * cd[132] / stor2
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 265] = cd[68]
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 297] = 160
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 393] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 425
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 425 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
        else:
            if -cd[36] * cd[132] / stor2 and 100 > -1 / -cd[36] * cd[132] / stor2:
                revert with 'NH{q', 17
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 265] = address(cd[100])
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 297] = -100 * cd[36] * cd[132] / stor2
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 229] = 68
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 261 len 4] = approve(address arg1, uint256 arg2)
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 329 len 96] = 0, address(cd[100]), -100 * cd[36] * cd[132] / stor2, mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 329 len 28]
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 397] = 0
            call address(_119).mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if ('cd', 4).length:
                    require ('cd', 4).length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe approve failed'
                if block.timestamp > -2:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 329] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 333] = -cd[36] * cd[132] / stor2
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 365] = cd[68]
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 397] = 160
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 493] = ('cd', 4).length
                idx = 0
                s = 128
                t = floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 525
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 525 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
            else:
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 329] = return_data.size
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 361] == bool(mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 361])
                    if not mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 361]:
                        revert with 0, 'Safe approve failed'
                if block.timestamp > -2:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334] = -cd[36] * cd[132] / stor2
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 366] = cd[68]
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 398] = 160
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 494] = ('cd', 4).length
                idx = 0
                s = 128
                t = floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 526
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 526 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
    else:
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 229] = return_data.size
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Safe TransferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261] == bool(mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261])
            if not mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261]:
                revert with 0, 'Safe TransferFrom failed'
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 234] = this.address
        require ext_code.size(address(_119))
        staticcall address(_119).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + ceil32(return_data.size) + 230] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0] + (cd[36] * cd[132] / stor2):
            revert with 'NH{q', 17
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 234] = this.address
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = address(cd[100])
        require ext_code.size(address(_119))
        staticcall address(_119).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[100])
        mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 230] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= -cd[36] * cd[132] / stor2:
            if block.timestamp > -2:
                revert with 'NH{q', 17
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 230] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 234] = -cd[36] * cd[132] / stor2
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = cd[68]
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = 160
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 394] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 426
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 426 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
        else:
            if -cd[36] * cd[132] / stor2 and 100 > -1 / -cd[36] * cd[132] / stor2:
                revert with 'NH{q', 17
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 266] = address(cd[100])
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 298] = -100 * cd[36] * cd[132] / stor2
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 230] = 68
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 262 len 4] = approve(address arg1, uint256 arg2)
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 96] = 0, address(cd[100]), -100 * cd[36] * cd[132] / stor2, mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 28]
            mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 398] = 0
            call address(_119).mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if ('cd', 4).length:
                    require ('cd', 4).length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'Safe approve failed'
                if block.timestamp > -2:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 334] = -cd[36] * cd[132] / stor2
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 366] = cd[68]
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 398] = 160
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 494] = ('cd', 4).length
                idx = 0
                s = 128
                t = floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 526
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 526 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
            else:
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = return_data.size
                mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Safe approve failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362] == bool(mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362])
                    if not mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 362]:
                        revert with 0, 'Safe approve failed'
                if block.timestamp > -2:
                    revert with 'NH{q', 17
                mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 331] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 335] = -cd[36] * cd[132] / stor2
                mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 367] = cd[68]
                mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 399] = 160
                mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 495] = ('cd', 4).length
                idx = 0
                s = 128
                t = floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 527
                while idx < ('cd', 4).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -cd[36] * cd[132] / stor2, cd[68], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + (8 * ceil32(return_data.size)) + 527 len 32 * ('cd', 4).length]), sub_5a1d1136[address(msg.sender)].field_0, block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapV3Erc20(bytes[] arg1, address[] arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require arg1 + cd[s] + 67 < calldata.size
        if cd[(arg1 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _183 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + 36)])) + 1
        mem[_183] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 36)] + 68 <= calldata.size
        mem[_183 + 32 len cd[(arg1 + cd[s] + 36)]] = call.data[arg1 + cd[s] + 68 len cd[(arg1 + cd[s] + 36)]]
        mem[_183 + cd[(arg1 + cd[s] + 36)] + 32] = 0
        mem[t] = _183
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    _182 = mem[64]
    if mem[64] + floor32(arg2.length) + 1 > test266151307() or mem[64] + floor32(arg2.length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(arg2.length) + 1
    mem[_182] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = _182 + 32
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'You is not owner'
    _426 = mem[96]
    idx = 0
    while idx < _426:
        if idx >= mem[_182]:
            revert with 'NH{q', 50
        _669 = mem[(32 * idx) + _182 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_669))
        staticcall address(_669).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _672 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _673 = mem[_672]
        require mem[_672] == mem[_672]
        if idx >= mem[_182]:
            revert with 'NH{q', 50
        _675 = mem[(32 * idx) + _182 + 32]
        if mem[_672] and 100 > -1 / mem[_672]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = arg3
        require ext_code.size(address(_675))
        staticcall address(_675).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _678 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_678] == mem[_678]
        if mem[_678] >= 100 * _673:
            _680 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_680] = mem[(32 * idx) + 128]
            mem[_680 + 32] = msg.sender
            if block.timestamp > -2:
                revert with 'NH{q', 17
            mem[_680 + 64] = block.timestamp + 1
            mem[_680 + 96] = _673
            mem[_680 + 128] = 0
            mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _685 = mem[_680]
            mem[mem[64] + 36] = 160
            _686 = mem[_685]
            mem[mem[64] + 196] = mem[_685]
            s = 0
            while s < _686:
                mem[mem[64] + s + 228] = mem[_685 + s + 32]
                s = s + 32
                continue 
            if ceil32(_686) <= _686:
                mem[mem[64] + 68] = mem[_680 + 44 len 20]
                mem[mem[64] + 100] = mem[_680 + 64]
                mem[mem[64] + 132] = mem[_680 + 96]
                mem[mem[64] + 164] = mem[_680 + 128]
                require ext_code.size(arg3)
                call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 32, 160, mem[mem[64] + 68 len ceil32(_686) + 160]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _983 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_983] == mem[_983]
            else:
                mem[mem[64] + _686 + 228] = 0
                mem[mem[64] + 68] = mem[_680 + 44 len 20]
                mem[mem[64] + 100] = mem[_680 + 64]
                mem[mem[64] + 132] = mem[_680 + 96]
                mem[mem[64] + 164] = mem[_680 + 128]
                require ext_code.size(arg3)
                call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 32, 160, mem[mem[64] + 68 len ceil32(_686) + 160]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _984 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_984] == mem[_984]
        else:
            if 100 * _673 and 100 > -1 / 100 * _673:
                revert with 'NH{q', 17
            _683 = mem[64]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = 10000 * _673
            _688 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_688 + 32] = mem[_688 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _691 = mem[_688]
            s = 0
            while s < _691:
                mem[_683 + s + 100] = mem[_688 + s + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                call address(_675).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _683 + _691 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not mem[96]:
                        _933 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_933] = mem[(32 * idx) + 128]
                        mem[_933 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_933 + 64] = block.timestamp + 1
                        mem[_933 + 96] = _673
                        mem[_933 + 128] = 0
                        _953 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _961 = mem[_933]
                        mem[mem[64] + 36] = 160
                        _970 = mem[_961]
                        mem[mem[64] + 196] = mem[_961]
                        s = 0
                        while s < _970:
                            mem[mem[64] + s + 228] = mem[_961 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_970) <= _970:
                            mem[_953 + 68] = mem[_933 + 44 len 20]
                            mem[_953 + 100] = mem[_933 + 64]
                            mem[_953 + 132] = mem[_933 + 96]
                            mem[_953 + 164] = mem[_933 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _953 + ceil32(_970) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1211] == mem[_1211]
                        else:
                            mem[_953 + _970 + 228] = 0
                            mem[_953 + 68] = mem[_933 + 44 len 20]
                            mem[_953 + 100] = mem[_933 + 64]
                            mem[_953 + 132] = mem[_933 + 96]
                            mem[_953 + 164] = mem[_933 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _953 + ceil32(_970) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1219] == mem[_1219]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'Safe approve failed'
                        _963 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_963] = mem[(32 * idx) + 128]
                        mem[_963 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_963 + 64] = block.timestamp + 1
                        mem[_963 + 96] = _673
                        mem[_963 + 128] = 0
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _999 = mem[_963]
                        mem[mem[64] + 36] = 160
                        _1004 = mem[_999]
                        mem[mem[64] + 196] = mem[_999]
                        s = 0
                        while s < _1004:
                            mem[mem[64] + s + 228] = mem[_999 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1004) <= _1004:
                            mem[mem[64] + 68] = mem[_963 + 44 len 20]
                            mem[mem[64] + 100] = mem[_963 + 64]
                            mem[mem[64] + 132] = mem[_963 + 96]
                            mem[mem[64] + 164] = mem[_963 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1004) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1212] == mem[_1212]
                        else:
                            mem[mem[64] + _1004 + 228] = 0
                            mem[mem[64] + 68] = mem[_963 + 44 len 20]
                            mem[mem[64] + 100] = mem[_963 + 64]
                            mem[mem[64] + 132] = mem[_963 + 96]
                            mem[mem[64] + 164] = mem[_963 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1004) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1220] == mem[_1220]
                else:
                    _911 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_911] = return_data.size
                    mem[_911 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not return_data.size:
                        _935 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_935] = mem[(32 * idx) + 128]
                        mem[_935 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_935 + 64] = block.timestamp + 1
                        mem[_935 + 96] = _673
                        mem[_935 + 128] = 0
                        _955 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _962 = mem[_935]
                        mem[mem[64] + 36] = 160
                        _972 = mem[_962]
                        mem[mem[64] + 196] = mem[_962]
                        s = 0
                        while s < _972:
                            mem[mem[64] + s + 228] = mem[_962 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_972) <= _972:
                            mem[_955 + 68] = mem[_935 + 44 len 20]
                            mem[_955 + 100] = mem[_935 + 64]
                            mem[_955 + 132] = mem[_935 + 96]
                            mem[_955 + 164] = mem[_935 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _955 + ceil32(_972) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1213] == mem[_1213]
                        else:
                            mem[_955 + _972 + 228] = 0
                            mem[_955 + 68] = mem[_935 + 44 len 20]
                            mem[_955 + 100] = mem[_935 + 64]
                            mem[_955 + 132] = mem[_935 + 96]
                            mem[_955 + 164] = mem[_935 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _955 + ceil32(_972) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1221 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1221] == mem[_1221]
                    else:
                        require return_data.size >= 32
                        require mem[_911 + 32] == bool(mem[_911 + 32])
                        if not mem[_911 + 32]:
                            revert with 0, 'Safe approve failed'
                        _965 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_965] = mem[(32 * idx) + 128]
                        mem[_965 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_965 + 64] = block.timestamp + 1
                        mem[_965 + 96] = _673
                        mem[_965 + 128] = 0
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1000 = mem[_965]
                        mem[mem[64] + 36] = 160
                        _1006 = mem[_1000]
                        mem[mem[64] + 196] = mem[_1000]
                        s = 0
                        while s < _1006:
                            mem[mem[64] + s + 228] = mem[_1000 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1006) <= _1006:
                            mem[mem[64] + 68] = mem[_965 + 44 len 20]
                            mem[mem[64] + 100] = mem[_965 + 64]
                            mem[mem[64] + 132] = mem[_965 + 96]
                            mem[mem[64] + 164] = mem[_965 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1006) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1214] == mem[_1214]
                        else:
                            mem[mem[64] + _1006 + 228] = 0
                            mem[mem[64] + 68] = mem[_965 + 44 len 20]
                            mem[mem[64] + 100] = mem[_965 + 64]
                            mem[mem[64] + 132] = mem[_965 + 96]
                            mem[mem[64] + 164] = mem[_965 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1006) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1222] == mem[_1222]
            else:
                mem[_683 + _691 + 100] = 0
                call address(_675).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _683 + _691 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not mem[96]:
                        _939 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_939] = mem[(32 * idx) + 128]
                        mem[_939 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_939 + 64] = block.timestamp + 1
                        mem[_939 + 96] = _673
                        mem[_939 + 128] = 0
                        _957 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _967 = mem[_939]
                        mem[mem[64] + 36] = 160
                        _979 = mem[_967]
                        mem[mem[64] + 196] = mem[_967]
                        s = 0
                        while s < _979:
                            mem[mem[64] + s + 228] = mem[_967 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_979) <= _979:
                            mem[_957 + 68] = mem[_939 + 44 len 20]
                            mem[_957 + 100] = mem[_939 + 64]
                            mem[_957 + 132] = mem[_939 + 96]
                            mem[_957 + 164] = mem[_939 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _957 + ceil32(_979) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1215] == mem[_1215]
                        else:
                            mem[_957 + _979 + 228] = 0
                            mem[_957 + 68] = mem[_939 + 44 len 20]
                            mem[_957 + 100] = mem[_939 + 64]
                            mem[_957 + 132] = mem[_939 + 96]
                            mem[_957 + 164] = mem[_939 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _957 + ceil32(_979) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1223 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1223] == mem[_1223]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'Safe approve failed'
                        _974 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_974] = mem[(32 * idx) + 128]
                        mem[_974 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_974 + 64] = block.timestamp + 1
                        mem[_974 + 96] = _673
                        mem[_974 + 128] = 0
                        _997 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1001 = mem[_974]
                        mem[mem[64] + 36] = 160
                        _1010 = mem[_1001]
                        mem[mem[64] + 196] = mem[_1001]
                        s = 0
                        while s < _1010:
                            mem[mem[64] + s + 228] = mem[_1001 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1010) <= _1010:
                            mem[_997 + 68] = mem[_974 + 44 len 20]
                            mem[_997 + 100] = mem[_974 + 64]
                            mem[_997 + 132] = mem[_974 + 96]
                            mem[_997 + 164] = mem[_974 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _997 + ceil32(_1010) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1216] == mem[_1216]
                        else:
                            mem[_997 + _1010 + 228] = 0
                            mem[_997 + 68] = mem[_974 + 44 len 20]
                            mem[_997 + 100] = mem[_974 + 64]
                            mem[_997 + 132] = mem[_974 + 96]
                            mem[_997 + 164] = mem[_974 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _997 + ceil32(_1010) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1224] == mem[_1224]
                else:
                    _914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_914] = return_data.size
                    mem[_914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Safe approve failed'
                    if not return_data.size:
                        _941 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_941] = mem[(32 * idx) + 128]
                        mem[_941 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_941 + 64] = block.timestamp + 1
                        mem[_941 + 96] = _673
                        mem[_941 + 128] = 0
                        _959 = mem[64]
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _968 = mem[_941]
                        mem[mem[64] + 36] = 160
                        _981 = mem[_968]
                        mem[mem[64] + 196] = mem[_968]
                        s = 0
                        while s < _981:
                            mem[mem[64] + s + 228] = mem[_968 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_981) <= _981:
                            mem[_959 + 68] = mem[_941 + 44 len 20]
                            mem[_959 + 100] = mem[_941 + 64]
                            mem[_959 + 132] = mem[_941 + 96]
                            mem[_959 + 164] = mem[_941 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _959 + ceil32(_981) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1217] == mem[_1217]
                        else:
                            mem[_959 + _981 + 228] = 0
                            mem[_959 + 68] = mem[_941 + 44 len 20]
                            mem[_959 + 100] = mem[_941 + 64]
                            mem[_959 + 132] = mem[_941 + 96]
                            mem[_959 + 164] = mem[_941 + 128]
                            require ext_code.size(arg3)
                            call arg3.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _959 + ceil32(_981) + -mem[64] + 224]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1225] == mem[_1225]
                    else:
                        require return_data.size >= 32
                        require mem[_914 + 32] == bool(mem[_914 + 32])
                        if not mem[_914 + 32]:
                            revert with 0, 'Safe approve failed'
                        _976 = mem[64]
                        mem[64] = mem[64] + 160
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_976] = mem[(32 * idx) + 128]
                        mem[_976 + 32] = msg.sender
                        if block.timestamp > -2:
                            revert with 'NH{q', 17
                        mem[_976 + 64] = block.timestamp + 1
                        mem[_976 + 96] = _673
                        mem[_976 + 128] = 0
                        mem[mem[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _1002 = mem[_976]
                        mem[mem[64] + 36] = 160
                        _1012 = mem[_1002]
                        mem[mem[64] + 196] = mem[_1002]
                        s = 0
                        while s < _1012:
                            mem[mem[64] + s + 228] = mem[_1002 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1012) <= _1012:
                            mem[mem[64] + 68] = mem[_976 + 44 len 20]
                            mem[mem[64] + 100] = mem[_976 + 64]
                            mem[mem[64] + 132] = mem[_976 + 96]
                            mem[mem[64] + 164] = mem[_976 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1012) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1218] == mem[_1218]
                        else:
                            mem[mem[64] + _1012 + 228] = 0
                            mem[mem[64] + 68] = mem[_976 + 44 len 20]
                            mem[mem[64] + 100] = mem[_976 + 64]
                            mem[mem[64] + 132] = mem[_976 + 96]
                            mem[mem[64] + 164] = mem[_976 + 128]
                            require ext_code.size(arg3)
                            call arg3.exactInput(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 32, 160, mem[mem[64] + 68 len ceil32(_1012) + 160]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1226 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1226] == mem[_1226]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
