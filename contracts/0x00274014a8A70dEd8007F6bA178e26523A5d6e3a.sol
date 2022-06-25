contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;

function _fallback() payable {
    revert
}

function setOwner(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Only owner can call this function.'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount not enough'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4567425c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if not stor1[address(msg.sender)]:
        revert with 0, 'not whitelist'
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 101] = 0
    mem[floor32(('cd', 4).length) + 133] = 128
    mem[floor32(('cd', 4).length) + 229] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 261
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 165] = this.address
    mem[floor32(('cd', 4).length) + 197] = block.timestamp + 120
    call stor2.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 120, ('cd', 4).length, mem[floor32(('cd', 4).length) + 261 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 4).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _29 = mem[floor32(('cd', 4).length) + 97 len 4], 0
    require mem[floor32(('cd', 4).length) + 97 len 4], 0 <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 128 < floor32(('cd', 4).length) + return_data.size + 97
    _30 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97]) + 98
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], 0 + 97]
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = floor32(('cd', 4).length) + _29 + 129
    s = floor32(('cd', 4).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 4).length) + _29 + (32 * _30) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
}

function emergencySell(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not stor1[address(msg.sender)]:
        revert with 0, 'not whitelist'
    mem[floor32(arg2.length) + 101] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[floor32(arg2.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[floor32(arg2.length) + ceil32(return_data.size) + 101] = this.address
    mem[floor32(arg2.length) + ceil32(return_data.size) + 133] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(arg2.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 97] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 133] = 0
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = arg2.length
        idx = 0
        s = 128
        t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293
        while idx < arg2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 120, arg2.length, mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293 len 32 * arg2.length]
    else:
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 101] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 133] = -1
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 97] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 133] = 0
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261] = arg2.length
        idx = 0
        s = 128
        t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293
        while idx < arg2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 120, arg2.length, mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
