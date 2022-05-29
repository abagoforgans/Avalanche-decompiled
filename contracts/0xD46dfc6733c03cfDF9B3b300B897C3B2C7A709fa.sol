contract main {




// =====================  Runtime code  =====================


#
#  - sub_de53568b(?)
#
address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 sub_b06ed832;
uint256 sub_3fe0a77c;
address USDAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address WETHAddress;

function USD() payable {
    return USDAddress
}

function sub_3fe0a77c(?) payable {
    return sub_3fe0a77c
}

function isEnabled() payable {
    return bool(uint8(stor8.field_160))
}

function WETH() payable {
    return WETHAddress
}

function sub_b06ed832(?) payable {
    return sub_b06ed832
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function sub_132b705a(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    sub_b06ed832 = arg1
}

function sub_51a7a314(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    sub_3fe0a77c = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor3 = arg1
}

function setWETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    WETHAddress = arg1
}

function setDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor2 = arg1
}

function sub_f59f0aca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor4 = address(arg1)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_dbc4d32d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    USDAddress = address(arg1)
}

function setIsEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function Sweep() payable {
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deactivate() payable {
    require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
    delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0x4c60db9c with:
         gas gas_remaining wei
        args 9, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ed7dd44e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
    delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0x732a2ccf with:
         gas gas_remaining wei
        args 9, address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function activate() payable {
    require ext_code.size(stor2)
    staticcall stor2.0x8e424175 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'You have not approved auto-compounding yet!'
    require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
    delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0xbc2b405c with:
         gas gas_remaining wei
        args 9, msg.sender, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferForeignToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_05ce4013(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    mem[128] = WETHAddress
    mem[160] = USDAddress
    mem[196] = address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x28fd3198 with:
            gas gas_remaining wei
           args address(arg1)
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (ext_call.return_data[0] > 0)
    mem[ceil32(return_data.size) + 196] = address(arg1)
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x8e424175 with:
            gas gas_remaining wei
           args address(arg1), this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = address(arg1)
    require ext_code.size(stor2)
    staticcall stor2.0x28fd3198 with:
            gas gas_remaining wei
           args address(arg1)
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    staticcall stor3.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _42 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    _43 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _43
    require _42 + (32 * _43) + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _43)] = mem[(4 * ceil32(return_data.size)) + _42 + 224 len ceil32(32 * _43)]
    if 1 >= _43:
        revert with 0, 50
    if mem[(6 * ceil32(return_data.size)) + 256] <= sub_b06ed832:
        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 256] > sub_b06ed832
    else:
        mem[mem[64] + 4] = 9
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
        delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0x732a2ccf with:
             gas gas_remaining wei
            args 9, address(arg1)
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp < mem[_63]:
            revert with 0, 17
        mem[mem[64]] = block.timestamp - mem[_63] > sub_3fe0a77c
    return memory
      from mem[64]
       len 32
}

function sub_378eb167(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, '!AUTHORIZED'
    if not uint8(stor8.field_160):
        revert with 0, 'Compounding is not enabled'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _140 = mem[(32 * idx) + 128]
        _141 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_141]:
            revert with 0, 50
        mem[_141 + 32] = WETHAddress
        if 1 >= mem[_141]:
            revert with 0, 50
        mem[_141 + 64] = USDAddress
        mem[_141 + 100] = address(_140)
        require ext_code.size(stor2)
        staticcall stor2.0x28fd3198 with:
                gas gas_remaining wei
               args address(_140)
        mem[_141 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _141 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            mem[_141 + ceil32(return_data.size) + 100] = address(_140)
            mem[_141 + ceil32(return_data.size) + 132] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x8e424175 with:
                    gas gas_remaining wei
                   args address(_140), this.address
            mem[_141 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _141 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                mem[_141 + (2 * ceil32(return_data.size)) + 100] = address(_140)
                require ext_code.size(stor2)
                staticcall stor2.0x28fd3198 with:
                        gas gas_remaining wei
                       args address(_140)
                mem[_141 + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _141 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[_141 + (4 * ceil32(return_data.size)) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_141 + (4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[_141 + (4 * ceil32(return_data.size)) + 132] = 64
                mem[_141 + (4 * ceil32(return_data.size)) + 164] = mem[_141]
                s = 0
                t = _141 + 32
                u = _141 + (4 * ceil32(return_data.size)) + 196
                while s < mem[_141]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor3)
                staticcall stor3.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _141 + (4 * ceil32(return_data.size)) + (32 * mem[_141]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _204 = mem[_203]
                require mem[_203] <= test266151307()
                require _203 + return_data.size > _203 + mem[_203] + 31
                _205 = mem[_203 + mem[_203]]
                if mem[_203 + mem[_203]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_203 + mem[_203]]) + 1 < 0 or _203 + ceil32(return_data.size) + ceil32(32 * mem[_203 + mem[_203]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _203 + ceil32(return_data.size) + ceil32(32 * mem[_203 + mem[_203]]) + 1
                mem[_203 + ceil32(return_data.size)] = _205
                require _204 + (32 * _205) + 32 <= return_data.size
                t = _203 + ceil32(return_data.size) + 32
                s = _203 + _204 + 32
                while s < _203 + _204 + (32 * _205) + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _205:
                    revert with 0, 50
                if mem[_203 + ceil32(return_data.size) + 64] > sub_b06ed832:
                    mem[mem[64] + 4] = 9
                    mem[mem[64] + 36] = address(_140)
                    require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
                    delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0x732a2ccf with:
                         gas gas_remaining wei
                        args 9, address(_140)
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.timestamp < mem[_249]:
                        revert with 0, 17
                    if block.timestamp - mem[_249] > sub_3fe0a77c:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _252 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(stor2)
                        staticcall stor2.0x28fd3198 with:
                                gas gas_remaining wei
                               args address(_252)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _256 = mem[_255]
                        if idx >= mem[96]:
                            revert with 0, 50
                        _258 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_258)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _262 = mem[_261]
                        if idx >= mem[96]:
                            revert with 0, 50
                        _264 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xbcd259a800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_264)
                        mem[mem[64] + 36] = stor4
                        require ext_code.size(stor2)
                        call stor2.0xbcd259a8 with:
                             gas gas_remaining wei
                            args address(_264), stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        _268 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(_268)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _272 = mem[_271]
                        if idx >= mem[96]:
                            revert with 0, 50
                        _274 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xbc2b405c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 9
                        mem[mem[64] + 36] = address(_274)
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(0x61d64f33e0fe8e069f73dc51cbd848183cb92183)
                        delegate 0x61d64f33e0fe8e069f73dc51cbd848183cb92183.0xbc2b405c with:
                             gas gas_remaining wei
                            args 9, address(_274), block.timestamp
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 0, 50
                        _278 = mem[(32 * idx) + 128]
                        if _272 < _262:
                            revert with 0, 17
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _256
                        mem[mem[64] + 64] = _272 - _262
                        emit 0x1c349721: block.timestamp, _256, _272 - _262, address(_278)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
