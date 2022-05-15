contract main {




// =====================  Runtime code  =====================


#
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#
address owner;
address TOKENAddress;
address sub_726ed7c4Address;
address SWAPAddress;
address STAKINGAddress;
address LENDING_POOLAddress;
address VAULTAddress;

function SWAP() payable {
    return SWAPAddress
}

function VAULT() payable {
    return VAULTAddress
}

function sub_726ed7c4(?) payable {
    return sub_726ed7c4Address
}

function TOKEN() payable {
    return TOKENAddress
}

function owner() payable {
    return owner
}

function STAKING() payable {
    return STAKINGAddress
}

function LENDING_POOL() payable {
    return LENDING_POOLAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    VAULTAddress = arg1
}

function withdrawEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2f236c65(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = VAULTAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.0x23b872dd with:
         gas gas_remaining wei
        args VAULTAddress, address(this.address), cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 102] = STAKINGAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 134] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args STAKINGAddress, cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = 0x9ebea88c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 134] = 1
    require ext_code.size(STAKINGAddress)
    call STAKINGAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args cd[100], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102] = mem[140 len 20]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 134] = cd[100]
    require ext_code.size(TOKENAddress)
    call TOKENAddress.0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 102], cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 98] = 0xf4214a5300000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 134] = TOKENAddress
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 166] = 160
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 262] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 198] = (32 * ('cd', 4).length) + 192
    _81 = mem[floor32(('cd', 4).length) + 97]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 294] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 326
    while idx < mem[floor32(('cd', 4).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 230] = this.address
    require ext_code.size(SWAPAddress)
    call SWAPAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 4).length) + floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * _81) + -mem[64] + 322]
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    _119 = mem[_117 + 32]
    require mem[_117 + 32] == mem[_117 + 44 len 20]
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = _118
    require ext_code.size(address(_119))
    call address(_119).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), _118
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_122] == bool(mem[_122])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(cd[132])
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _127 = mem[64]
    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + 128
    require mem[_126] == mem[_126]
    mem[_127] = mem[_126]
    require mem[_126 + 32] == mem[_126 + 32]
    mem[_127 + 32] = mem[_126 + 32]
    require mem[_126 + 64] == mem[_126 + 64]
    mem[_127 + 64] = mem[_126 + 64]
    require mem[_126 + 96] == mem[_126 + 96]
    mem[_127 + 96] = mem[_126 + 96]
    _132 = mem[_127]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _136 = mem[_135]
    require mem[_135] == mem[_135]
    mem[mem[64] + 4] = _118
    mem[mem[64] + 36] = _136
    mem[mem[64] + 68] = address(cd[132])
    require ext_code.size(address(cd[68]))
    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _118, _136, address(cd[132])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_139] == mem[_139]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(cd[132])
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _143 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _144 = mem[64]
    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + 128
    require mem[_143] == mem[_143]
    mem[_144] = mem[_143]
    require mem[_143 + 32] == mem[_143 + 32]
    mem[_144 + 32] = mem[_143 + 32]
    require mem[_143 + 64] == mem[_143 + 64]
    mem[_144 + 64] = mem[_143 + 64]
    require mem[_143 + 96] == mem[_143 + 96]
    if _132 > -cd[100] - 1:
        revert with 'NH{q', 17
    if _132 + cd[100] > -cd[164] - 1:
        revert with 'NH{q', 17
    if mem[_144] <= _132 + cd[100] + cd[164]:
        revert with 0, 'PROFIT'
    if mem[_144] < _132:
        revert with 'NH{q', 17
    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_144] - _132
}

