contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function balanceOf(address arg1) payable {
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function recover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function sub_dc0432c0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if ('cd', 36).length > test266151307():
                revert with 'NH{q', 65
            _49 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _49
                s = 0
                while s < ('cd', 36).length:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_113] == mem[_113]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if s >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_113]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                mem[_49 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _49
                s = 0
                while s < ('cd', 36).length:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_114] == mem[_114]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if s >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_114]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 32
        _52 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _52:
            mem[u] = t + -_48 - 64
            _94 = mem[s]
            _99 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _94 + 32
            x = t + 32
            while v < _99:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _99) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if ('cd', 36).length > test266151307():
                revert with 'NH{q', 65
            _96 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _96
                s = 0
                while s < ('cd', 36).length:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_144] == mem[_144]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if s >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_144]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            else:
                mem[_96 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _96
                s = 0
                while s < ('cd', 36).length:
                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
                    staticcall address(cd[((32 * s) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_145] == mem[_145]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if s >= mem[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + mem[(32 * idx) + 128] + 32] = mem[_145]
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _95 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _101:
            mem[u] = t + -_95 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _136 + 32
            x = t + 32
            while v < _138:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _138) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
