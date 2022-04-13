contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address WETHAddress;

function sub_40682152(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setWETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WETHAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recover(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenRecover#recover: Cannot recover tokens from the denylist'
    if not arg1:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_394c5afd(?) {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 98 < 97 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[36]
    t = 0
    u = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _88 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _93 = mem[_92]
        require mem[_92] == mem[_92 + 12 len 20]
        require ext_code.size(address(_88))
        staticcall address(_88).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _97 = mem[_96]
        require mem[_96] == mem[_96 + 18 len 14]
        _98 = mem[_96 + 32]
        require mem[_96 + 32] == mem[_96 + 50 len 14]
        require mem[_96 + 64] == mem[_96 + 92 len 4]
        if address(_93) != address(s):
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if u and mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] > -1 / u:
                revert with 'NH{q', 17
            if mem[_96 + 18 len 14] and cd[132] > -1 / mem[_96 + 18 len 14]:
                revert with 'NH{q', 17
            if mem[_96 + 18 len 14] * cd[132] > !(u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]):
                revert with 'NH{q', 17
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if u and mem[_96 + 50 len 14] > -1 / u:
                revert with 'NH{q', 17
            if u * mem[_96 + 50 len 14] and mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] > -1 / u * mem[_96 + 50 len 14]:
                revert with 'NH{q', 17
            if not (mem[_96 + 18 len 14] * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _93
            t = u * mem[_96 + 50 len 14] * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] / (mem[_96 + 18 len 14] * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129])
            u = u * mem[_96 + 50 len 14] * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] / (mem[_96 + 18 len 14] * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129])
            continue 
        require ext_code.size(address(_88))
        staticcall address(_88).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == mem[_104 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        if u and mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] > -1 / u:
            revert with 'NH{q', 17
        if Mask(112, 0, _98) and cd[132] > -1 / Mask(112, 0, _98):
            revert with 'NH{q', 17
        if Mask(112, 0, _98) * cd[132] > !(u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]):
            revert with 'NH{q', 17
        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        if u and Mask(112, 0, _97) > -1 / u:
            revert with 'NH{q', 17
        if u * Mask(112, 0, _97) and mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] > -1 / u * Mask(112, 0, _97):
            revert with 'NH{q', 17
        if not (Mask(112, 0, _98) * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129]):
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_104]
        t = u * Mask(112, 0, _97) * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] / (Mask(112, 0, _98) * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129])
        u = u * Mask(112, 0, _97) * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] / (Mask(112, 0, _98) * cd[132]) + (u * mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129])
        continue 
    return t
}