function sub_c7987c06(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    mem[64] = 160
    require cd[4] + 68 <= calldata.size
    idx = 0
    s = cd[4] + 4
    t = 96
    while idx < 2:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 35 < calldata.size
        if cd[(cd[4] + cd[s] + 4)] > test266151307():
            revert with 'NH{q', 65
        _3 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + cd[s] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[4] + cd[s] + 4)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + cd[s] + 4)]) + 1
        mem[_3] = cd[(cd[4] + cd[s] + 4)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 4)]) + 36 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 36
        w = _3 + 32
        while u < cd[(cd[4] + cd[s] + 4)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _3
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    _4 = mem[64]
    if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + 64
    require cd[36] + 68 <= calldata.size
    idx = 0
    s = cd[36] + 4
    t = _4
    while idx < 2:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 35 < calldata.size
        if cd[(cd[36] + cd[s] + 4)] > test266151307():
            revert with 'NH{q', 65
        _6 = mem[64]
        if mem[64] + floor32(cd[(cd[36] + cd[s] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[36] + cd[s] + 4)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[36] + cd[s] + 4)]) + 1
        mem[_6] = cd[(cd[36] + cd[s] + 4)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 4)]) + 36 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 36
        w = _6 + 32
        while u < cd[(cd[36] + cd[s] + 4)]:
            require cd[v] == uint8(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _6
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[mem[64] + 4] = VAULTAddress
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.0x23b872dd with:
         gas gas_remaining wei
        args VAULTAddress, address(this.address), cd[100]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_11] == bool(mem[_11])
    mem[mem[64] + 4] = STAKINGAddress
    mem[mem[64] + 36] = cd[100]
    require ext_code.size(sub_726ed7c4Address)
    call sub_726ed7c4Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args STAKINGAddress, cd[100]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _15 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_15] == bool(mem[_15])
    mem[mem[64]] = 0x9ebea88c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[100]
    require ext_code.size(STAKINGAddress)
    call STAKINGAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args cd[100], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _19 = mem[64]
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    mem[mem[64] + 96] = 2
    mem[_19 + 128 len 64] = call.data[calldata.size len 64]
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).principle() with:
            gas gas_remaining wei
    mem[_19 + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _19 + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < 2:
        if mem[mem[(32 * idx) + 96]] <= 0:
            if idx >= mem[_19]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _19 + 32] = TOKENAddress
            if idx >= mem[_19 + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _19 + 128] = cd[100] / 2
        else:
            if idx >= 2:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + 96]]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 96] + 44 len 20]
            mem[mem[64] + 36] = cd[100] / 2
            require ext_code.size(TOKENAddress)
            call TOKENAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Mask(255, 1, cd[100])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_65] == bool(mem[_65])
            if idx >= 2:
                revert with 'NH{q', 50
            _71 = mem[(32 * idx) + 96]
            _72 = mem[(32 * idx) + _4]
            _73 = mem[64]
            mem[mem[64]] = 0xf4214a5300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[100] / 2
            mem[mem[64] + 36] = TOKENAddress
            mem[mem[64] + 68] = 160
            _74 = mem[_71]
            mem[mem[64] + 164] = mem[_71]
            s = 0
            t = _71 + 32
            u = mem[64] + 196
            while s < _74:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 100] = (32 * _74) + 192
            _375 = mem[_72]
            mem[_73 + (32 * _74) + 196] = mem[_72]
            s = 0
            t = _72 + 32
            u = _73 + (32 * _74) + 228
            while s < _375:
                mem[u] = mem[t + 31 len 1]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_73 + 132] = this.address
            require ext_code.size(SWAPAddress)
            call SWAPAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _73 + (32 * _74) + (32 * _375) + -mem[64] + 224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _863 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _864 = mem[_863]
            require mem[_863] == mem[_863]
            require mem[_863 + 32] == mem[_863 + 44 len 20]
            if idx >= mem[_19]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _19 + 32] = mem[_863 + 44 len 20]
            if idx >= mem[_19 + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _19 + 128] = _864
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 0 >= mem[_19]:
        revert with 'NH{q', 50
    _43 = mem[_19 + 32]
    if 1 >= mem[_19]:
        revert with 'NH{q', 50
    if 0 >= mem[_19 + 96]:
        revert with 'NH{q', 50
    _50 = mem[_19 + 128]
    if 1 >= mem[_19 + 96]:
        revert with 'NH{q', 50
    _54 = mem[_19 + 160]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _58 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _59 = mem[_58]
    require mem[_58] == mem[_58 + 18 len 14]
    _62 = mem[_58 + 32]
    require mem[_58 + 32] == mem[_58 + 50 len 14]
    require mem[_58 + 64] == mem[_58 + 92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_69] == mem[_69 + 12 len 20]
    if address(_43) == mem[_69 + 12 len 20]:
        if _50 and Mask(112, 0, _62) > -1 / _50:
            revert with 'NH{q', 17
        if not Mask(112, 0, _59):
            revert with 'NH{q', 18
        if _50 * Mask(112, 0, _62) / Mask(112, 0, _59) <= _54:
            if 0 >= mem[_19]:
                revert with 'NH{q', 50
            _78 = mem[_19 + 32]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _50
            require ext_code.size(address(_78))
            call address(_78).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _50
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == bool(mem[_86])
            if 1 >= mem[_19]:
                revert with 'NH{q', 50
            _101 = mem[_19 + 64]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _50 * Mask(112, 0, _62) / Mask(112, 0, _59)
            require ext_code.size(address(_101))
            call address(_101).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _50 * Mask(112, 0, _62) / Mask(112, 0, _59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_116] == bool(mem[_116])
            if 0 >= mem[_19 + 96]:
                revert with 'NH{q', 50
            if mem[_19 + 128] <= _50:
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _50 * Mask(112, 0, _62) / Mask(112, 0, _59):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _169 = mem[_164]
                    require mem[_164] == mem[_164]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _169
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _169
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_224] == bool(mem[_224])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _313 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_294] == mem[_294]
                    mem[_313] = mem[_294]
                    require mem[_294 + 32] == mem[_294 + 32]
                    mem[_313 + 32] = mem[_294 + 32]
                    require mem[_294 + 64] == mem[_294 + 64]
                    mem[_313 + 64] = mem[_294 + 64]
                    require mem[_294 + 96] == mem[_294 + 96]
                    mem[_313 + 96] = mem[_294 + 96]
                    _416 = mem[_313]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _433 = mem[_426]
                    require mem[_426] == mem[_426]
                    mem[mem[64] + 4] = _169
                    mem[mem[64] + 36] = _433
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _169, _433, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_509] == mem[_509]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _596 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_575] == mem[_575]
                    mem[_596] = mem[_575]
                    require mem[_575 + 32] == mem[_575 + 32]
                    mem[_596 + 32] = mem[_575 + 32]
                    require mem[_575 + 64] == mem[_575 + 64]
                    mem[_596 + 64] = mem[_575 + 64]
                    require mem[_575 + 96] == mem[_575 + 96]
                    if _416 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _416 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_596] <= _416 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_596] < _416:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_596] - _416
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _148 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _153 = mem[_19 + 160]
                    if mem[_19 + 160] < _50 * Mask(112, 0, _62) / Mask(112, 0, _59):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _153 - (_50 * Mask(112, 0, _62) / Mask(112, 0, _59))
                    require ext_code.size(address(_148))
                    call address(_148).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _153 - (_50 * Mask(112, 0, _62) / Mask(112, 0, _59))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_203] == bool(mem[_203])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _266 = mem[_261]
                    require mem[_261] == mem[_261]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _266
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _266
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_330] == bool(mem[_330])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _408 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_392] == mem[_392]
                    mem[_408] = mem[_392]
                    require mem[_392 + 32] == mem[_392 + 32]
                    mem[_408 + 32] = mem[_392 + 32]
                    require mem[_392 + 64] == mem[_392 + 64]
                    mem[_408 + 64] = mem[_392 + 64]
                    require mem[_392 + 96] == mem[_392 + 96]
                    mem[_408 + 96] = mem[_392 + 96]
                    _517 = mem[_408]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _538 = mem[_533]
                    require mem[_533] == mem[_533]
                    mem[mem[64] + 4] = _266
                    mem[mem[64] + 36] = _538
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _266, _538, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_613] == mem[_613]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _689 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_672] == mem[_672]
                    mem[_689] = mem[_672]
                    require mem[_672 + 32] == mem[_672 + 32]
                    mem[_689 + 32] = mem[_672 + 32]
                    require mem[_672 + 64] == mem[_672 + 64]
                    mem[_689 + 64] = mem[_672 + 64]
                    require mem[_672 + 96] == mem[_672 + 96]
                    if _517 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _517 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_689] <= _517 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_689] < _517:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_689] - _517
            else:
                if 0 >= mem[_19]:
                    revert with 'NH{q', 50
                _135 = mem[_19 + 32]
                if 0 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                _143 = mem[_19 + 128]
                if mem[_19 + 128] < _50:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = VAULTAddress
                mem[mem[64] + 36] = _143 - _50
                require ext_code.size(address(_135))
                call address(_135).0xa9059cbb with:
                     gas gas_remaining wei
                    args VAULTAddress, _143 - _50
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_199] == bool(mem[_199])
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _50 * Mask(112, 0, _62) / Mask(112, 0, _59):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _267 = mem[_262]
                    require mem[_262] == mem[_262]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _267
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _267
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_331] == bool(mem[_331])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _409 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_393] == mem[_393]
                    mem[_409] = mem[_393]
                    require mem[_393 + 32] == mem[_393 + 32]
                    mem[_409 + 32] = mem[_393 + 32]
                    require mem[_393 + 64] == mem[_393 + 64]
                    mem[_409 + 64] = mem[_393 + 64]
                    require mem[_393 + 96] == mem[_393 + 96]
                    mem[_409 + 96] = mem[_393 + 96]
                    _520 = mem[_409]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _534 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _539 = mem[_534]
                    require mem[_534] == mem[_534]
                    mem[mem[64] + 4] = _267
                    mem[mem[64] + 36] = _539
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _267, _539, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_614] == mem[_614]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _690 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_673] == mem[_673]
                    mem[_690] = mem[_673]
                    require mem[_673 + 32] == mem[_673 + 32]
                    mem[_690 + 32] = mem[_673 + 32]
                    require mem[_673 + 64] == mem[_673 + 64]
                    mem[_690 + 64] = mem[_673 + 64]
                    require mem[_673 + 96] == mem[_673 + 96]
                    if _520 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _520 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_690] <= _520 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_690] < _520:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_690] - _520
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _233 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _239 = mem[_19 + 160]
                    if mem[_19 + 160] < _50 * Mask(112, 0, _62) / Mask(112, 0, _59):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _239 - (_50 * Mask(112, 0, _62) / Mask(112, 0, _59))
                    require ext_code.size(address(_233))
                    call address(_233).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _239 - (_50 * Mask(112, 0, _62) / Mask(112, 0, _59))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_302] == bool(mem[_302])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _362 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _367 = mem[_362]
                    require mem[_362] == mem[_362]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _367
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _367
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_436] == bool(mem[_436])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _495 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _512 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_495] == mem[_495]
                    mem[_512] = mem[_495]
                    require mem[_495 + 32] == mem[_495 + 32]
                    mem[_512 + 32] = mem[_495 + 32]
                    require mem[_495 + 64] == mem[_495 + 64]
                    mem[_512 + 64] = mem[_495 + 64]
                    require mem[_495 + 96] == mem[_495 + 96]
                    mem[_512 + 96] = mem[_495 + 96]
                    _625 = mem[_512]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_633]
                    require mem[_633] == mem[_633]
                    mem[mem[64] + 4] = _367
                    mem[mem[64] + 36] = _639
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _367, _639, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_707] == mem[_707]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _767 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_755] == mem[_755]
                    mem[_767] = mem[_755]
                    require mem[_755 + 32] == mem[_755 + 32]
                    mem[_767 + 32] = mem[_755 + 32]
                    require mem[_755 + 64] == mem[_755 + 64]
                    mem[_767 + 64] = mem[_755 + 64]
                    require mem[_755 + 96] == mem[_755 + 96]
                    if _625 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _625 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_767] <= _625 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_767] < _625:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_767] - _625
        else:
            if _54 and Mask(112, 0, _59) > -1 / _54:
                revert with 'NH{q', 17
            if not Mask(112, 0, _62):
                revert with 'NH{q', 18
            if 0 >= mem[_19]:
                revert with 'NH{q', 50
            _91 = mem[_19 + 32]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _54 * Mask(112, 0, _59) / Mask(112, 0, _62)
            require ext_code.size(address(_91))
            call address(_91).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _54 * Mask(112, 0, _59) / Mask(112, 0, _62)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_108] == bool(mem[_108])
            if 1 >= mem[_19]:
                revert with 'NH{q', 50
            _120 = mem[_19 + 64]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _54
            require ext_code.size(address(_120))
            call address(_120).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _54
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_152] == bool(mem[_152])
            if 0 >= mem[_19 + 96]:
                revert with 'NH{q', 50
            if mem[_19 + 128] <= _54 * Mask(112, 0, _59) / Mask(112, 0, _62):
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _54:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _216 = mem[_212]
                    require mem[_212] == mem[_212]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _216
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _216
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_276] == bool(mem[_276])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _354 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_338] == mem[_338]
                    mem[_354] = mem[_338]
                    require mem[_338 + 32] == mem[_338 + 32]
                    mem[_354 + 32] = mem[_338 + 32]
                    require mem[_338 + 64] == mem[_338 + 64]
                    mem[_354 + 64] = mem[_338 + 64]
                    require mem[_338 + 96] == mem[_338 + 96]
                    mem[_354 + 96] = mem[_338 + 96]
                    _467 = mem[_354]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _481 = mem[_473]
                    require mem[_473] == mem[_473]
                    mem[mem[64] + 4] = _216
                    mem[mem[64] + 36] = _481
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _216, _481, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_555] == mem[_555]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _637 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_619] == mem[_619]
                    mem[_637] = mem[_619]
                    require mem[_619 + 32] == mem[_619 + 32]
                    mem[_637 + 32] = mem[_619 + 32]
                    require mem[_619 + 64] == mem[_619 + 64]
                    mem[_637 + 64] = mem[_619 + 64]
                    require mem[_619 + 96] == mem[_619 + 96]
                    if _467 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _467 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_637] <= _467 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_637] < _467:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_637] - _467
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _188 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _192 = mem[_19 + 160]
                    if mem[_19 + 160] < _54:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _192 - _54
                    require ext_code.size(address(_188))
                    call address(_188).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _192 - _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_248] == bool(mem[_248])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _320 = mem[_311]
                    require mem[_311] == mem[_311]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _320
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _320
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_377] == bool(mem[_377])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _460 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_444] == mem[_444]
                    mem[_460] = mem[_444]
                    require mem[_444 + 32] == mem[_444 + 32]
                    mem[_460 + 32] = mem[_444 + 32]
                    require mem[_444 + 64] == mem[_444 + 64]
                    mem[_460 + 64] = mem[_444 + 64]
                    require mem[_444 + 96] == mem[_444 + 96]
                    mem[_460 + 96] = mem[_444 + 96]
                    _569 = mem[_460]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _583 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _589 = mem[_583]
                    require mem[_583] == mem[_583]
                    mem[mem[64] + 4] = _320
                    mem[mem[64] + 36] = _589
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _320, _589, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_654] == mem[_654]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _725 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_713] == mem[_713]
                    mem[_725] = mem[_713]
                    require mem[_713 + 32] == mem[_713 + 32]
                    mem[_725 + 32] = mem[_713 + 32]
                    require mem[_713 + 64] == mem[_713 + 64]
                    mem[_725 + 64] = mem[_713 + 64]
                    require mem[_713 + 96] == mem[_713 + 96]
                    if _569 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _569 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_725] <= _569 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_725] < _569:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_725] - _569
            else:
                if 0 >= mem[_19]:
                    revert with 'NH{q', 50
                _177 = mem[_19 + 32]
                if 0 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                _184 = mem[_19 + 128]
                if mem[_19 + 128] < _54 * Mask(112, 0, _59) / Mask(112, 0, _62):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = VAULTAddress
                mem[mem[64] + 36] = _184 - (_54 * Mask(112, 0, _59) / Mask(112, 0, _62))
                require ext_code.size(address(_177))
                call address(_177).0xa9059cbb with:
                     gas gas_remaining wei
                    args VAULTAddress, _184 - (_54 * Mask(112, 0, _59) / Mask(112, 0, _62))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_243] == bool(mem[_243])
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _54:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _321 = mem[_312]
                    require mem[_312] == mem[_312]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _321
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _321
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_378] == bool(mem[_378])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _461 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_445] == mem[_445]
                    mem[_461] = mem[_445]
                    require mem[_445 + 32] == mem[_445 + 32]
                    mem[_461 + 32] = mem[_445 + 32]
                    require mem[_445 + 64] == mem[_445 + 64]
                    mem[_461 + 64] = mem[_445 + 64]
                    require mem[_445 + 96] == mem[_445 + 96]
                    mem[_461 + 96] = mem[_445 + 96]
                    _572 = mem[_461]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _590 = mem[_584]
                    require mem[_584] == mem[_584]
                    mem[mem[64] + 4] = _321
                    mem[mem[64] + 36] = _590
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _321, _590, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_655] == mem[_655]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _726 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_714] == mem[_714]
                    mem[_726] = mem[_714]
                    require mem[_714 + 32] == mem[_714 + 32]
                    mem[_726 + 32] = mem[_714 + 32]
                    require mem[_714 + 64] == mem[_714 + 64]
                    mem[_726 + 64] = mem[_714 + 64]
                    require mem[_714 + 96] == mem[_714 + 96]
                    if _572 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _572 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_726] <= _572 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_726] < _572:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_726] - _572
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _284 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _288 = mem[_19 + 160]
                    if mem[_19 + 160] < _54:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _288 - _54
                    require ext_code.size(address(_284))
                    call address(_284).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _288 - _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_350] == bool(mem[_350])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _415 = mem[_407]
                    require mem[_407] == mem[_407]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _415
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _415
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_484] == bool(mem[_484])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _563 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_547] == mem[_547]
                    mem[_563] = mem[_547]
                    require mem[_547 + 32] == mem[_547 + 32]
                    mem[_563 + 32] = mem[_547 + 32]
                    require mem[_547 + 64] == mem[_547 + 64]
                    mem[_563 + 64] = mem[_547 + 64]
                    require mem[_547 + 96] == mem[_547 + 96]
                    mem[_563 + 96] = mem[_547 + 96]
                    _669 = mem[_563]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _681 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _685 = mem[_681]
                    require mem[_681] == mem[_681]
                    mem[mem[64] + 4] = _415
                    mem[mem[64] + 36] = _685
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _415, _685, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_743] == mem[_743]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _797 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_787] == mem[_787]
                    mem[_797] = mem[_787]
                    require mem[_787 + 32] == mem[_787 + 32]
                    mem[_797 + 32] = mem[_787 + 32]
                    require mem[_787 + 64] == mem[_787 + 64]
                    mem[_797 + 64] = mem[_787 + 64]
                    require mem[_787 + 96] == mem[_787 + 96]
                    if _669 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _669 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_797] <= _669 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_797] < _669:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_797] - _669
    else:
        if _50 and Mask(112, 0, _59) > -1 / _50:
            revert with 'NH{q', 17
        if not Mask(112, 0, _62):
            revert with 'NH{q', 18
        if _50 * Mask(112, 0, _59) / Mask(112, 0, _62) <= _54:
            if 0 >= mem[_19]:
                revert with 'NH{q', 50
            _80 = mem[_19 + 32]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _50
            require ext_code.size(address(_80))
            call address(_80).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _50
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == bool(mem[_87])
            if 1 >= mem[_19]:
                revert with 'NH{q', 50
            _103 = mem[_19 + 64]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _50 * Mask(112, 0, _59) / Mask(112, 0, _62)
            require ext_code.size(address(_103))
            call address(_103).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _50 * Mask(112, 0, _59) / Mask(112, 0, _62)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_117] == bool(mem[_117])
            if 0 >= mem[_19 + 96]:
                revert with 'NH{q', 50
            if mem[_19 + 128] <= _50:
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _50 * Mask(112, 0, _59) / Mask(112, 0, _62):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _171 = mem[_165]
                    require mem[_165] == mem[_165]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _171
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _171
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_228] == bool(mem[_228])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _318 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_297] == mem[_297]
                    mem[_318] = mem[_297]
                    require mem[_297 + 32] == mem[_297 + 32]
                    mem[_318 + 32] = mem[_297 + 32]
                    require mem[_297 + 64] == mem[_297 + 64]
                    mem[_318 + 64] = mem[_297 + 64]
                    require mem[_297 + 96] == mem[_297 + 96]
                    mem[_318 + 96] = mem[_297 + 96]
                    _420 = mem[_318]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _439 = mem[_427]
                    require mem[_427] == mem[_427]
                    mem[mem[64] + 4] = _171
                    mem[mem[64] + 36] = _439
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _171, _439, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_510] == mem[_510]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _598 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_582] == mem[_582]
                    mem[_598] = mem[_582]
                    require mem[_582 + 32] == mem[_582 + 32]
                    mem[_598 + 32] = mem[_582 + 32]
                    require mem[_582 + 64] == mem[_582 + 64]
                    mem[_598 + 64] = mem[_582 + 64]
                    require mem[_582 + 96] == mem[_582 + 96]
                    if _420 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _420 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_598] <= _420 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_598] < _420:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_598] - _420
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _150 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _155 = mem[_19 + 160]
                    if mem[_19 + 160] < _50 * Mask(112, 0, _59) / Mask(112, 0, _62):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _155 - (_50 * Mask(112, 0, _59) / Mask(112, 0, _62))
                    require ext_code.size(address(_150))
                    call address(_150).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _155 - (_50 * Mask(112, 0, _59) / Mask(112, 0, _62))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_205] == bool(mem[_205])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _268 = mem[_264]
                    require mem[_264] == mem[_264]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _268
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _268
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_335] == bool(mem[_335])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _395 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _413 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_395] == mem[_395]
                    mem[_413] = mem[_395]
                    require mem[_395 + 32] == mem[_395 + 32]
                    mem[_413 + 32] = mem[_395 + 32]
                    require mem[_395 + 64] == mem[_395 + 64]
                    mem[_413 + 64] = mem[_395 + 64]
                    require mem[_395 + 96] == mem[_395 + 96]
                    mem[_413 + 96] = mem[_395 + 96]
                    _523 = mem[_413]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _542 = mem[_535]
                    require mem[_535] == mem[_535]
                    mem[mem[64] + 4] = _268
                    mem[mem[64] + 36] = _542
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _268, _542, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_617] == mem[_617]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _693 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_677] == mem[_677]
                    mem[_693] = mem[_677]
                    require mem[_677 + 32] == mem[_677 + 32]
                    mem[_693 + 32] = mem[_677 + 32]
                    require mem[_677 + 64] == mem[_677 + 64]
                    mem[_693 + 64] = mem[_677 + 64]
                    require mem[_677 + 96] == mem[_677 + 96]
                    if _523 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _523 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_693] <= _523 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_693] < _523:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_693] - _523
            else:
                if 0 >= mem[_19]:
                    revert with 'NH{q', 50
                _138 = mem[_19 + 32]
                if 0 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                _147 = mem[_19 + 128]
                if mem[_19 + 128] < _50:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = VAULTAddress
                mem[mem[64] + 36] = _147 - _50
                require ext_code.size(address(_138))
                call address(_138).0xa9059cbb with:
                     gas gas_remaining wei
                    args VAULTAddress, _147 - _50
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_201] == bool(mem[_201])
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _50 * Mask(112, 0, _59) / Mask(112, 0, _62):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _269 = mem[_265]
                    require mem[_265] == mem[_265]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _269
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _269
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_336] == bool(mem[_336])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _396 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _414 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_396] == mem[_396]
                    mem[_414] = mem[_396]
                    require mem[_396 + 32] == mem[_396 + 32]
                    mem[_414 + 32] = mem[_396 + 32]
                    require mem[_396 + 64] == mem[_396 + 64]
                    mem[_414 + 64] = mem[_396 + 64]
                    require mem[_396 + 96] == mem[_396 + 96]
                    mem[_414 + 96] = mem[_396 + 96]
                    _526 = mem[_414]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _543 = mem[_536]
                    require mem[_536] == mem[_536]
                    mem[mem[64] + 4] = _269
                    mem[mem[64] + 36] = _543
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _269, _543, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_618] == mem[_618]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _694 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_678] == mem[_678]
                    mem[_694] = mem[_678]
                    require mem[_678 + 32] == mem[_678 + 32]
                    mem[_694 + 32] = mem[_678 + 32]
                    require mem[_678 + 64] == mem[_678 + 64]
                    mem[_694 + 64] = mem[_678 + 64]
                    require mem[_678 + 96] == mem[_678 + 96]
                    if _526 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _526 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_694] <= _526 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_694] < _526:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_694] - _526
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _236 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _241 = mem[_19 + 160]
                    if mem[_19 + 160] < _50 * Mask(112, 0, _59) / Mask(112, 0, _62):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _241 - (_50 * Mask(112, 0, _59) / Mask(112, 0, _62))
                    require ext_code.size(address(_236))
                    call address(_236).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _241 - (_50 * Mask(112, 0, _59) / Mask(112, 0, _62))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_303] == bool(mem[_303])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _368 = mem[_365]
                    require mem[_365] == mem[_365]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _368
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _368
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_442] == bool(mem[_442])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _514 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_496] == mem[_496]
                    mem[_514] = mem[_496]
                    require mem[_496 + 32] == mem[_496 + 32]
                    mem[_514 + 32] = mem[_496 + 32]
                    require mem[_496 + 64] == mem[_496 + 64]
                    mem[_514 + 64] = mem[_496 + 64]
                    require mem[_496 + 96] == mem[_496 + 96]
                    mem[_514 + 96] = mem[_496 + 96]
                    _628 = mem[_514]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _640 = mem[_634]
                    require mem[_634] == mem[_634]
                    mem[mem[64] + 4] = _368
                    mem[mem[64] + 36] = _640
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _368, _640, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_712] == mem[_712]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _770 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_756] == mem[_756]
                    mem[_770] = mem[_756]
                    require mem[_756 + 32] == mem[_756 + 32]
                    mem[_770 + 32] = mem[_756 + 32]
                    require mem[_756 + 64] == mem[_756 + 64]
                    mem[_770 + 64] = mem[_756 + 64]
                    require mem[_756 + 96] == mem[_756 + 96]
                    if _628 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _628 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_770] <= _628 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_770] < _628:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_770] - _628
        else:
            if _54 and Mask(112, 0, _62) > -1 / _54:
                revert with 'NH{q', 17
            if not Mask(112, 0, _59):
                revert with 'NH{q', 18
            if 0 >= mem[_19]:
                revert with 'NH{q', 50
            _93 = mem[_19 + 32]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _54 * Mask(112, 0, _62) / Mask(112, 0, _59)
            require ext_code.size(address(_93))
            call address(_93).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _54 * Mask(112, 0, _62) / Mask(112, 0, _59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_109] == bool(mem[_109])
            if 1 >= mem[_19]:
                revert with 'NH{q', 50
            _122 = mem[_19 + 64]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _54
            require ext_code.size(address(_122))
            call address(_122).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _54
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_154] == bool(mem[_154])
            if 0 >= mem[_19 + 96]:
                revert with 'NH{q', 50
            if mem[_19 + 128] <= _54 * Mask(112, 0, _62) / Mask(112, 0, _59):
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _54:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _217 = mem[_214]
                    require mem[_214] == mem[_214]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _217
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _217
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_280] == bool(mem[_280])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _357 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_341] == mem[_341]
                    mem[_357] = mem[_341]
                    require mem[_341 + 32] == mem[_341 + 32]
                    mem[_357 + 32] = mem[_341 + 32]
                    require mem[_341 + 64] == mem[_341 + 64]
                    mem[_357 + 64] = mem[_341 + 64]
                    require mem[_341 + 96] == mem[_341 + 96]
                    mem[_357 + 96] = mem[_341 + 96]
                    _470 = mem[_357]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _485 = mem[_474]
                    require mem[_474] == mem[_474]
                    mem[mem[64] + 4] = _217
                    mem[mem[64] + 36] = _485
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _217, _485, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_559] == mem[_559]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _638 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_620] == mem[_620]
                    mem[_638] = mem[_620]
                    require mem[_620 + 32] == mem[_620 + 32]
                    mem[_638 + 32] = mem[_620 + 32]
                    require mem[_620 + 64] == mem[_620 + 64]
                    mem[_638 + 64] = mem[_620 + 64]
                    require mem[_620 + 96] == mem[_620 + 96]
                    if _470 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _470 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_638] <= _470 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_638] < _470:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_638] - _470
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _190 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _193 = mem[_19 + 160]
                    if mem[_19 + 160] < _54:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _193 - _54
                    require ext_code.size(address(_190))
                    call address(_190).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _193 - _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_249] == bool(mem[_249])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _322 = mem[_316]
                    require mem[_316] == mem[_316]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _322
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _322
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_381] == bool(mem[_381])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _462 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_447] == mem[_447]
                    mem[_462] = mem[_447]
                    require mem[_447 + 32] == mem[_447 + 32]
                    mem[_462 + 32] = mem[_447 + 32]
                    require mem[_447 + 64] == mem[_447 + 64]
                    mem[_462 + 64] = mem[_447 + 64]
                    require mem[_447 + 96] == mem[_447 + 96]
                    mem[_462 + 96] = mem[_447 + 96]
                    _576 = mem[_462]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _592 = mem[_585]
                    require mem[_585] == mem[_585]
                    mem[mem[64] + 4] = _322
                    mem[mem[64] + 36] = _592
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _322, _592, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == mem[_658]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _727 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_715] == mem[_715]
                    mem[_727] = mem[_715]
                    require mem[_715 + 32] == mem[_715 + 32]
                    mem[_727 + 32] = mem[_715 + 32]
                    require mem[_715 + 64] == mem[_715 + 64]
                    mem[_727 + 64] = mem[_715 + 64]
                    require mem[_715 + 96] == mem[_715 + 96]
                    if _576 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _576 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_727] <= _576 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_727] < _576:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_727] - _576
            else:
                if 0 >= mem[_19]:
                    revert with 'NH{q', 50
                _180 = mem[_19 + 32]
                if 0 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                _187 = mem[_19 + 128]
                if mem[_19 + 128] < _54 * Mask(112, 0, _62) / Mask(112, 0, _59):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = VAULTAddress
                mem[mem[64] + 36] = _187 - (_54 * Mask(112, 0, _62) / Mask(112, 0, _59))
                require ext_code.size(address(_180))
                call address(_180).0xa9059cbb with:
                     gas gas_remaining wei
                    args VAULTAddress, _187 - (_54 * Mask(112, 0, _62) / Mask(112, 0, _59))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == bool(mem[_246])
                if 1 >= mem[_19 + 96]:
                    revert with 'NH{q', 50
                if mem[_19 + 160] <= _54:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _323 = mem[_317]
                    require mem[_317] == mem[_317]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _323
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _323
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_382] == bool(mem[_382])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _463 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_448] == mem[_448]
                    mem[_463] = mem[_448]
                    require mem[_448 + 32] == mem[_448 + 32]
                    mem[_463 + 32] = mem[_448 + 32]
                    require mem[_448 + 64] == mem[_448 + 64]
                    mem[_463 + 64] = mem[_448 + 64]
                    require mem[_448 + 96] == mem[_448 + 96]
                    mem[_463 + 96] = mem[_448 + 96]
                    _579 = mem[_463]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _586 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _593 = mem[_586]
                    require mem[_586] == mem[_586]
                    mem[mem[64] + 4] = _323
                    mem[mem[64] + 36] = _593
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _323, _593, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_659] == mem[_659]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _728 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_716] == mem[_716]
                    mem[_728] = mem[_716]
                    require mem[_716 + 32] == mem[_716 + 32]
                    mem[_728 + 32] = mem[_716 + 32]
                    require mem[_716 + 64] == mem[_716 + 64]
                    mem[_728 + 64] = mem[_716 + 64]
                    require mem[_716 + 96] == mem[_716 + 96]
                    if _579 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _579 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_728] <= _579 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_728] < _579:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_728] - _579
                else:
                    if 1 >= mem[_19]:
                        revert with 'NH{q', 50
                    _286 = mem[_19 + 64]
                    if 1 >= mem[_19 + 96]:
                        revert with 'NH{q', 50
                    _290 = mem[_19 + 160]
                    if mem[_19 + 160] < _54:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = VAULTAddress
                    mem[mem[64] + 36] = _290 - _54
                    require ext_code.size(address(_286))
                    call address(_286).0xa9059cbb with:
                         gas gas_remaining wei
                        args VAULTAddress, _290 - _54
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_351] == bool(mem[_351])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x6a627842 with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _419 = mem[_412]
                    require mem[_412] == mem[_412]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _419
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _419
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _488 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_488] == bool(mem[_488])
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _564 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_548] == mem[_548]
                    mem[_564] = mem[_548]
                    require mem[_548 + 32] == mem[_548 + 32]
                    mem[_564 + 32] = mem[_548 + 32]
                    require mem[_548 + 64] == mem[_548 + 64]
                    mem[_564 + 64] = mem[_548 + 64]
                    require mem[_548 + 96] == mem[_548 + 96]
                    mem[_564 + 96] = mem[_548 + 96]
                    _674 = mem[_564]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _686 = mem[_682]
                    require mem[_682] == mem[_682]
                    mem[mem[64] + 4] = _419
                    mem[mem[64] + 36] = _686
                    mem[mem[64] + 68] = address(cd[132])
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _419, _686, address(cd[132])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_746] == mem[_746]
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[132])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _798 = mem[64]
                    if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 128
                    require mem[_788] == mem[_788]
                    mem[_798] = mem[_788]
                    require mem[_788 + 32] == mem[_788 + 32]
                    mem[_798 + 32] = mem[_788 + 32]
                    require mem[_788 + 64] == mem[_788 + 64]
                    mem[_798 + 64] = mem[_788 + 64]
                    require mem[_788 + 96] == mem[_788 + 96]
                    if _674 > -cd[100] - 1:
                        revert with 'NH{q', 17
                    if _674 + cd[100] > -cd[164] - 1:
                        revert with 'NH{q', 17
                    if mem[_798] <= _674 + cd[100] + cd[164]:
                        revert with 0, 'PROFIT'
                    if mem[_798] < _674:
                        revert with 'NH{q', 17
                    emit 0xdee19ff7: address(cd[132]), address(cd[68]), cd[100], mem[_798] - _674
}



}
