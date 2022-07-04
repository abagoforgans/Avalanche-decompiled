contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c9c13eca(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_b98c491a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == -1:
        return 1
    else:
        return 0
}

function sub_4e96a543(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_754c7d24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != -1:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_41c8c860(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] == cd[196]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[36]) == address(cd[68]):
        mem[floor32(('cd', 132).length) + 97] = 2
        mem[64] = floor32(('cd', 132).length) + 193
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        s = cd[164]
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _74 = mem[(32 * idx) + 128]
            _75 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _77 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + 97]
            t = 0
            u = floor32(('cd', 132).length) + 129
            v = mem[64] + 196
            while t < _77:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_75 + 100] = address(_74)
            mem[_75 + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _75 + (32 * _77) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_97]
            require mem[_97] <= test266151307()
            require _97 + mem[_97] + 31 < _97 + return_data.size
            _101 = mem[_97 + mem[_97]]
            if mem[_97 + mem[_97]] > test266151307():
                revert with 'NH{q', 65
            if _97 + ceil32(return_data.size) + floor32(mem[_97 + mem[_97]]) + 1 > test266151307() or floor32(mem[_97 + mem[_97]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _97 + ceil32(return_data.size) + floor32(mem[_97 + mem[_97]]) + 1
            mem[_97 + ceil32(return_data.size)] = _101
            require _99 + (32 * _101) + 32 <= return_data.size
            t = 0
            u = _97 + _99 + 32
            v = _97 + ceil32(return_data.size) + 32
            while t < _101:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if gas_remaining < 100000:
            if s > -cd[196] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + cd[196]
            continue 
    else:
        mem[floor32(('cd', 132).length) + 97] = 3
        mem[64] = floor32(('cd', 132).length) + 225
        mem[floor32(('cd', 132).length) + 129] = address(cd[36])
        mem[floor32(('cd', 132).length) + 161] = address(cd[68])
        mem[floor32(('cd', 132).length) + 193] = address(cd[100])
        if block.timestamp > -31:
            revert with 'NH{q', 17
        idx = 0
        s = cd[164]
        while idx < ('cd', 132).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _72 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _76 = mem[floor32(('cd', 132).length) + 97]
            mem[mem[64] + 164] = mem[floor32(('cd', 132).length) + 97]
            t = 0
            u = floor32(('cd', 132).length) + 129
            v = mem[64] + 196
            while t < _76:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 100] = address(_72)
            mem[mem[64] + 132] = block.timestamp + 30
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(_72), block.timestamp + 30, mem[mem[64] + 164 len (32 * _76) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + mem[_96] + 31 < _96 + return_data.size
            _100 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 'NH{q', 65
            if _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1 > test266151307() or floor32(mem[_96 + mem[_96]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1
            mem[_96 + ceil32(return_data.size)] = _100
            require _98 + (32 * _100) + 32 <= return_data.size
            t = 0
            u = _96 + _98 + 32
            v = _96 + ceil32(return_data.size) + 32
            while t < _100:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if gas_remaining < 100000:
            if s > -cd[196] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + cd[196]
            continue 
}



}
