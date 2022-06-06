contract main {




// =====================  Runtime code  =====================


#
#  - sub_7a945e18(?)
#
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

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

function retrieve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0f022812(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function send(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_833d4bd0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_87965661(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _23 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _24 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _23 + (32 * _24) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _23 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _24:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _49 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _50 = mem[_49]
    require mem[_49] == mem[_49]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _50
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _50
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_53] == bool(mem[_53])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _55 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _50
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_55 + 100] = this.address
    mem[_55 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _55 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] <= test266151307()
    require _73 + mem[_73] + 31 < _73 + return_data.size
    _75 = mem[_73 + mem[_73]]
    if mem[_73 + mem[_73]] > test266151307():
        revert with 'NH{q', 65
    if _73 + ceil32(return_data.size) + floor32(mem[_73 + mem[_73]]) + 1 > test266151307() or floor32(mem[_73 + mem[_73]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _73 + ceil32(return_data.size) + floor32(mem[_73 + mem[_73]]) + 1
    mem[_73 + ceil32(return_data.size)] = _75
    require _74 + (32 * _75) + 32 <= return_data.size
    idx = 0
    s = _73 + _74 + 32
    t = _73 + ceil32(return_data.size) + 32
    while idx < _75:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] == mem[_109]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _110
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _110
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_113] == bool(mem[_113])
    mem[mem[64] + 4] = _110
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args _110
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_117] == mem[_117]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _122 = mem[_121]
    require mem[_121] == mem[_121]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _122
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _122
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _125 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_125] == bool(mem[_125])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _122, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_131] == mem[_131]
    if mem[_131] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_131] - ext_call.return_data[0] < 0:
        revert with 0, 'no arb opportunity'
}

