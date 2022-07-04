contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
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

function sub_4778a7f0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function togglePaused() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
    else:
        if not uint8(stor0.field_160):
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
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

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_caf58552(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    idx = 0
    while idx < cd[36]:
        _34 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        s = 0
        t = cd[100] + 36
        u = mem[64] + 100
        while s < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _34 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _62 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _63 = mem[_62]
        require mem[_62] <= test266151307()
        require _62 + mem[_62] + 31 < _62 + return_data.size
        _64 = mem[_62 + mem[_62]]
        if mem[_62 + mem[_62]] > test266151307():
            revert with 'NH{q', 65
        if _62 + ceil32(return_data.size) + floor32(mem[_62 + mem[_62]]) + 1 > test266151307() or floor32(mem[_62 + mem[_62]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _62 + ceil32(return_data.size) + floor32(mem[_62 + mem[_62]]) + 1
        mem[_62 + ceil32(return_data.size)] = _64
        require _63 + (32 * _64) + 32 <= return_data.size
        s = 0
        t = _62 + _63 + 32
        u = _62 + ceil32(return_data.size) + 32
        while s < _64:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if 0 >= _64:
            revert with 'NH{q', 50
        if mem[_62 + ceil32(return_data.size) + 32] >= eth.balance(this.address):
            _91 = mem[64]
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 164
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_91 + 68] = msg.sender
            mem[_91 + 100] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _91 + (32 * ('cd', 100).length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_111]
            require mem[_111] <= test266151307()
            require _111 + mem[_111] + 31 < _111 + return_data.size
            _115 = mem[_111 + mem[_111]]
            if mem[_111 + mem[_111]] > test266151307():
                revert with 'NH{q', 65
            if _111 + ceil32(return_data.size) + floor32(mem[_111 + mem[_111]]) + 1 > test266151307() or floor32(mem[_111 + mem[_111]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _111 + ceil32(return_data.size) + floor32(mem[_111 + mem[_111]]) + 1
            mem[_111 + ceil32(return_data.size)] = _115
            require _113 + (32 * _115) + 32 <= return_data.size
            idx = 0
            s = _111 + _113 + 32
            t = _111 + ceil32(return_data.size) + 32
            while idx < _115:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _64:
            revert with 'NH{q', 50
        _92 = mem[_62 + ceil32(return_data.size) + 32]
        _93 = mem[64]
        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 100).length
        s = 0
        t = cd[100] + 36
        u = mem[64] + 164
        while s < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_93 + 68] = msg.sender
        mem[_93 + 100] = block.timestamp
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
           value _92 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _93 + (32 * ('cd', 100).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _112 = mem[_110]
        require mem[_110] <= test266151307()
        require _110 + mem[_110] + 31 < _110 + return_data.size
        _114 = mem[_110 + mem[_110]]
        if mem[_110 + mem[_110]] > test266151307():
            revert with 'NH{q', 65
        if _110 + ceil32(return_data.size) + floor32(mem[_110 + mem[_110]]) + 1 > test266151307() or floor32(mem[_110 + mem[_110]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _110 + ceil32(return_data.size) + floor32(mem[_110 + mem[_110]]) + 1
        mem[_110 + ceil32(return_data.size)] = _114
        require _112 + (32 * _114) + 32 <= return_data.size
        s = 0
        t = _110 + _112 + 32
        u = _110 + ceil32(return_data.size) + 32
        while s < _114:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
