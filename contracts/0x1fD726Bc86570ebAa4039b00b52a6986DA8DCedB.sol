contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function grantAuthorization(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    stor0[address(arg1)] = 1
}

function sub_09c9960e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function disperseTokenSimple(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_10] == bool(mem[_10])
        require mem[_10]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ca6c89fb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == bool(mem[_14])
        require mem[_14]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_bbfb22e7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        _67 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
        _68 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_68 + 32] = mem[_68 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _67 + 196
        mem[_67 + 132] = 32
        mem[_67 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[4])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _74 = mem[_68]
        s = 0
        while s < _74:
            mem[_67 + s + 196] = mem[_68 + s + 32]
            s = s + 32
            continue 
        if ceil32(_74) > _74:
            mem[_67 + _74 + 196] = 0
        call address(cd[4]).mem[_67 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_67 + 200 len _74 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_67 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_67 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_67 + idx + 264] = mem[_67 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_67 + 264]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _67 + ceil32(return_data.size) + 197
            mem[_67 + 196] = return_data.size
            mem[_67 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_67 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_67 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_67 + ceil32(return_data.size) + idx + 265] = mem[_67 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_67 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_67 + 228] == bool(mem[_67 + 228])
                if not mem[_67 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function disperseToken(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if s > -cd[((32 * idx) + arg3 + 36)] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == bool(mem[_22])
        require mem[_22]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2f154bc6(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _71 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
        _72 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_72 + 32] = mem[_72 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _71 + 196
        mem[_71 + 132] = 32
        mem[_71 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _78 = mem[_72]
        s = 0
        while s < _78:
            mem[_71 + s + 196] = mem[_72 + s + 32]
            s = s + 32
            continue 
        if ceil32(_78) > _78:
            mem[_71 + _78 + 196] = 0
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[_71 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_71 + 200 len _78 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_71 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_71 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_71 + idx + 264] = mem[_71 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_71 + 264]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _71 + ceil32(return_data.size) + 197
            mem[_71 + 196] = return_data.size
            mem[_71 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_71 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_71 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_71 + ceil32(return_data.size) + idx + 265] = mem[_71 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_71 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_71 + 228] == bool(mem[_71 + 228])
                if not mem[_71 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fa3ea2c2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if eth.balance(this.address) <= 0:
        if ('cd', 68).length != ('cd', 100).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
        if ('cd', 68).length != ('cd', 132).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
        idx = 0
        while idx < ('cd', 100).length:
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            _280 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[132] + 36)]
            _282 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_282 + 32] = mem[_282 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _280 + 196
            mem[_280 + 132] = 32
            mem[_280 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _294 = mem[_282]
            s = 0
            while s < _294:
                mem[_280 + s + 196] = mem[_282 + s + 32]
                s = s + 32
                continue 
            if ceil32(_294) > _294:
                mem[_280 + _294 + 196] = 0
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[_280 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_280 + 200 len _294 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_280 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_280 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_280 + idx + 264] = mem[_280 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_280 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _280 + ceil32(return_data.size) + 197
                mem[_280 + 196] = return_data.size
                mem[_280 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_280 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_280 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_280 + ceil32(return_data.size) + idx + 265] = mem[_280 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_280 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_280 + 228] == bool(mem[_280 + 228])
                    if not mem[_280 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ('cd', 68).length != ('cd', 100).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
        if ('cd', 68).length != ('cd', 132).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid arguments: mis-matched lengths'
        idx = 0
        while idx < ('cd', 100).length:
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            _281 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[132] + 36)]
            _284 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_284 + 32] = mem[_284 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _281 + 196
            mem[_281 + 132] = 32
            mem[_281 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _295 = mem[_284]
            s = 0
            while s < _295:
                mem[_281 + s + 196] = mem[_284 + s + 32]
                s = s + 32
                continue 
            if ceil32(_295) > _295:
                mem[_281 + _295 + 196] = 0
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[_281 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_281 + 200 len _295 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_281 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_281 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_281 + idx + 264] = mem[_281 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_281 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _281 + ceil32(return_data.size) + 197
                mem[_281 + 196] = return_data.size
                mem[_281 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_281 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_281 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_281 + ceil32(return_data.size) + idx + 265] = mem[_281 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_281 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_281 + 228] == bool(mem[_281 + 228])
                    if not mem[_281 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_9b2dd9b1(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'Caller is not authorized'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s > -cd[((32 * idx) + cd[68] + 36)] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + cd[68] + 36)]
        continue 
    mem[100] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
        revert with 0, 'Insufficient sender token balance'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[64] = ceil32(return_data.size) + 292
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(cd[4])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0
    mem[ceil32(return_data.size) + 392] = 0
    call address(cd[4]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] <= 0:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                _1723 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1735 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1735 + 32] = mem[_1735 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1723 + 164
                mem[_1723 + 100] = 32
                mem[_1723 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(cd[4])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1779 = mem[_1735]
                s = 0
                while s < _1779:
                    mem[_1723 + s + 164] = mem[_1735 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1779) > _1779:
                    mem[_1723 + _1779 + 164] = 0
                call address(cd[4]).mem[_1723 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1723 + 168 len _1779 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1723 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1723 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1723 + idx + 232] = mem[_1723 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1723 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1723 + ceil32(return_data.size) + 165
                    mem[_1723 + 164] = return_data.size
                    mem[_1723 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1723 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1723 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1723 + ceil32(return_data.size) + idx + 233] = mem[_1723 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1723 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1723 + 196] == bool(mem[_1723 + 196])
                        if not mem[_1723 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                _1724 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1737 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1737 + 32] = mem[_1737 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1724 + 164
                mem[_1724 + 100] = 32
                mem[_1724 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(cd[4])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1780 = mem[_1737]
                s = 0
                while s < _1780:
                    mem[_1724 + s + 164] = mem[_1737 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1780) > _1780:
                    mem[_1724 + _1780 + 164] = 0
                call address(cd[4]).mem[_1724 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1724 + 168 len _1780 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1724 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1724 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1724 + idx + 232] = mem[_1724 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1724 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1724 + ceil32(return_data.size) + 165
                    mem[_1724 + 164] = return_data.size
                    mem[_1724 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1724 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1724 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1724 + ceil32(return_data.size) + idx + 233] = mem[_1724 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1724 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1724 + 196] == bool(mem[_1724 + 196])
                        if not mem[_1724 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        mem[ceil32(return_data.size) + 292] = return_data.size
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                _1725 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1739 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1739 + 32] = mem[_1739 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1725 + 164
                mem[_1725 + 100] = 32
                mem[_1725 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(cd[4])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1781 = mem[_1739]
                s = 0
                while s < _1781:
                    mem[_1725 + s + 164] = mem[_1739 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1781) > _1781:
                    mem[_1725 + _1781 + 164] = 0
                call address(cd[4]).mem[_1725 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1725 + 168 len _1781 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1725 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1725 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1725 + idx + 232] = mem[_1725 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1725 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1725 + ceil32(return_data.size) + 165
                    mem[_1725 + 164] = return_data.size
                    mem[_1725 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1725 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1725 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1725 + ceil32(return_data.size) + idx + 233] = mem[_1725 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1725 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1725 + 196] == bool(mem[_1725 + 196])
                        if not mem[_1725 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                _1726 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _1741 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1741 + 32] = mem[_1741 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _1726 + 164
                mem[_1726 + 100] = 32
                mem[_1726 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(cd[4])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1782 = mem[_1741]
                s = 0
                while s < _1782:
                    mem[_1726 + s + 164] = mem[_1741 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1782) > _1782:
                    mem[_1726 + _1782 + 164] = 0
                call address(cd[4]).mem[_1726 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1726 + 168 len _1782 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1726 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1726 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1726 + idx + 232] = mem[_1726 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1726 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1726 + ceil32(return_data.size) + 165
                    mem[_1726 + 164] = return_data.size
                    mem[_1726 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1726 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1726 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1726 + ceil32(return_data.size) + idx + 233] = mem[_1726 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1726 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1726 + 196] == bool(mem[_1726 + 196])
                        if not mem[_1726 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