function sub_fb90e4c9(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _24 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _25 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _24 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _51 = mem[_50]
    require mem[_50] == mem[_50]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _51
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _51
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _54 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_54] == bool(mem[_54])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _56 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _51
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_56 + 100] = this.address
    mem[_56 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _56 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] <= test266151307()
    require _74 + mem[_74] + 31 < _74 + return_data.size
    _76 = mem[_74 + mem[_74]]
    if mem[_74 + mem[_74]] > test266151307():
        revert with 'NH{q', 65
    if _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1 > test266151307() or floor32(mem[_74 + mem[_74]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _74 + ceil32(return_data.size) + floor32(mem[_74 + mem[_74]]) + 1
    mem[_74 + ceil32(return_data.size)] = _76
    require _75 + (32 * _76) + 32 <= return_data.size
    idx = 0
    s = _74 + _75 + 32
    t = _74 + ceil32(return_data.size) + 32
    while idx < _76:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] == mem[_110]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _111
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_114] == bool(mem[_114])
    mem[mem[64] + 4] = _111
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_118] == mem[_118]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _123 = mem[_122]
    require mem[_122] == mem[_122]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _123
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _123
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_126] == bool(mem[_126])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _123, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_132] == mem[_132]
    if mem[_132] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_132] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_dc04937c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = stor5
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 100] = stor3
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[(11 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(11 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(12 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 132] = 0
    mem[(12 * ceil32(return_data.size)) + 164] = 160
    mem[(12 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (12 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(12 * ceil32(return_data.size)) + 196] = this.address
    mem[(12 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(12 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _56 = mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (12 * ceil32(return_data.size)) + return_data.size + 96
    _57 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(13 * ceil32(return_data.size)) + 96] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _56 + (32 * _57) + 32 <= return_data.size
    idx = 0
    s = (12 * ceil32(return_data.size)) + _56 + 128
    t = (13 * ceil32(return_data.size)) + 128
    while idx < _57:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _83 = mem[_82]
    require mem[_82] == mem[_82]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _83
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _83
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_86] == bool(mem[_86])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _88 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _83
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_88 + 100] = this.address
    mem[_88 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _88 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] <= test266151307()
    require _102 + mem[_102] + 31 < _102 + return_data.size
    _104 = mem[_102 + mem[_102]]
    if mem[_102 + mem[_102]] > test266151307():
        revert with 'NH{q', 65
    if _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1 > test266151307() or floor32(mem[_102 + mem[_102]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1
    mem[_102 + ceil32(return_data.size)] = _104
    require _103 + (32 * _104) + 32 <= return_data.size
    idx = 0
    s = _102 + _103 + 32
    t = _102 + ceil32(return_data.size) + 32
    while idx < _104:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_116] == mem[_116]
    if mem[_116] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_116] - ext_call.return_data[0] < 0:
        revert with 0, 'no arb opportunity'
}

function sub_3db2c2ef(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = stor5
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 100] = stor3
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[(11 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(11 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(12 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 132] = 0
    mem[(12 * ceil32(return_data.size)) + 164] = 160
    mem[(12 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (12 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(12 * ceil32(return_data.size)) + 196] = this.address
    mem[(12 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(12 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _56 = mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (12 * ceil32(return_data.size)) + return_data.size + 96
    _57 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(13 * ceil32(return_data.size)) + 96] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _56 + (32 * _57) + 32 <= return_data.size
    idx = 0
    s = (12 * ceil32(return_data.size)) + _56 + 128
    t = (13 * ceil32(return_data.size)) + 128
    while idx < _57:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _83 = mem[_82]
    require mem[_82] == mem[_82]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _83
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _83
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_86] == bool(mem[_86])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _88 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _83
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_88 + 100] = this.address
    mem[_88 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _88 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] <= test266151307()
    require _102 + mem[_102] + 31 < _102 + return_data.size
    _104 = mem[_102 + mem[_102]]
    if mem[_102 + mem[_102]] > test266151307():
        revert with 'NH{q', 65
    if _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1 > test266151307() or floor32(mem[_102 + mem[_102]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _102 + ceil32(return_data.size) + floor32(mem[_102 + mem[_102]]) + 1
    mem[_102 + ceil32(return_data.size)] = _104
    require _103 + (32 * _104) + 32 <= return_data.size
    idx = 0
    s = _102 + _103 + 32
    t = _102 + ceil32(return_data.size) + 32
    while idx < _104:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_116] == mem[_116]
    if mem[_116] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_116] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_bde871bb(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _19 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _20 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _19 + (32 * _20) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _19 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _20:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_42] == bool(mem[_42])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _44 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_44 + 100] = this.address
    mem[_44 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _44 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _64 = mem[_63]
    require mem[_63] <= test266151307()
    require _63 + mem[_63] + 31 < _63 + return_data.size
    _65 = mem[_63 + mem[_63]]
    if mem[_63 + mem[_63]] > test266151307():
        revert with 'NH{q', 65
    if _63 + ceil32(return_data.size) + floor32(mem[_63 + mem[_63]]) + 1 > test266151307() or floor32(mem[_63 + mem[_63]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _63 + ceil32(return_data.size) + floor32(mem[_63 + mem[_63]]) + 1
    mem[_63 + ceil32(return_data.size)] = _65
    require _64 + (32 * _65) + 32 <= return_data.size
    idx = 0
    s = _63 + _64 + 32
    t = _63 + ceil32(return_data.size) + 32
    while idx < _65:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _88 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _89 = mem[_88]
    require mem[_88] == mem[_88]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] == mem[_92]
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _89
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _89
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_96] == bool(mem[_96])
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _93
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _93
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_100] == bool(mem[_100])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _93
    mem[mem[64] + 100] = _89
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[132]))
    call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor4, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), _93, _89, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_104] == mem[_104]
    require mem[_104 + 32] == mem[_104 + 32]
    require mem[_104 + 64] == mem[_104 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] == mem[_110]
    mem[mem[64] + 4] = address(cd[196])
    mem[mem[64] + 36] = _111
    require ext_code.size(address(cd[164]))
    call address(cd[164]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[196]), _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_114] == bool(mem[_114])
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _119 = mem[_118]
    require mem[_118] == mem[_118]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _123 = mem[_122]
    require mem[_122] == mem[_122]
    require mem[_122 + 32] == mem[_122 + 32]
    require mem[_122 + 64] == mem[_122 + 92 len 4]
    require mem[_122 + 96] == mem[_122 + 124 len 4]
    mem[mem[64] + 4] = _111
    mem[mem[64] + 36] = _119
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(cd[196]))
    call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _111, _119, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_133] == mem[_133]
    require mem[_133 + 32] == mem[_133 + 32]
    require mem[_133 + 64] == mem[_133 + 92 len 4]
    require mem[_133 + 96] == mem[_133 + 124 len 4]
    if mem[_133] < _123:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_133] - _123
    return memory
      from mem[64]
       len 32
}

