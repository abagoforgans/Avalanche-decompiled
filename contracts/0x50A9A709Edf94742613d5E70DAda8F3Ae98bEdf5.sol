contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e189e5dfAddress;
address sub_d5dfff78Address;
address sub_f5279a6eAddress;
uint256 sub_aceaf92d;
uint256 stor5; offset 32
uint256 amountOutMin;

function amountOutMin() {
    return amountOutMin
}

function owner() {
    return owner
}

function sub_aceaf92d(?) {
    return sub_aceaf92d
}

function sub_d5dfff78(?) {
    return sub_d5dfff78Address
}

function sub_e189e5df(?) {
    return sub_e189e5dfAddress
}

function sub_f5279a6e(?) {
    return sub_f5279a6eAddress
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

function withdraw() {
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

function sub_68f71387(?) {
    require ext_code.size(sub_f5279a6eAddress)
    call sub_f5279a6eAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_e189e5dfAddress, sub_aceaf92d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    require ext_code.size(sub_f5279a6eAddress)
    call sub_f5279a6eAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_d5dfff78Address, sub_aceaf92d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
}

function sub_72897e08(?) payable {
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > -901:
        revert with 'NH{q', 17
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = amountOutMin
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 262
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = block.timestamp + 900
    require ext_code.size(sub_e189e5dfAddress)
    call sub_e189e5dfAddress.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args amountOutMin, Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 262 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 900
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    _81 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5
    require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 <= test266151307()
    require floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 129 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + return_data.size + 98
    _82 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 99 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]
    require _81 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + _81 + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 130
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] == mem[_102]
    mem[mem[64] + 4] = sub_d5dfff78Address
    mem[mem[64] + 36] = sub_aceaf92d
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_d5dfff78Address, sub_aceaf92d
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == bool(mem[_106])
    if not mem[_106]:
        revert with 0, 'approve failed.'
    if block.timestamp > -901:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _103
    mem[mem[64] + 36] = amountOutMin
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_d5dfff78Address)
    call sub_d5dfff78Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _103, amountOutMin, Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), msg.sender, block.timestamp + 900
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae783f53(?) payable {
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > -901:
        revert with 'NH{q', 17
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = amountOutMin
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 262
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = block.timestamp + 900
    require ext_code.size(sub_d5dfff78Address)
    call sub_d5dfff78Address.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args amountOutMin, Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 262 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 900
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    _81 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5
    require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 <= test266151307()
    require floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 129 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + return_data.size + 98
    _82 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 99 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 len 4], stor5 + 98]
    require _81 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + _81 + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 130
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] == mem[_102]
    mem[mem[64] + 4] = sub_e189e5dfAddress
    mem[mem[64] + 36] = sub_aceaf92d
    require ext_code.size(address(cd[4]))
    call address(cd[4]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_e189e5dfAddress, sub_aceaf92d
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == bool(mem[_106])
    if not mem[_106]:
        revert with 0, 'approve failed.'
    if block.timestamp > -901:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _103
    mem[mem[64] + 36] = amountOutMin
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 196
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_e189e5dfAddress)
    call sub_e189e5dfAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _103, amountOutMin, Array(len=('cd', 68).length, data=mem[mem[64] + 196 len 32 * ('cd', 68).length]), msg.sender, block.timestamp + 900
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
