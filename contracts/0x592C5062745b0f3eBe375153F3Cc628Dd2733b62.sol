contract main {




// =====================  Runtime code  =====================


#
#  - sub_ddc93d14(?)
#
address stor0;
address timeAddress;
address memoAddress;
address stakingAddress;
mapping of uint8 stor4;

function time() payable {
    return timeAddress
}

function whitelistMap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function staking() payable {
    return stakingAddress
}

function memo() payable {
    return memoAddress
}

function _fallback() payable {
    revert
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    stor4[address(arg1)] = uint8(arg2)
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == stor0
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
}

function unstake() payable {
    if not stor4[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    require ext_code.size(memoAddress)
    staticcall memoAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stakingAddress)
    call stakingAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(timeAddress)
    call timeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake() payable {
    if not stor4[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(timeAddress)
    call timeAddress.0x23b872dd with:
         gas gas_remaining wei
        args stor0, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stakingAddress)
    call stakingAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingAddress)
    call stakingAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address[] arg1) payable {
    require calldata.size - 4 >= 32
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _26 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _28 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_28)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] == mem[_31]
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = timeAddress
        mem[mem[64] + 36] = _32
        require ext_code.size(address(_26))
        call address(_26).0x9e281a98 with:
             gas gas_remaining wei
            args timeAddress, _32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_25181bb0(?) payable {
    require calldata.size - 4 >= 64
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
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _30 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _33 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = 0
        _34 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_34 + 32] = mem[_34 + 36 len 28] or 0x1feed31f00000000000000000000000000000000000000000000000000000000
        mem[_33 + 100] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
        mem[_33 + 104] = address(cd[36])
        mem[_33 + 136] = 0
        mem[_33 + 168] = 96
        _37 = mem[_34]
        mem[_33 + 200] = mem[_34]
        s = 0
        while s < _37:
            mem[_33 + s + 232] = mem[_34 + s + 32]
            s = s + 32
            continue 
        if ceil32(_37) > _37:
            mem[_33 + _37 + 232] = 0
        require ext_code.size(address(_30))
        call address(_30).0x3f579f42 with:
             gas gas_remaining wei
            args address(cd[36]), 0, 96, mem[_33 + 200 len ceil32(_37) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_103] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_103 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_103 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _104 = mem[64]
            mem[64] = mem[64] + 96
            mem[_104] = 39
            mem[_104 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            _109 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[_109 + s] = mem[_103 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _226 = mem[_104]
                    mem[mem[64] + 36] = mem[_104]
                    idx = 0
                    while idx < _226:
                        mem[_213 + idx + 68] = mem[_104 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_226) > _226:
                        mem[_213 + _226 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _213 + ceil32(_226) + -mem[64] + 68
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_205] = return_data.size
                mem[_205 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _205
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _228 = mem[_104]
                mem[mem[64] + 36] = mem[_104]
                idx = 0
                while idx < _228:
                    mem[_215 + idx + 68] = mem[_104 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_215 + _228 + 68] = 0
                revert with memory
                  from mem[64]
                   len _215 + ceil32(_228) + -mem[64] + 68
            mem[_109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _219 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _230 = mem[_104]
                mem[mem[64] + 36] = mem[_104]
                idx = 0
                while idx < _230:
                    mem[_219 + idx + 68] = mem[_104 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_230) > _230:
                    mem[_219 + _230 + 68] = 0
                revert with memory
                  from mem[64]
                   len _219 + ceil32(_230) + -mem[64] + 68
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_207] = return_data.size
            mem[_207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _207
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _232 = mem[_104]
            mem[mem[64] + 36] = mem[_104]
            idx = 0
            while idx < _232:
                mem[_221 + idx + 68] = mem[_104 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_232) > _232:
                mem[_221 + _232 + 68] = 0
            revert with memory
              from mem[64]
               len _221 + ceil32(_232) + -mem[64] + 68
        _100 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _101:
            mem[u] = t + -_100 - 64
            _198 = mem[s]
            _202 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _202:
                mem[t + v + 32] = mem[_198 + v + 32]
                v = v + 32
                continue 
            if ceil32(_202) > _202:
                mem[t + _202 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_202) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_208] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_208 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_208 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _209 = mem[64]
            mem[64] = mem[64] + 96
            mem[_209] = 39
            mem[_209 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            _224 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[_224 + s] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _322 = mem[_209]
                    mem[mem[64] + 36] = mem[_209]
                    idx = 0
                    while idx < _322:
                        mem[_312 + idx + 68] = mem[_209 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_322) > _322:
                        mem[_312 + _322 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _312 + ceil32(_322) + -mem[64] + 68
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_298] = return_data.size
                mem[_298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _298
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _324 = mem[_209]
                mem[mem[64] + 36] = mem[_209]
                idx = 0
                while idx < _324:
                    mem[_314 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_324) > _324:
                    mem[_314 + _324 + 68] = 0
                revert with memory
                  from mem[64]
                   len _314 + ceil32(_324) + -mem[64] + 68
            mem[_224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _326 = mem[_209]
                mem[mem[64] + 36] = mem[_209]
                idx = 0
                while idx < _326:
                    mem[_318 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_326) > _326:
                    mem[_318 + _326 + 68] = 0
                revert with memory
                  from mem[64]
                   len _318 + ceil32(_326) + -mem[64] + 68
            _304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_304] = return_data.size
            mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _304
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _328 = mem[_209]
            mem[mem[64] + 36] = mem[_209]
            idx = 0
            while idx < _328:
                mem[_320 + idx + 68] = mem[_209 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_328) > _328:
                mem[_320 + _328 + 68] = 0
            revert with memory
              from mem[64]
               len _320 + ceil32(_328) + -mem[64] + 68
        _200 = mem[64]
        mem[mem[64]] = 32
        _204 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _204:
            mem[u] = t + -_200 - 64
            _293 = mem[s]
            _296 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _296:
                mem[t + v + 32] = mem[_293 + v + 32]
                v = v + 32
                continue 
            if ceil32(_296) > _296:
                mem[t + _296 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_296) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_d6478598(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
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
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    mem[0] = msg.sender
    mem[32] = 4
    if not stor4[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    mem[floor32(('cd', 100).length) + 101] = stor0
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    mem[floor32(('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 101] = stor0
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 133] = this.address
    if cd[36] < ext_call.return_data[0]:
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 165] = cd[36]
        require ext_code.size(timeAddress)
        call timeAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(this.address), cd[36]
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _80 = mem[128]
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 101] = this.address
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = address(cd[68])
        require ext_code.size(address(_80))
        staticcall address(_80).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[68])
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 101] = cd[36]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 133] = 0
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 165] = 160
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 100).length
            idx = 0
            s = 128
            t = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 293
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 197] = this.address
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 229] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 0, 160, address(this.address), block.timestamp, ('cd', 100).length, mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 100).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _170 = mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + return_data.size + 97
            _174 = mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
            if mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = _174
            require _170 + (32 * _174) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + _170 + 129
            t = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 129
            while idx < _174:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _174 < 1:
                revert with 'NH{q', 17
            if _174 - 1 >= _174:
                revert with 'NH{q', 50
            _394 = mem[(32 * _174 - 1) + floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 129]
            if cd[36] and cd[164] > -1 / cd[36]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).principle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _410 = mem[_406]
            require mem[_406] == mem[_406 + 12 len 20]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _394
            require ext_code.size(address(_410))
            call address(_410).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), _394
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _422 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_422] == bool(mem[_422])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(_410))
            staticcall address(_410).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[132]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_438] == mem[_438]
            if mem[_438]:
                _446 = mem[64]
                mem[mem[64] + 36] = _394
                mem[mem[64] + 68] = -1
                mem[mem[64] + 100] = address(cd[132])
                _466 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_466 + 32 len 4] = deposit(uint256 arg1, uint256 arg2, address arg3)
                mem[_446 + 132] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_446 + 136] = address(cd[4])
                mem[_446 + 168] = 0
                mem[_446 + 200] = 96
                _482 = mem[_466]
                mem[_446 + 232] = mem[_466]
                mem[_446 + 264 len ceil32(_482)] = mem[_466 + 32 len ceil32(_482)]
                if ceil32(_482) > _482:
                    mem[_446 + _482 + 264] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, mem[_446 + 232 len ceil32(_482) + 32]
            else:
                _447 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = -1
                _454 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_454 + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[_447 + 100] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_447 + 104] = address(_410)
                mem[_447 + 136] = 0
                mem[_447 + 168] = 96
                _478 = mem[_454]
                mem[_447 + 200] = mem[_454]
                mem[_447 + 232 len ceil32(_478)] = mem[_454 + 32 len ceil32(_478)]
                if ceil32(_478) > _478:
                    mem[_447 + _478 + 232] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(_410), 0, 96, mem[_447 + 200 len ceil32(_478) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, 100, deposit(uint256 arg1, uint256 arg2, address arg3), _394, -1, address(cd[132]), 0, address(cd[4]) << 32 >> 544, 0
        else:
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            _94 = mem[128]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[68])
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 133] = -1
            require ext_code.size(address(_94))
            call address(_94).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), -1
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 101] = cd[36]
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 133] = 0
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 165] = 160
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 261] = ('cd', 100).length
            idx = 0
            s = 128
            t = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 293
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 197] = this.address
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 229] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 0, 160, address(this.address), block.timestamp, ('cd', 100).length, mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 293 len 32 * ('cd', 100).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _171 = mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + return_data.size + 97
            _175 = mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
            if mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
            mem[floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = _175
            require _171 + (32 * _175) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + _171 + 129
            t = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 129
            while idx < _175:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _175 < 1:
                revert with 'NH{q', 17
            if _175 - 1 >= _175:
                revert with 'NH{q', 50
            _395 = mem[(32 * _175 - 1) + floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 129]
            if cd[36] and cd[164] > -1 / cd[36]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).principle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _411 = mem[_407]
            require mem[_407] == mem[_407 + 12 len 20]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _395
            require ext_code.size(address(_411))
            call address(_411).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), _395
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_423] == bool(mem[_423])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(_411))
            staticcall address(_411).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[132]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_439] == mem[_439]
            if mem[_439]:
                _448 = mem[64]
                mem[mem[64] + 36] = _395
                mem[mem[64] + 68] = -1
                mem[mem[64] + 100] = address(cd[132])
                _469 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_469 + 32 len 4] = deposit(uint256 arg1, uint256 arg2, address arg3)
                mem[_448 + 132] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_448 + 136] = address(cd[4])
                mem[_448 + 168] = 0
                mem[_448 + 200] = 96
                _483 = mem[_469]
                mem[_448 + 232] = mem[_469]
                mem[_448 + 264 len ceil32(_483)] = mem[_469 + 32 len ceil32(_483)]
                if ceil32(_483) > _483:
                    mem[_448 + _483 + 264] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, mem[_448 + 232 len ceil32(_483) + 32]
            else:
                _449 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = -1
                _457 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_457 + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[_449 + 100] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_449 + 104] = address(_411)
                mem[_449 + 136] = 0
                mem[_449 + 168] = 96
                _479 = mem[_457]
                mem[_449 + 200] = mem[_457]
                mem[_449 + 232 len ceil32(_479)] = mem[_457 + 32 len ceil32(_479)]
                if ceil32(_479) > _479:
                    mem[_449 + _479 + 232] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(_411), 0, 96, mem[_449 + 200 len ceil32(_479) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, 100, deposit(uint256 arg1, uint256 arg2, address arg3), _395, -1, address(cd[132]), 0, address(cd[4]) << 32 >> 544, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(cd[132])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] <= cd[36] * cd[164] / 100000:
            revert with 0, 'Insufficient payout'
    else:
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        require ext_code.size(timeAddress)
        call timeAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(this.address), ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _82 = mem[128]
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 101] = this.address
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = address(cd[68])
        require ext_code.size(address(_82))
        staticcall address(_82).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[68])
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 133] = 0
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 165] = 160
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 100).length
            idx = 0
            s = 128
            t = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 293
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 197] = this.address
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 229] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, ('cd', 100).length, mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 100).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _172 = mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28]
            require mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 128 < floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + return_data.size + 97
            _176 = mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]
            if mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = _176
            require _172 + (32 * _176) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + _172 + 129
            t = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 129
            while idx < _176:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _176 < 1:
                revert with 'NH{q', 17
            if _176 - 1 >= _176:
                revert with 'NH{q', 50
            _396 = mem[(32 * _176 - 1) + floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 129]
            if ext_call.return_data[0] and cd[164] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).principle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _408 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _412 = mem[_408]
            require mem[_408] == mem[_408 + 12 len 20]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _396
            require ext_code.size(address(_412))
            call address(_412).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), _396
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_424] == bool(mem[_424])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(_412))
            staticcall address(_412).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[132]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_440] == mem[_440]
            if mem[_440]:
                _450 = mem[64]
                mem[mem[64] + 36] = _396
                mem[mem[64] + 68] = -1
                mem[mem[64] + 100] = address(cd[132])
                _472 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_472 + 32 len 4] = deposit(uint256 arg1, uint256 arg2, address arg3)
                mem[_450 + 132] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_450 + 136] = address(cd[4])
                mem[_450 + 168] = 0
                mem[_450 + 200] = 96
                _484 = mem[_472]
                mem[_450 + 232] = mem[_472]
                mem[_450 + 264 len ceil32(_484)] = mem[_472 + 32 len ceil32(_484)]
                if ceil32(_484) > _484:
                    mem[_450 + _484 + 264] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, mem[_450 + 232 len ceil32(_484) + 32]
            else:
                _451 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = -1
                _460 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_460 + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[_451 + 100] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_451 + 104] = address(_412)
                mem[_451 + 136] = 0
                mem[_451 + 168] = 96
                _480 = mem[_460]
                mem[_451 + 200] = mem[_460]
                mem[_451 + 232 len ceil32(_480)] = mem[_460 + 32 len ceil32(_480)]
                if ceil32(_480) > _480:
                    mem[_451 + _480 + 232] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(_412), 0, 96, mem[_451 + 200 len ceil32(_480) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, 100, deposit(uint256 arg1, uint256 arg2, address arg3), _396, -1, address(cd[132]), 0, address(cd[4]) << 32 >> 544, 0
        else:
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            _96 = mem[128]
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[68])
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 133] = -1
            require ext_code.size(address(_96))
            call address(_96).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), -1
            mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 133] = 0
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 165] = 160
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 261] = ('cd', 100).length
            idx = 0
            s = 128
            t = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 293
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 197] = this.address
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 229] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, ('cd', 100).length, mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 293 len 32 * ('cd', 100).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            _173 = mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28]
            require mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 128 < floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + return_data.size + 97
            _177 = mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]
            if mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 4], ext_call.return_data[0 len 28] + 97]) + 98
            mem[floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 97] = _177
            require _173 + (32 * _177) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + _173 + 129
            t = floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 129
            while idx < _177:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _177 < 1:
                revert with 'NH{q', 17
            if _177 - 1 >= _177:
                revert with 'NH{q', 50
            _397 = mem[(32 * _177 - 1) + floor32(('cd', 100).length) + (7 * ceil32(return_data.size)) + 129]
            if ext_call.return_data[0] and cd[164] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).principle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _413 = mem[_409]
            require mem[_409] == mem[_409 + 12 len 20]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _397
            require ext_code.size(address(_413))
            call address(_413).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[132]), _397
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_425] == bool(mem[_425])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(_413))
            staticcall address(_413).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[132]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_441] == mem[_441]
            if mem[_441]:
                _452 = mem[64]
                mem[mem[64] + 36] = _397
                mem[mem[64] + 68] = -1
                mem[mem[64] + 100] = address(cd[132])
                _475 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_475 + 32 len 4] = deposit(uint256 arg1, uint256 arg2, address arg3)
                mem[_452 + 132] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_452 + 136] = address(cd[4])
                mem[_452 + 168] = 0
                mem[_452 + 200] = 96
                _485 = mem[_475]
                mem[_452 + 232] = mem[_475]
                mem[_452 + 264 len ceil32(_485)] = mem[_475 + 32 len ceil32(_485)]
                if ceil32(_485) > _485:
                    mem[_452 + _485 + 264] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, mem[_452 + 232 len ceil32(_485) + 32]
            else:
                _453 = mem[64]
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = -1
                _463 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_463 + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[_453 + 100] = 0x3f579f4200000000000000000000000000000000000000000000000000000000
                mem[_453 + 104] = address(_413)
                mem[_453 + 136] = 0
                mem[_453 + 168] = 96
                _481 = mem[_463]
                mem[_453 + 200] = mem[_463]
                mem[_453 + 232 len ceil32(_481)] = mem[_463 + 32 len ceil32(_481)]
                if ceil32(_481) > _481:
                    mem[_453 + _481 + 232] = 0
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(_413), 0, 96, mem[_453 + 200 len ceil32(_481) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[132]))
                call address(cd[132]).0x3f579f42 with:
                     gas gas_remaining wei
                    args address(cd[4]), 0, 96, 100, deposit(uint256 arg1, uint256 arg2, address arg3), _397, -1, address(cd[132]), 0, address(cd[4]) << 32 >> 544, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(cd[132])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if ext_call.return_data[0] <= ext_call.return_data[0] * cd[164] / 100000:
            revert with 0, 'Insufficient payout'
}



}