function sub_fe5b78e8(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == cd[228]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _18 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _19:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_41] == bool(mem[_41])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _43 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = mem[64] + 196
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_43 + 100] = this.address
    mem[_43 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _43 + (32 * ('cd', 100).length) + -mem[64] + 192]
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
    idx = 0
    s = _62 + _63 + 32
    t = _62 + ceil32(return_data.size) + 32
    while idx < _64:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _87 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _88 = mem[_87]
    require mem[_87] == mem[_87]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _92 = mem[_91]
    require mem[_91] == mem[_91]
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _88
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _88
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == bool(mem[_95])
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _92
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _92
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_99] == bool(mem[_99])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _92
    mem[mem[64] + 100] = _88
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[132]))
    call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor4, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), _92, _88, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_103] == mem[_103]
    require mem[_103 + 32] == mem[_103 + 32]
    require mem[_103 + 64] == mem[_103 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] == mem[_109]
    mem[mem[64] + 4] = address(cd[196])
    mem[mem[64] + 36] = _110
    require ext_code.size(address(cd[164]))
    call address(cd[164]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[196]), _110
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_113] == bool(mem[_113])
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _122 = mem[_121]
    require mem[_121] == mem[_121]
    require mem[_121 + 32] == mem[_121 + 32]
    require mem[_121 + 64] == mem[_121 + 92 len 4]
    require mem[_121 + 96] == mem[_121 + 124 len 4]
    mem[mem[64] + 4] = _110
    mem[mem[64] + 36] = _118
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(cd[196]))
    call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _110, _118, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_128] == mem[_128]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_132] == mem[_132]
    require mem[_132 + 32] == mem[_132 + 32]
    require mem[_132 + 64] == mem[_132 + 92 len 4]
    require mem[_132 + 96] == mem[_132 + 124 len 4]
    if mem[_132] < _122:
        revert with 'NH{q', 17
    if mem[_132] - _122 < cd[228]:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
}

function sub_030cddb4(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) != stor3:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = 0
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _48 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _49 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _48 + (32 * _49) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _48 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _49:
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
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _112 = mem[_110]
        require mem[_110] == mem[_110]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _112
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _112
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_115] == bool(mem[_115])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _124 = mem[_122]
        require mem[_122] == mem[_122]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _130 = mem[_128]
        require mem[_128] == mem[_128]
        require mem[_128 + 32] == mem[_128 + 32]
        require mem[_128 + 64] == mem[_128 + 92 len 4]
        require mem[_128 + 96] == mem[_128 + 124 len 4]
        mem[mem[64] + 4] = _112
        mem[mem[64] + 36] = _124
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _112, _124, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_147] == mem[_147]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_154] == mem[_154]
        require mem[_154 + 32] == mem[_154 + 32]
        require mem[_154 + 64] == mem[_154 + 92 len 4]
        require mem[_154 + 96] == mem[_154 + 124 len 4]
        if mem[_154] < _130:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_154] - _130
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = stor5
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 100] = stor3
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 132] = 0
        mem[(11 * ceil32(return_data.size)) + 164] = 160
        mem[(11 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (11 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(11 * ceil32(return_data.size)) + 196] = this.address
        mem[(11 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _105 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
        _106 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(12 * ceil32(return_data.size)) + 96] = _106
        require _105 + (32 * _106) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + _105 + 128
        t = (12 * ceil32(return_data.size)) + 128
        while idx < _106:
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
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_171]
        require mem[_171] == mem[_171]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _172
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _172
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_175] == bool(mem[_175])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _180 = mem[_179]
        require mem[_179] == mem[_179]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _184 = mem[_183]
        require mem[_183] == mem[_183]
        require mem[_183 + 32] == mem[_183 + 32]
        require mem[_183 + 64] == mem[_183 + 92 len 4]
        require mem[_183 + 96] == mem[_183 + 124 len 4]
        mem[mem[64] + 4] = _172
        mem[mem[64] + 36] = _180
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _172, _180, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_190] == mem[_190]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_194] == mem[_194]
        require mem[_194 + 32] == mem[_194 + 32]
        require mem[_194 + 64] == mem[_194 + 92 len 4]
        require mem[_194 + 96] == mem[_194 + 124 len 4]
        if mem[_194] < _184:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_194] - _184
    return memory
      from mem[64]
       len 32
}

