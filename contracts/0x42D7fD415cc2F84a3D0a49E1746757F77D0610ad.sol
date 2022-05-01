contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor2;

function owner() {
    return owner
}

function contractCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function close() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function addCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = 1
}

function removeCaller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[address(arg1)] = 0
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor2[address(msg.sender)]:
            revert with 0, 'Not an allowed caller.'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_29d23904(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] == cd[100]
    if msg.sender == owner:
        if block.timestamp > -1201:
            revert with 'NH{q', 17
        mem[floor32(('cd', 68).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 68).length) + 101] = cd[100]
        mem[floor32(('cd', 68).length) + 133] = 128
        mem[floor32(('cd', 68).length) + 229] = ('cd', 68).length
        idx = 0
        s = 128
        t = floor32(('cd', 68).length) + 261
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 68).length) + 165] = owner
        mem[floor32(('cd', 68).length) + 197] = block.timestamp + 1200
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[36] wei
             gas gas_remaining wei
            args cd[100], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 261 len 32 * ('cd', 68).length]), owner, block.timestamp + 1200
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _50 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
        _52 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        require _50 + (32 * _52) + 32 <= return_data.size
        idx = floor32(('cd', 68).length) + _50 + 129
        s = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
        while idx < floor32(('cd', 68).length) + _50 + (32 * _52) + 129:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 2
        if not stor2[address(msg.sender)]:
            revert with 0, 'Not an allowed caller.'
        if block.timestamp > -1201:
            revert with 'NH{q', 17
        mem[floor32(('cd', 68).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 68).length) + 101] = cd[100]
        mem[floor32(('cd', 68).length) + 133] = 128
        mem[floor32(('cd', 68).length) + 229] = ('cd', 68).length
        idx = 0
        s = 128
        t = floor32(('cd', 68).length) + 261
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 68).length) + 165] = owner
        mem[floor32(('cd', 68).length) + 197] = block.timestamp + 1200
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[36] wei
             gas gas_remaining wei
            args cd[100], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 261 len 32 * ('cd', 68).length]), owner, block.timestamp + 1200
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _51 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
        require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
        _53 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
        require _51 + (32 * _53) + 32 <= return_data.size
        idx = floor32(('cd', 68).length) + _51 + 129
        s = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
        while idx < floor32(('cd', 68).length) + _51 + (32 * _53) + 129:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}

function sub_538bec31(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] == cd[100]
    if msg.sender == owner:
        if block.timestamp > -1201:
            revert with 'NH{q', 17
        mem[floor32(('cd', 68).length) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 68).length) + 101] = cd[36]
        mem[floor32(('cd', 68).length) + 133] = cd[100]
        mem[floor32(('cd', 68).length) + 165] = 160
        mem[floor32(('cd', 68).length) + 261] = ('cd', 68).length
        idx = 0
        s = 128
        t = floor32(('cd', 68).length) + 293
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 68).length) + 197] = owner
        mem[floor32(('cd', 68).length) + 229] = block.timestamp + 1200
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[100], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 293 len 32 * ('cd', 68).length]), owner, block.timestamp + 1200
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _50 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
        _52 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        require _50 + (32 * _52) + 32 <= return_data.size
        idx = floor32(('cd', 68).length) + _50 + 129
        s = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
        while idx < floor32(('cd', 68).length) + _50 + (32 * _52) + 129:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 2
        if not stor2[address(msg.sender)]:
            revert with 0, 'Not an allowed caller.'
        if block.timestamp > -1201:
            revert with 'NH{q', 17
        mem[floor32(('cd', 68).length) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 68).length) + 101] = cd[36]
        mem[floor32(('cd', 68).length) + 133] = cd[100]
        mem[floor32(('cd', 68).length) + 165] = 160
        mem[floor32(('cd', 68).length) + 261] = ('cd', 68).length
        idx = 0
        s = 128
        t = floor32(('cd', 68).length) + 293
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 68).length) + 197] = owner
        mem[floor32(('cd', 68).length) + 229] = block.timestamp + 1200
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[100], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 293 len 32 * ('cd', 68).length]), owner, block.timestamp + 1200
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _51 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
        _53 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
        require _51 + (32 * _53) + 32 <= return_data.size
        idx = floor32(('cd', 68).length) + _51 + 129
        s = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
        while idx < floor32(('cd', 68).length) + _51 + (32 * _53) + 129:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}



}
