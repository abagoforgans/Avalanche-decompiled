contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;
uint8 stor3;

function arm() {
    if stor0 != msg.sender:
        revert with 0, 'oo'
    stor3 = 1
}

function _fallback() payable {
    if stor0 != msg.sender:
        revert with 0, 'oo'
}

function withdrawAll() {
    if stor0 != msg.sender:
        revert with 0, 'oo'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'oo'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'oo'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function addWallets(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'oo'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a3a00072(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    if stor0 != msg.sender:
        revert with 0, 'oo'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if eth.balance(mem[(32 * idx) + 128]) >= cd[36]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if cd[36] < eth.balance(mem[(32 * idx) + 128]):
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value cd[36] - eth.balance(mem[(32 * idx) + 128]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -cd[36] + eth.balance(mem[(32 * idx) + 128]) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[36] - eth.balance(mem[(32 * idx) + 128])
        continue 
    if s < msg.value:
        if msg.value < s:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_354f4d56(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == bool(cd[132])
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[address(msg.sender)]) == 1:
        if bool(stor3) != 1:
            revert with 0, 'e2'
        if ('cd', 36).length < 2:
            revert with 0, 'e3'
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if mem[140 len 20] != stor1:
            revert with 0, 'e4'
        if block.timestamp > -31:
            revert with 'NH{q', 17
        if not cd[132]:
            mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[100]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = stor0
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[68] wei
                 gas gas_remaining wei
                args cd[100], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), stor0, block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _200 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _204 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            require _200 + (32 * _204) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + _200 + 129
            t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < _204:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = stor0
            require ext_code.size(mem[(32 * ('cd', 36).length - 1) + 140 len 20])
            staticcall mem[(32 * ('cd', 36).length - 1) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == mem[_276]
            if mem[_276] < cd[100]:
                revert with 0, 'e5'
        else:
            mem[floor32(('cd', 36).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[100]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = stor0
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[68] wei
                 gas gas_remaining wei
                args cd[100], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), stor0, block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _201 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _205 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            require _201 + (32 * _205) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + _201 + 129
            t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < _205:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = stor0
            require ext_code.size(mem[(32 * ('cd', 36).length - 1) + 140 len 20])
            staticcall mem[(32 * ('cd', 36).length - 1) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_277] == mem[_277]
            if mem[_277] < cd[100]:
                revert with 0, 'e5'
    else:
        if stor0 != msg.sender:
            revert with 0, 'e1'
        if bool(stor3) != 1:
            revert with 0, 'e2'
        if ('cd', 36).length < 2:
            revert with 0, 'e3'
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if mem[140 len 20] != stor1:
            revert with 0, 'e4'
        if block.timestamp > -31:
            revert with 'NH{q', 17
        if not cd[132]:
            mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[100]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = stor0
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[68] wei
                 gas gas_remaining wei
                args cd[100], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), stor0, block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _202 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _206 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            require _202 + (32 * _206) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + _202 + 129
            t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < _206:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = stor0
            require ext_code.size(mem[(32 * ('cd', 36).length - 1) + 140 len 20])
            staticcall mem[(32 * ('cd', 36).length - 1) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_278] == mem[_278]
            if mem[_278] < cd[100]:
                revert with 0, 'e5'
        else:
            mem[floor32(('cd', 36).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[100]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = stor0
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[68] wei
                 gas gas_remaining wei
                args cd[100], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), stor0, block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _203 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _207 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
            require _203 + (32 * _207) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + _203 + 129
            t = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < _207:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = stor0
            require ext_code.size(mem[(32 * ('cd', 36).length - 1) + 140 len 20])
            staticcall mem[(32 * ('cd', 36).length - 1) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_279] == mem[_279]
            if mem[_279] < cd[100]:
                revert with 0, 'e5'
    stor3 = 0
}



}