function sub_ae0e405d(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) != stor3:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = 0
        mem[(2 * ceil32(return_data.size)) + 164] = 160
        mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (2 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _46 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _48 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _46 + (32 * _48) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _46 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _48:
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
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_105]
        require mem[_105] == mem[_105]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _107
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _107
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_110] == bool(mem[_110])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_117]
        require mem[_117] == mem[_117]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _125 = mem[_123]
        require mem[_123] == mem[_123]
        require mem[_123 + 32] == mem[_123 + 32]
        require mem[_123 + 64] == mem[_123 + 92 len 4]
        require mem[_123 + 96] == mem[_123 + 124 len 4]
        mem[mem[64] + 4] = _107
        mem[mem[64] + 36] = _119
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _107, _119, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_142] == mem[_142]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_149] == mem[_149]
        require mem[_149 + 32] == mem[_149 + 32]
        require mem[_149 + 64] == mem[_149 + 92 len 4]
        require mem[_149 + 96] == mem[_149 + 124 len 4]
        if mem[_149] < _125:
            revert with 'NH{q', 17
        if mem[_149] - _125 < cd[100]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = stor5
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 100] = stor3
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(11 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 132] = 0
        mem[(11 * ceil32(return_data.size)) + 164] = 160
        mem[(11 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (11 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(11 * ceil32(return_data.size)) + 196] = this.address
        mem[(11 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (12 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _100 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
        _101 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(12 * ceil32(return_data.size)) + 96] = _101
        require _100 + (32 * _101) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + _100 + 128
        t = (12 * ceil32(return_data.size)) + 128
        while idx < _101:
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
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_166]
        require mem[_166] == mem[_166]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _167
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _167
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_170] == bool(mem[_170])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _174 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _175 = mem[_174]
        require mem[_174] == mem[_174]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _179 = mem[_178]
        require mem[_178] == mem[_178]
        require mem[_178 + 32] == mem[_178 + 32]
        require mem[_178 + 64] == mem[_178 + 92 len 4]
        require mem[_178 + 96] == mem[_178 + 124 len 4]
        mem[mem[64] + 4] = _167
        mem[mem[64] + 36] = _175
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _167, _175, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == mem[_185]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_189] == mem[_189]
        require mem[_189 + 32] == mem[_189 + 32]
        require mem[_189 + 64] == mem[_189 + 92 len 4]
        require mem[_189 + 96] == mem[_189 + 124 len 4]
        if mem[_189] < _179:
            revert with 'NH{q', 17
        if mem[_189] - _179 < cd[100]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
}

