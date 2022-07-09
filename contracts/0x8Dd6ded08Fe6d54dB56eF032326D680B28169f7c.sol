contract main {




// =====================  Runtime code  =====================


#
#  - sub_3da665f3(?)
#  - withdrawnToken(address arg1, uint256 arg2)
#
address owner;
mapping of uint8 stor1;
address stor2;

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

function sub_ab5cd5ba(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
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

function wrap(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if eth.balance(this.address) < arg1:
        revert with 0, 'Insufficient ETH'
    if eth.balance(this.address) > 0:
        require ext_code.size(stor2)
        call stor2.deposit() with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
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
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient WETH9'
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor2)
        call stor2.0x2e1a7d4d with:
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
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor2
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 36).length) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[68]
    mem[floor32(('cd', 36).length) + 133] = 64
    mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 197
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        return 0
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _67 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _69 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    require _67 + (32 * _69) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + _67 + 129
    s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 36).length) + _67 + (32 * _69) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require _69 >= 2
    if 0 >= _69:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
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
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor2
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 36).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[68]
    mem[floor32(('cd', 36).length) + 133] = 64
    mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 197
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        return 0
    mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _68 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
    _70 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    require _68 + (32 * _70) + 32 <= return_data.size
    idx = floor32(('cd', 36).length) + _68 + 129
    s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 36).length) + _68 + (32 * _70) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require _70 >= 2
    if _70 < 1:
        revert with 'NH{q', 17
    if _70 - 1 >= _70:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _70 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
    return memory
      from mem[64]
       len 32
}



}