function sub_ff8641cd(?) {
    require calldata.size - 4 >= 256
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[228] == address(cd[228])
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[ceil32(32 * ('cd', 164).length) + 101] = msg.sender
    mem[ceil32(32 * ('cd', 164).length) + 133] = address(('cd', 132)[0])
    mem[ceil32(32 * ('cd', 164).length) + 165] = cd[4]
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 132)[0]), cd[4]
    mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = address(cd[228])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[228])
    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 129
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = ('cd', 132).length
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 129] = 0
    idx = 0
    s = cd[68]
    while idx < ('cd', 132).length:
        if idx >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97]:
            revert with 'NH{q', 50
        _222 = mem[(32 * idx) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129]
        require ext_code.size(mem[(32 * idx) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 141 len 20])
        staticcall mem[(32 * idx) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 141 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _228 = mem[_226]
        require mem[_226] == mem[_226 + 12 len 20]
        require ext_code.size(address(_222))
        staticcall address(_222).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _234 = mem[_233]
        require mem[_233] == mem[_233 + 18 len 14]
        _235 = mem[_233 + 32]
        require mem[_233 + 32] == mem[_233 + 50 len 14]
        require mem[_233 + 64] == mem[_233 + 92 len 4]
        if address(_228) != address(s):
            mem[mem[64] + 4] = address(_222)
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_222)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _243 = mem[_241]
            if mem[_241] < Mask(112, 0, _234):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _246 = mem[(32 * idx) + 128]
            if mem[_241] - Mask(112, 0, _234) and mem[(32 * idx) + 128] > -1 / mem[_241] - Mask(112, 0, _234):
                revert with 'NH{q', 17
            if Mask(112, 0, _234) and cd[196] > -1 / Mask(112, 0, _234):
                revert with 'NH{q', 17
            if Mask(112, 0, _234) * cd[196] > !((mem[_241] * mem[(32 * idx) + 128]) - (Mask(112, 0, _234) * mem[(32 * idx) + 128])):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * idx) + 128]
            if mem[_241] - Mask(112, 0, _234) and Mask(112, 0, _235) > -1 / mem[_241] - Mask(112, 0, _234):
                revert with 'NH{q', 17
            if (mem[_241] * Mask(112, 0, _235)) - (Mask(112, 0, _234) * Mask(112, 0, _235)) and mem[(32 * idx) + 128] > -1 / (mem[_241] * Mask(112, 0, _235)) - (Mask(112, 0, _234) * Mask(112, 0, _235)):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _234) * cd[196]) + (mem[_241] * mem[(32 * idx) + 128]) - (Mask(112, 0, _234) * mem[(32 * idx) + 128]):
                revert with 'NH{q', 18
            require ext_code.size(address(_222))
            staticcall address(_222).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == mem[_259 + 12 len 20]
            if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] < 1:
                revert with 'NH{q', 17
            if mem[_259 + 12 len 20] == address(s):
                if idx >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                    _267 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_267 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_267 + 36] = 0
                    mem[_267 + 68] = (_243 * Mask(112, 0, _235) * _254) - (Mask(112, 0, _234) * Mask(112, 0, _235) * _254) / (Mask(112, 0, _234) * cd[196]) + (_243 * _246) - (Mask(112, 0, _234) * _246)
                    mem[_267 + 100] = address(cd[228])
                    mem[_267 + 132] = 128
                    mem[_267 + 164] = mem[_267]
                    s = 0
                    while s < mem[_267]:
                        mem[s + _267 + 196] = mem[s + _267 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_267]) > mem[_267]:
                        mem[_267 + mem[_267] + 196] = 0
                    require ext_code.size(address(_222))
                    call address(_222).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_267]) + _267 + -mem[64] + 192]
                else:
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 'NH{q', 50
                    _273 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129]
                    _277 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_277 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_277 + 36] = 0
                    mem[_277 + 68] = (_243 * Mask(112, 0, _235) * _254) - (Mask(112, 0, _234) * Mask(112, 0, _235) * _254) / (Mask(112, 0, _234) * cd[196]) + (_243 * _246) - (Mask(112, 0, _234) * _246)
                    mem[_277 + 100] = address(_273)
                    mem[_277 + 132] = 128
                    mem[_277 + 164] = mem[_277]
                    s = 0
                    while s < mem[_277]:
                        mem[s + _277 + 196] = mem[s + _277 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_277]) > mem[_277]:
                        mem[_277 + mem[_277] + 196] = 0
                    require ext_code.size(address(_222))
                    call address(_222).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_277]) + _277 + -mem[64] + 192]
            else:
                if idx >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                    _268 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_268 + 36] = (_243 * Mask(112, 0, _235) * _254) - (Mask(112, 0, _234) * Mask(112, 0, _235) * _254) / (Mask(112, 0, _234) * cd[196]) + (_243 * _246) - (Mask(112, 0, _234) * _246)
                    mem[_268 + 68] = 0
                    mem[_268 + 100] = address(cd[228])
                    mem[_268 + 132] = 128
                    mem[_268 + 164] = mem[_268]
                    s = 0
                    while s < mem[_268]:
                        mem[s + _268 + 196] = mem[s + _268 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_268]) > mem[_268]:
                        mem[_268 + mem[_268] + 196] = 0
                    require ext_code.size(address(_222))
                    call address(_222).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args (_243 * Mask(112, 0, _235) * _254) - (Mask(112, 0, _234) * Mask(112, 0, _235) * _254) / (Mask(112, 0, _234) * cd[196]) + (_243 * _246) - (Mask(112, 0, _234) * _246), 0, address(cd[228]), 128, mem[_268], mem[_268 + 196 len ceil32(mem[_268])]
                else:
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 'NH{q', 50
                    _275 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129]
                    _278 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_278 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_278 + 36] = (_243 * Mask(112, 0, _235) * _254) - (Mask(112, 0, _234) * Mask(112, 0, _235) * _254) / (Mask(112, 0, _234) * cd[196]) + (_243 * _246) - (Mask(112, 0, _234) * _246)
                    mem[_278 + 68] = 0
                    mem[_278 + 100] = address(_275)
                    mem[_278 + 132] = 128
                    mem[_278 + 164] = mem[_278]
                    s = 0
                    while s < mem[_278]:
                        mem[s + _278 + 196] = mem[s + _278 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_278]) > mem[_278]:
                        mem[_278 + mem[_278] + 196] = 0
                    require ext_code.size(address(_222))
                    call address(_222).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_278]) + _278 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _228
            continue 
        require ext_code.size(address(_222))
        staticcall address(_222).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _244 = mem[_242]
        require mem[_242] == mem[_242 + 12 len 20]
        mem[mem[64] + 4] = address(_222)
        require ext_code.size(address(s))
        staticcall address(s).0x70a08231 with:
                gas gas_remaining wei
               args address(_222)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_249]
        if mem[_249] < Mask(112, 0, _235):
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _253 = mem[(32 * idx) + 128]
        if mem[_249] - Mask(112, 0, _235) and mem[(32 * idx) + 128] > -1 / mem[_249] - Mask(112, 0, _235):
            revert with 'NH{q', 17
        if Mask(112, 0, _235) and cd[196] > -1 / Mask(112, 0, _235):
            revert with 'NH{q', 17
        if Mask(112, 0, _235) * cd[196] > !((mem[_249] * mem[(32 * idx) + 128]) - (Mask(112, 0, _235) * mem[(32 * idx) + 128])):
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _258 = mem[(32 * idx) + 128]
        if mem[_249] - Mask(112, 0, _235) and Mask(112, 0, _234) > -1 / mem[_249] - Mask(112, 0, _235):
            revert with 'NH{q', 17
        if (mem[_249] * Mask(112, 0, _234)) - (Mask(112, 0, _235) * Mask(112, 0, _234)) and mem[(32 * idx) + 128] > -1 / (mem[_249] * Mask(112, 0, _234)) - (Mask(112, 0, _235) * Mask(112, 0, _234)):
            revert with 'NH{q', 17
        if not (Mask(112, 0, _235) * cd[196]) + (mem[_249] * mem[(32 * idx) + 128]) - (Mask(112, 0, _235) * mem[(32 * idx) + 128]):
            revert with 'NH{q', 18
        require ext_code.size(address(_222))
        staticcall address(_222).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_265] == mem[_265 + 12 len 20]
        if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] < 1:
            revert with 'NH{q', 17
        if mem[_265 + 12 len 20] == address(s):
            if idx >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                _291 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_291 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_291 + 36] = 0
                mem[_291 + 68] = (_250 * Mask(112, 0, _234) * _258) - (Mask(112, 0, _235) * Mask(112, 0, _234) * _258) / (Mask(112, 0, _235) * cd[196]) + (_250 * _253) - (Mask(112, 0, _235) * _253)
                mem[_291 + 100] = address(cd[228])
                mem[_291 + 132] = 128
                mem[_291 + 164] = mem[_291]
                s = 0
                while s < mem[_291]:
                    mem[s + _291 + 196] = mem[s + _291 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_291]) > mem[_291]:
                    mem[_291 + mem[_291] + 196] = 0
                require ext_code.size(address(_222))
                call address(_222).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_291]) + _291 + -mem[64] + 192]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97]:
                    revert with 'NH{q', 50
                _299 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129]
                _303 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_303 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_303 + 36] = 0
                mem[_303 + 68] = (_250 * Mask(112, 0, _234) * _258) - (Mask(112, 0, _235) * Mask(112, 0, _234) * _258) / (Mask(112, 0, _235) * cd[196]) + (_250 * _253) - (Mask(112, 0, _235) * _253)
                mem[_303 + 100] = address(_299)
                mem[_303 + 132] = 128
                mem[_303 + 164] = mem[_303]
                s = 0
                while s < mem[_303]:
                    mem[s + _303 + 196] = mem[s + _303 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_303]) > mem[_303]:
                    mem[_303 + mem[_303] + 196] = 0
                require ext_code.size(address(_222))
                call address(_222).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_303]) + _303 + -mem[64] + 192]
        else:
            if idx >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                _292 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_292 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_292 + 36] = (_250 * Mask(112, 0, _234) * _258) - (Mask(112, 0, _235) * Mask(112, 0, _234) * _258) / (Mask(112, 0, _235) * cd[196]) + (_250 * _253) - (Mask(112, 0, _235) * _253)
                mem[_292 + 68] = 0
                mem[_292 + 100] = address(cd[228])
                mem[_292 + 132] = 128
                mem[_292 + 164] = mem[_292]
                s = 0
                while s < mem[_292]:
                    mem[s + _292 + 196] = mem[s + _292 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_292]) > mem[_292]:
                    mem[_292 + mem[_292] + 196] = 0
                require ext_code.size(address(_222))
                call address(_222).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (_250 * Mask(112, 0, _234) * _258) - (Mask(112, 0, _235) * Mask(112, 0, _234) * _258) / (Mask(112, 0, _235) * cd[196]) + (_250 * _253) - (Mask(112, 0, _235) * _253), 0, address(cd[228]), 128, mem[_292], mem[_292 + 196 len ceil32(mem[_292])]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97]:
                    revert with 'NH{q', 50
                _301 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129]
                _304 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_304 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_304 + 36] = (_250 * Mask(112, 0, _234) * _258) - (Mask(112, 0, _235) * Mask(112, 0, _234) * _258) / (Mask(112, 0, _235) * cd[196]) + (_250 * _253) - (Mask(112, 0, _235) * _253)
                mem[_304 + 68] = 0
                mem[_304 + 100] = address(_301)
                mem[_304 + 132] = 128
                mem[_304 + 164] = mem[_304]
                s = 0
                while s < mem[_304]:
                    mem[s + _304 + 196] = mem[s + _304 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_304]) > mem[_304]:
                    mem[_304 + mem[_304] + 196] = 0
                require ext_code.size(address(_222))
                call address(_222).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_304]) + _304 + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _244
        continue 
    mem[mem[64] + 4] = address(cd[228])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[228])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _225 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_225] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_225] - ext_call.return_data[0] < cd[36]:
        revert with 0, 'Router: INSUFFICIENT_OUTPUT_AMOUNT'
}

