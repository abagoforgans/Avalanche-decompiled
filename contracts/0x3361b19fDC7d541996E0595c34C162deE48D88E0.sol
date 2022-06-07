contract main {




// =====================  Runtime code  =====================


#
#  - sub_65e00987(?)
#
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function sub_55528e8c(?) {
    require bool(stor1[address(msg.sender)]) == 1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_491fd405(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require bool(stor1[address(msg.sender)]) == 1
    mem[196 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[196 len 28]
    call address(arg1).mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not ext_call.success:
        revert with 0, 'failed to approve the coin'
}

function getPrice(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[132] = 0, mem[132 len 28]
    mem[136] = 0
    call arg1.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Failed to get reserves'
        _54 = 0, mem[132 len 4], 0
        if arg2 != 1:
            if 0, mem[132 len 4], 0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not 0, mem[168 len 24]:
                revert with 'NH{q', 18
            if arg3 < 10^18 * 0, mem[132 len 4], 0 / 0, mem[168 len 24]:
                revert with 'NH{q', 17
            if arg3 - (10^18 * 0, mem[132 len 4], 0 / 0, mem[168 len 24]) and 0, mem[168 len 24] > -1 / arg3 - (10^18 * 0, mem[132 len 4], 0 / 0, mem[168 len 24]):
                revert with 'NH{q', 17
            mem[132] = 10^18 * 0, mem[132 len 4], 0 / 0, mem[168 len 24]
            return mem[132], (arg3 * 0, mem[168 len 24]) - (10^18 * _54 / 0, mem[168 len 24] * 0, mem[168 len 24]) / 2 * 10^18
        if 0, mem[168 len 24] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not 0, mem[132 len 4], 0:
            revert with 'NH{q', 18
        if arg3 < 10^18 * 0, mem[168 len 24] / 0, mem[132 len 4], 0:
            revert with 'NH{q', 17
        if arg3 - (10^18 * 0, mem[168 len 24] / 0, mem[132 len 4], 0) and 0, mem[132 len 4], 0 > -1 / arg3 - (10^18 * 0, mem[168 len 24] / 0, mem[132 len 4], 0):
            revert with 'NH{q', 17
        mem[132] = 10^18 * 0, mem[168 len 24] / 0, mem[132 len 4], 0
        return mem[132], (arg3 * _54) - (10^18 * 0, mem[168 len 24] / _54 * _54) / 2 * 10^18
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Failed to get reserves'
    _57 = mem[164]
    _58 = mem[196]
    if arg2 != 1:
        if mem[164] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not mem[196]:
            revert with 'NH{q', 18
        if arg3 < 10^18 * mem[164] / mem[196]:
            revert with 'NH{q', 17
        if arg3 - (10^18 * mem[164] / mem[196]) and mem[196] > -1 / arg3 - (10^18 * mem[164] / mem[196]):
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 133] = 10^18 * mem[164] / mem[196]
        return mem[ceil32(return_data.size) + 133], (arg3 * _58) - (10^18 * _57 / _58 * _58) / 2 * 10^18
    if mem[196] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not mem[164]:
        revert with 'NH{q', 18
    if arg3 < 10^18 * mem[196] / mem[164]:
        revert with 'NH{q', 17
    if arg3 - (10^18 * mem[196] / mem[164]) and mem[164] > -1 / arg3 - (10^18 * mem[196] / mem[164]):
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 133] = 10^18 * mem[196] / mem[164]
    return mem[ceil32(return_data.size) + 133], (arg3 * _57) - (10^18 * _58 / _57 * _57) / 2 * 10^18
}

function sub_42290bd0(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _187 = mem[128]
    mem[floor32(('cd', 100).length) + 133] = this.address
    mem[floor32(('cd', 100).length) + 97] = 36
    mem[64] = floor32(('cd', 100).length) + 165
    mem[floor32(('cd', 100).length) + 129 len 4] = unknown_0x70a08231(?????)
    mem[floor32(('cd', 100).length) + 165 len 64] = 0, address(this.address), mem[floor32(('cd', 100).length) + 165 len 28]
    mem[floor32(('cd', 100).length) + 201] = 0
    call address(_187).mem[floor32(('cd', 100).length) + 165 len 4] with:
         gas gas_remaining wei
        args mem[floor32(('cd', 100).length) + 169]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'can't check balance'
        if cd[36] <= mem[128]:
            mem[floor32(('cd', 100).length) + 201] = cd[36]
            mem[floor32(('cd', 100).length) + 233] = cd[68]
            mem[floor32(('cd', 100).length) + 265] = 160
            mem[floor32(('cd', 100).length) + 361] = ('cd', 100).length
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + 297] = this.address
            mem[floor32(('cd', 100).length) + 329] = 3 * 10^9
            _567 = mem[64]
            mem[mem[64]] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + -mem[64] + 361
            mem[64] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393
            mem[_567 + 32 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _583 = mem[_567]
            mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393 len ceil32(mem[_567])] = mem[_567 + 32 len ceil32(mem[_567])]
            if ceil32(_583) > _583:
                mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + _583 + 393] = 0
            call address(cd[4]).mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 397 len _583 - 4]
        else:
            mem[floor32(('cd', 100).length) + 201] = mem[128]
            mem[floor32(('cd', 100).length) + 233] = cd[68]
            mem[floor32(('cd', 100).length) + 265] = 160
            mem[floor32(('cd', 100).length) + 361] = ('cd', 100).length
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + 297] = this.address
            mem[floor32(('cd', 100).length) + 329] = 3 * 10^9
            _570 = mem[64]
            mem[mem[64]] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + -mem[64] + 361
            mem[64] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393
            mem[_570 + 32 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _584 = mem[_570]
            mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393 len ceil32(mem[_570])] = mem[_570 + 32 len ceil32(mem[_570])]
            if ceil32(_584) > _584:
                mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + _584 + 393] = 0
            call address(cd[4]).mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 393 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 397 len _584 - 4]
        if not ext_call.success:
            revert with 0, 'execution failed'
    else:
        mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 166
        mem[floor32(('cd', 100).length) + 165] = return_data.size
        mem[floor32(('cd', 100).length) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'can't check balance'
        if cd[36] <= mem[floor32(('cd', 100).length) + 197 len 4], 0:
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 202] = cd[36]
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 234] = cd[68]
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 266] = 160
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 362] = ('cd', 100).length
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 298] = this.address
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 330] = 3 * 10^9
            _573 = mem[64]
            mem[mem[64]] = floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + -mem[64] + 362
            mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394
            mem[_573 + 32 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _585 = mem[_573]
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394 len ceil32(mem[_573])] = mem[_573 + 32 len ceil32(mem[_573])]
            if ceil32(_585) > _585:
                mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + _585 + 394] = 0
            call address(cd[4]).mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 398 len _585 - 4]
        else:
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 202] = mem[floor32(('cd', 100).length) + 197 len 4], 0
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 234] = cd[68]
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 266] = 160
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 362] = ('cd', 100).length
            idx = 0
            s = 128
            t = mem[64] + 228
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 298] = this.address
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 330] = 3 * 10^9
            _576 = mem[64]
            mem[mem[64]] = floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + -mem[64] + 362
            mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394
            mem[_576 + 32 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            _586 = mem[_576]
            mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394 len ceil32(mem[_576])] = mem[_576 + 32 len ceil32(mem[_576])]
            if ceil32(_586) > _586:
                mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + _586 + 394] = 0
            call address(cd[4]).mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 394 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(('cd', 100).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 398 len _586 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'execution failed'
        else:
            if not ext_call.success:
                revert with 0, 
                            'execution failed',
                            mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 495 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    ('bool', 'ext_call.success')
}



}
