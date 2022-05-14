contract main {




// =====================  Runtime code  =====================


#
#  - sub_3da665f3(?)
#  - withdrawnToken(address arg1, uint256 arg2)
#
address owner;
address stor1;

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

function withdrawn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(arg1, 0, msg.sender);
}

function wrap(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if eth.balance(this.address) < arg1:
        revert with 0, 'Insufficient ETH'
    if eth.balance(this.address) > 0:
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function unwrapWETH9(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient WETH9'
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.0x2e1a7d4d with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg2 with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'STE'
}

function sub_6b0d3508(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    require ('cd', 36).length > 1
    require cd[68] > 0
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == mem[_58 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_58 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _53 = mem[64]
    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    _59 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _59:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _53 + (32 * _59) + -mem[64] + 96]
    if not ext_call.success:
        return 0
    _78 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _79 = mem[_78]
    require mem[_78] <= test266151307()
    require _78 + mem[_78] + 31 < _78 + return_data.size
    _81 = mem[_78 + mem[_78]]
    if mem[_78 + mem[_78]] > test266151307():
        revert with 'NH{q', 65
    if _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1 > test266151307() or floor32(mem[_78 + mem[_78]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1
    mem[_78 + ceil32(return_data.size)] = _81
    require _79 + (32 * _81) + 32 <= return_data.size
    idx = _78 + _79 + 32
    s = _78 + ceil32(return_data.size) + 32
    while idx < _78 + _79 + (32 * _81) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require _81 >= 2
    if 0 >= _81:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[_78 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_33456d78(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).WETH() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == mem[_58 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_58 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _53 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    _59 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _59:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _53 + (32 * _59) + -mem[64] + 96]
    if not ext_call.success:
        return 0
    _79 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _80 = mem[_79]
    require mem[_79] <= test266151307()
    require _79 + mem[_79] + 31 < _79 + return_data.size
    _82 = mem[_79 + mem[_79]]
    if mem[_79 + mem[_79]] > test266151307():
        revert with 'NH{q', 65
    if _79 + ceil32(return_data.size) + floor32(mem[_79 + mem[_79]]) + 1 > test266151307() or floor32(mem[_79 + mem[_79]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _79 + ceil32(return_data.size) + floor32(mem[_79 + mem[_79]]) + 1
    mem[_79 + ceil32(return_data.size)] = _82
    require _80 + (32 * _82) + 32 <= return_data.size
    idx = _79 + _80 + 32
    s = _79 + ceil32(return_data.size) + 32
    while idx < _79 + _80 + (32 * _82) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require _82 >= 2
    if _82 < 1:
        revert with 'NH{q', 17
    if _82 - 1 >= _82:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _82 - 1) + _79 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}



}