function sub_44b38f2b(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == address(cd[164])
    mem[ceil32(32 * ('cd', 100).length) + 101] = address(cd[164])
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[164])
    mem[ceil32(32 * ('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WETHAddress)
    call WETHAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = address(('cd', 68)[0])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = msg.value
    require ext_code.size(WETHAddress)
    call WETHAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), msg.value
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    mem[64] = (32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = ('cd', 68).length
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + 129] = 0
    idx = 0
    s = WETHAddress
    while idx < ('cd', 68).length:
        if idx >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97]:
            revert with 'NH{q', 50
        _226 = mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129]
        require ext_code.size(mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 141 len 20])
        staticcall mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 141 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _232 = mem[_230]
        require mem[_230] == mem[_230 + 12 len 20]
        require ext_code.size(address(_226))
        staticcall address(_226).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _237 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _238 = mem[_237]
        require mem[_237] == mem[_237 + 18 len 14]
        _239 = mem[_237 + 32]
        require mem[_237 + 32] == mem[_237 + 50 len 14]
        require mem[_237 + 64] == mem[_237 + 92 len 4]
        if address(_232) != address(s):
            mem[mem[64] + 4] = address(_226)
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_226)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _247 = mem[_245]
            if mem[_245] < Mask(112, 0, _238):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _250 = mem[(32 * idx) + 128]
            if mem[_245] - Mask(112, 0, _238) and mem[(32 * idx) + 128] > -1 / mem[_245] - Mask(112, 0, _238):
                revert with 'NH{q', 17
            if Mask(112, 0, _238) and cd[132] > -1 / Mask(112, 0, _238):
                revert with 'NH{q', 17
            if Mask(112, 0, _238) * cd[132] > !((mem[_245] * mem[(32 * idx) + 128]) - (Mask(112, 0, _238) * mem[(32 * idx) + 128])):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _258 = mem[(32 * idx) + 128]
            if mem[_245] - Mask(112, 0, _238) and Mask(112, 0, _239) > -1 / mem[_245] - Mask(112, 0, _238):
                revert with 'NH{q', 17
            if (mem[_245] * Mask(112, 0, _239)) - (Mask(112, 0, _238) * Mask(112, 0, _239)) and mem[(32 * idx) + 128] > -1 / (mem[_245] * Mask(112, 0, _239)) - (Mask(112, 0, _238) * Mask(112, 0, _239)):
                revert with 'NH{q', 17
            if not (Mask(112, 0, _238) * cd[132]) + (mem[_245] * mem[(32 * idx) + 128]) - (Mask(112, 0, _238) * mem[(32 * idx) + 128]):
                revert with 'NH{q', 18
            require ext_code.size(address(_226))
            staticcall address(_226).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_263] == mem[_263 + 12 len 20]
            if mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] < 1:
                revert with 'NH{q', 17
            if mem[_263 + 12 len 20] == address(s):
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                    _271 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_271 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_271 + 36] = 0
                    mem[_271 + 68] = (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250)
                    mem[_271 + 100] = address(cd[164])
                    mem[_271 + 132] = 128
                    mem[_271 + 164] = mem[_271]
                    s = 0
                    while s < mem[_271]:
                        mem[s + _271 + 196] = mem[s + _271 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_271]) > mem[_271]:
                        mem[_271 + mem[_271] + 196] = 0
                    require ext_code.size(address(_226))
                    call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250), address(cd[164]), 128, mem[_271], mem[_271 + 196 len ceil32(mem[_271])]
                else:
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 'NH{q', 50
                    _277 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129]
                    _281 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_281 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_281 + 36] = 0
                    mem[_281 + 68] = (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250)
                    mem[_281 + 100] = address(_277)
                    mem[_281 + 132] = 128
                    mem[_281 + 164] = mem[_281]
                    s = 0
                    while s < mem[_281]:
                        mem[s + _281 + 196] = mem[s + _281 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_281]) > mem[_281]:
                        mem[_281 + mem[_281] + 196] = 0
                    require ext_code.size(address(_226))
                    call address(_226).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_281]) + _281 + -mem[64] + 192]
            else:
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                    _272 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_272 + 36] = (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250)
                    mem[_272 + 68] = 0
                    mem[_272 + 100] = address(cd[164])
                    mem[_272 + 132] = 128
                    mem[_272 + 164] = mem[_272]
                    s = 0
                    while s < mem[_272]:
                        mem[s + _272 + 196] = mem[s + _272 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_272]) > mem[_272]:
                        mem[_272 + mem[_272] + 196] = 0
                    require ext_code.size(address(_226))
                    call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250), 0, address(cd[164]), 128, mem[_272], mem[_272 + 196 len ceil32(mem[_272])]
                else:
                    if 1 > !idx:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 'NH{q', 50
                    _279 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129]
                    _282 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_282 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_282 + 36] = (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250)
                    mem[_282 + 68] = 0
                    mem[_282 + 100] = address(_279)
                    mem[_282 + 132] = 128
                    mem[_282 + 164] = mem[_282]
                    s = 0
                    while s < mem[_282]:
                        mem[s + _282 + 196] = mem[s + _282 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_282]) > mem[_282]:
                        mem[_282 + mem[_282] + 196] = 0
                    require ext_code.size(address(_226))
                    call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args (_247 * Mask(112, 0, _239) * _258) - (Mask(112, 0, _238) * Mask(112, 0, _239) * _258) / (Mask(112, 0, _238) * cd[132]) + (_247 * _250) - (Mask(112, 0, _238) * _250), 0, address(_279), 128, mem[_282], mem[_282 + 196 len ceil32(mem[_282])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _232
            continue 
        require ext_code.size(address(_226))
        staticcall address(_226).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _248 = mem[_246]
        require mem[_246] == mem[_246 + 12 len 20]
        mem[mem[64] + 4] = address(_226)
        require ext_code.size(address(s))
        staticcall address(s).0x70a08231 with:
                gas gas_remaining wei
               args address(_226)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _254 = mem[_253]
        if mem[_253] < Mask(112, 0, _239):
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _257 = mem[(32 * idx) + 128]
        if mem[_253] - Mask(112, 0, _239) and mem[(32 * idx) + 128] > -1 / mem[_253] - Mask(112, 0, _239):
            revert with 'NH{q', 17
        if Mask(112, 0, _239) and cd[132] > -1 / Mask(112, 0, _239):
            revert with 'NH{q', 17
        if Mask(112, 0, _239) * cd[132] > !((mem[_253] * mem[(32 * idx) + 128]) - (Mask(112, 0, _239) * mem[(32 * idx) + 128])):
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _262 = mem[(32 * idx) + 128]
        if mem[_253] - Mask(112, 0, _239) and Mask(112, 0, _238) > -1 / mem[_253] - Mask(112, 0, _239):
            revert with 'NH{q', 17
        if (mem[_253] * Mask(112, 0, _238)) - (Mask(112, 0, _239) * Mask(112, 0, _238)) and mem[(32 * idx) + 128] > -1 / (mem[_253] * Mask(112, 0, _238)) - (Mask(112, 0, _239) * Mask(112, 0, _238)):
            revert with 'NH{q', 17
        if not (Mask(112, 0, _239) * cd[132]) + (mem[_253] * mem[(32 * idx) + 128]) - (Mask(112, 0, _239) * mem[(32 * idx) + 128]):
            revert with 'NH{q', 18
        require ext_code.size(address(_226))
        staticcall address(_226).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _269 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_269] == mem[_269 + 12 len 20]
        if mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] < 1:
            revert with 'NH{q', 17
        if mem[_269 + 12 len 20] == address(s):
            if idx >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                _295 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_295 + 36] = 0
                mem[_295 + 68] = (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257)
                mem[_295 + 100] = address(cd[164])
                mem[_295 + 132] = 128
                mem[_295 + 164] = mem[_295]
                s = 0
                while s < mem[_295]:
                    mem[s + _295 + 196] = mem[s + _295 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_295]) > mem[_295]:
                    mem[_295 + mem[_295] + 196] = 0
                require ext_code.size(address(_226))
                call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257), address(cd[164]), 128, mem[_295], mem[_295 + 196 len ceil32(mem[_295])]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97]:
                    revert with 'NH{q', 50
                _303 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129]
                _307 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_307 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_307 + 36] = 0
                mem[_307 + 68] = (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257)
                mem[_307 + 100] = address(_303)
                mem[_307 + 132] = 128
                mem[_307 + 164] = mem[_307]
                s = 0
                while s < mem[_307]:
                    mem[s + _307 + 196] = mem[s + _307 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_307]) > mem[_307]:
                    mem[_307 + mem[_307] + 196] = 0
                require ext_code.size(address(_226))
                call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257), address(_303), 128, mem[_307], mem[_307 + 196 len ceil32(mem[_307])]
        else:
            if idx >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] - 1:
                _296 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_296 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_296 + 36] = (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257)
                mem[_296 + 68] = 0
                mem[_296 + 100] = address(cd[164])
                mem[_296 + 132] = 128
                mem[_296 + 164] = mem[_296]
                s = 0
                while s < mem[_296]:
                    mem[s + _296 + 196] = mem[s + _296 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_296]) > mem[_296]:
                    mem[_296 + mem[_296] + 196] = 0
                require ext_code.size(address(_226))
                call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257), 0, address(cd[164]), 128, mem[_296], mem[_296 + 196 len ceil32(mem[_296])]
            else:
                if 1 > !idx:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97]:
                    revert with 'NH{q', 50
                _305 = mem[(32 * idx + 1) + ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129]
                _308 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_308 + 36] = (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257)
                mem[_308 + 68] = 0
                mem[_308 + 100] = address(_305)
                mem[_308 + 132] = 128
                mem[_308 + 164] = mem[_308]
                s = 0
                while s < mem[_308]:
                    mem[s + _308 + 196] = mem[s + _308 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_308]) > mem[_308]:
                    mem[_308 + mem[_308] + 196] = 0
                require ext_code.size(address(_226))
                call address(_226).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (_254 * Mask(112, 0, _238) * _262) - (Mask(112, 0, _239) * Mask(112, 0, _238) * _262) / (Mask(112, 0, _239) * cd[132]) + (_254 * _257) - (Mask(112, 0, _239) * _257), 0, address(_305), 128, mem[_308], mem[_308 + 196 len ceil32(mem[_308])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _248
        continue 
    mem[mem[64] + 4] = address(cd[164])
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[164])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_229] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_229] - ext_call.return_data[0] < cd[4]:
        revert with 0, 'Router: INSUFFICIENT_OUTPUT_AMOUNT'
}



}