function sub_20713c05(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) != stor3:
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[100])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 132] = 0
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (7 * ceil32(return_data.size)) + 292
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = this.address
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _247 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _253 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _247 + (32 * _253) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _247 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _253:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _427 = mem[_421]
            require mem[_421] == mem[_421]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _445 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _451 = mem[_445]
            require mem[_445] == mem[_445]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _427
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _427
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_469] == bool(mem[_469])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _451
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _451
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _493 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_493] == bool(mem[_493])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _451
            mem[mem[64] + 100] = _427
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _451, _427, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_517] == mem[_517]
            require mem[_517 + 32] == mem[_517 + 32]
            require mem[_517 + 64] == mem[_517 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _559 = mem[_553]
            require mem[_553] == mem[_553]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _559
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _559
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _577 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_577] == bool(mem[_577])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _601 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _607 = mem[_601]
            require mem[_601] == mem[_601]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _631 = mem[_625]
            require mem[_625] == mem[_625]
            require mem[_625 + 32] == mem[_625 + 32]
            require mem[_625 + 64] == mem[_625 + 92 len 4]
            require mem[_625 + 96] == mem[_625 + 124 len 4]
            mem[mem[64] + 4] = _559
            mem[mem[64] + 36] = _607
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _559, _607, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_667] == mem[_667]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _691 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_691] == mem[_691]
            require mem[_691 + 32] == mem[_691 + 32]
            require mem[_691 + 64] == mem[_691 + 92 len 4]
            require mem[_691 + 96] == mem[_691 + 124 len 4]
            if mem[_691] < _631:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_691] - _631
        else:
            if ext_call.return_data[12 len 20] == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(7 * ceil32(return_data.size)) + 132] = 0
                mem[(7 * ceil32(return_data.size)) + 164] = 160
                mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 196] = this.address
                mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _249 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _255 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _249 + (32 * _255) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _249 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _255:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _429 = mem[_423]
                require mem[_423] == mem[_423]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _453 = mem[_447]
                require mem[_447] == mem[_447]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _429
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _429
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_471] == bool(mem[_471])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _453
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _453
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _495 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_495] == bool(mem[_495])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _453
                mem[mem[64] + 100] = _429
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _453, _429, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_519] == mem[_519]
                require mem[_519 + 32] == mem[_519 + 32]
                require mem[_519 + 64] == mem[_519 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _561 = mem[_555]
                require mem[_555] == mem[_555]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _561
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _561
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_579] == bool(mem[_579])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _609 = mem[_603]
                require mem[_603] == mem[_603]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _633 = mem[_627]
                require mem[_627] == mem[_627]
                require mem[_627 + 32] == mem[_627 + 32]
                require mem[_627 + 64] == mem[_627 + 92 len 4]
                require mem[_627 + 96] == mem[_627 + 124 len 4]
                mem[mem[64] + 4] = _561
                mem[mem[64] + 36] = _609
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _561, _609, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_669] == mem[_669]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_693] == mem[_693]
                require mem[_693 + 32] == mem[_693 + 32]
                require mem[_693 + 64] == mem[_693 + 92 len 4]
                require mem[_693 + 96] == mem[_693 + 124 len 4]
                if mem[_693] < _633:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_693] - _633
            else:
                if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor1:
                    revert with 0, 'bad LP token'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(7 * ceil32(return_data.size)) + 132] = 0
                mem[(7 * ceil32(return_data.size)) + 164] = 160
                mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (7 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 196] = this.address
                mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _248 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _254 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _248 + (32 * _254) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _248 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _254:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _428 = mem[_422]
                require mem[_422] == mem[_422]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _452 = mem[_446]
                require mem[_446] == mem[_446]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _428
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _428
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == bool(mem[_470])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _452
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _452
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_494] == bool(mem[_494])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _452
                mem[mem[64] + 100] = _428
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _452, _428, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_518] == mem[_518]
                require mem[_518 + 32] == mem[_518 + 32]
                require mem[_518 + 64] == mem[_518 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _560 = mem[_554]
                require mem[_554] == mem[_554]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _560
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _560
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_578] == bool(mem[_578])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _608 = mem[_602]
                require mem[_602] == mem[_602]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _632 = mem[_626]
                require mem[_626] == mem[_626]
                require mem[_626 + 32] == mem[_626 + 32]
                require mem[_626 + 64] == mem[_626 + 92 len 4]
                require mem[_626 + 96] == mem[_626 + 124 len 4]
                mem[mem[64] + 4] = _560
                mem[mem[64] + 36] = _608
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _560, _608, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _668 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_668] == mem[_668]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_692] == mem[_692]
                require mem[_692 + 32] == mem[_692 + 32]
                require mem[_692 + 64] == mem[_692 + 92 len 4]
                require mem[_692 + 96] == mem[_692 + 124 len 4]
                if mem[_692] < _632:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_692] - _632
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = stor5
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 100] = stor3
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[100])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token1() with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(12 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                revert with 'NH{q', 17
            if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
            mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(14 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(14 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(14 * ceil32(return_data.size)) + 132] = 0
            mem[(14 * ceil32(return_data.size)) + 164] = 160
            mem[(14 * ceil32(return_data.size)) + 260] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = (14 * ceil32(return_data.size)) + 292
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(14 * ceil32(return_data.size)) + 196] = this.address
            mem[(14 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(14 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(14 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (15 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _250 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
            _256 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(15 * ceil32(return_data.size)) + 96] = _256
            require _250 + (32 * _256) + 32 <= return_data.size
            idx = 0
            s = (14 * ceil32(return_data.size)) + _250 + 128
            t = (15 * ceil32(return_data.size)) + 128
            while idx < _256:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _430 = mem[_424]
            require mem[_424] == mem[_424]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _454 = mem[_448]
            require mem[_448] == mem[_448]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _430
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _430
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _472 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_472] == bool(mem[_472])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _454
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _454
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_496] == bool(mem[_496])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _454
            mem[mem[64] + 100] = _430
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _454, _430, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_520] == mem[_520]
            require mem[_520 + 32] == mem[_520 + 32]
            require mem[_520 + 64] == mem[_520 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _562 = mem[_556]
            require mem[_556] == mem[_556]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _562
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _562
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _580 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_580] == bool(mem[_580])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _610 = mem[_604]
            require mem[_604] == mem[_604]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _634 = mem[_628]
            require mem[_628] == mem[_628]
            require mem[_628 + 32] == mem[_628 + 32]
            require mem[_628 + 64] == mem[_628 + 92 len 4]
            require mem[_628 + 96] == mem[_628 + 124 len 4]
            mem[mem[64] + 4] = _562
            mem[mem[64] + 36] = _610
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _562, _610, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_670] == mem[_670]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_694] == mem[_694]
            require mem[_694 + 32] == mem[_694 + 32]
            require mem[_694 + 64] == mem[_694 + 92 len 4]
            require mem[_694 + 96] == mem[_694 + 124 len 4]
            if mem[_694] < _634:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_694] - _634
        else:
            if ext_call.return_data[12 len 20] == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(12 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(14 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(14 * ceil32(return_data.size)) + 132] = 0
                mem[(14 * ceil32(return_data.size)) + 164] = 160
                mem[(14 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (14 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(14 * ceil32(return_data.size)) + 196] = this.address
                mem[(14 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(14 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _252 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _258 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = _258
                require _252 + (32 * _258) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _252 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _258:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _432 = mem[_426]
                require mem[_426] == mem[_426]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _450 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _456 = mem[_450]
                require mem[_450] == mem[_450]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _432
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _432
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _474 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_474] == bool(mem[_474])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _456
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _456
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_498] == bool(mem[_498])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _456
                mem[mem[64] + 100] = _432
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _456, _432, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_522] == mem[_522]
                require mem[_522 + 32] == mem[_522 + 32]
                require mem[_522 + 64] == mem[_522 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _558 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _564 = mem[_558]
                require mem[_558] == mem[_558]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _564
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _564
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_582] == bool(mem[_582])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _612 = mem[_606]
                require mem[_606] == mem[_606]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _636 = mem[_630]
                require mem[_630] == mem[_630]
                require mem[_630 + 32] == mem[_630 + 32]
                require mem[_630 + 64] == mem[_630 + 92 len 4]
                require mem[_630 + 96] == mem[_630 + 124 len 4]
                mem[mem[64] + 4] = _564
                mem[mem[64] + 36] = _612
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _564, _612, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_672] == mem[_672]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_696] == mem[_696]
                require mem[_696 + 32] == mem[_696 + 32]
                require mem[_696 + 64] == mem[_696 + 92 len 4]
                require mem[_696 + 96] == mem[_696 + 124 len 4]
                if mem[_696] < _636:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_696] - _636
            else:
                if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor1:
                    revert with 0, 'bad LP token'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(12 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * ext_call.return_data[0] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 and ext_call.return_data[0] / 2 > -1 / 997 * ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if 997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if 997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                    revert with 'NH{q', 18
                if ('cd', 36).length < 1:
                    revert with 'NH{q', 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(14 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(14 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(14 * ceil32(return_data.size)) + 132] = 0
                mem[(14 * ceil32(return_data.size)) + 164] = 160
                mem[(14 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (14 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(14 * ceil32(return_data.size)) + 196] = this.address
                mem[(14 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(14 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(14 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (15 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _251 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _257 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = _257
                require _251 + (32 * _257) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _251 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _257:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _431 = mem[_425]
                require mem[_425] == mem[_425]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _455 = mem[_449]
                require mem[_449] == mem[_449]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _431
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _431
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_473] == bool(mem[_473])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _455
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _455
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_497] == bool(mem[_497])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _455
                mem[mem[64] + 100] = _431
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _455, _431, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_521] == mem[_521]
                require mem[_521 + 32] == mem[_521 + 32]
                require mem[_521 + 64] == mem[_521 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _557 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _563 = mem[_557]
                require mem[_557] == mem[_557]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _563
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _563
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_581] == bool(mem[_581])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _611 = mem[_605]
                require mem[_605] == mem[_605]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _635 = mem[_629]
                require mem[_629] == mem[_629]
                require mem[_629 + 32] == mem[_629 + 32]
                require mem[_629 + 64] == mem[_629 + 92 len 4]
                require mem[_629 + 96] == mem[_629 + 124 len 4]
                mem[mem[64] + 4] = _563
                mem[mem[64] + 36] = _611
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _563, _611, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_671] == mem[_671]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_695] == mem[_695]
                require mem[_695 + 32] == mem[_695 + 32]
                require mem[_695 + 64] == mem[_695 + 92 len 4]
                require mem[_695 + 96] == mem[_695 + 124 len 4]
                if mem[_695] < _635:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_695] - _635
    return memory
      from mem[64]
       len 32
}



}
