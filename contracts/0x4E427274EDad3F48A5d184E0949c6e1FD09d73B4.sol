contract main {




// =====================  Runtime code  =====================


#
#  - sub_3db2c2ef(?)
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
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    _20 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _21 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _20 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _21:
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
    _43 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _44 = mem[_43]
    require mem[_43] == mem[_43]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _44
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _44
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _47 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_47] == bool(mem[_47])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _49 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _44
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
    mem[_49 + 100] = this.address
    mem[_49 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _49 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _66 = mem[_65]
    require mem[_65] <= test266151307()
    require _65 + mem[_65] + 31 < _65 + return_data.size
    _67 = mem[_65 + mem[_65]]
    if mem[_65 + mem[_65]] > test266151307():
        revert with 'NH{q', 65
    if _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1 > test266151307() or floor32(mem[_65 + mem[_65]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1
    mem[_65 + ceil32(return_data.size)] = _67
    require _66 + (32 * _67) + 32 <= return_data.size
    idx = 0
    s = _65 + _66 + 32
    t = _65 + ceil32(return_data.size) + 32
    while idx < _67:
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
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] == mem[_101]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _102
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _102
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_105] == bool(mem[_105])
    mem[mem[64] + 4] = _102
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args _102
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_109] == mem[_109]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _114 = mem[_113]
    require mem[_113] == mem[_113]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _114
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _114
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_117] == bool(mem[_117])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _114, 1
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
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_123] == mem[_123]
    if mem[_123] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_123] - ext_call.return_data[0] < 0:
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
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    _21 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _22 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _21 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _22:
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
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _45 = mem[_44]
    require mem[_44] == mem[_44]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _45
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _45
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_48] == bool(mem[_48])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _50 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _45
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
    mem[_50 + 100] = this.address
    mem[_50 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _50 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _67 = mem[_66]
    require mem[_66] <= test266151307()
    require _66 + mem[_66] + 31 < _66 + return_data.size
    _68 = mem[_66 + mem[_66]]
    if mem[_66 + mem[_66]] > test266151307():
        revert with 'NH{q', 65
    if _66 + ceil32(return_data.size) + floor32(mem[_66 + mem[_66]]) + 1 > test266151307() or floor32(mem[_66 + mem[_66]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _66 + ceil32(return_data.size) + floor32(mem[_66 + mem[_66]]) + 1
    mem[_66 + ceil32(return_data.size)] = _68
    require _67 + (32 * _68) + 32 <= return_data.size
    idx = 0
    s = _66 + _67 + 32
    t = _66 + ceil32(return_data.size) + 32
    while idx < _68:
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
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] == mem[_102]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _103
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _103
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == bool(mem[_106])
    mem[mem[64] + 4] = _103
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args _103
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_110] == mem[_110]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _115 = mem[_114]
    require mem[_114] == mem[_114]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _115
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _115
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_118] == bool(mem[_118])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _115, 1
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
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_124] == mem[_124]
    if mem[_124] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_124] - ext_call.return_data[0]
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
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[(11 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(11 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    _52 = mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (12 * ceil32(return_data.size)) + return_data.size + 96
    _53 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(13 * ceil32(return_data.size)) + 96] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _52 + (32 * _53) + 32 <= return_data.size
    idx = 0
    s = (12 * ceil32(return_data.size)) + _52 + 128
    t = (13 * ceil32(return_data.size)) + 128
    while idx < _53:
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
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _76 = mem[_75]
    require mem[_75] == mem[_75]
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = _76
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _76
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_79] == bool(mem[_79])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _81 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _76
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
    mem[_81 + 100] = this.address
    mem[_81 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _81 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _96 = mem[_95]
    require mem[_95] <= test266151307()
    require _95 + mem[_95] + 31 < _95 + return_data.size
    _97 = mem[_95 + mem[_95]]
    if mem[_95 + mem[_95]] > test266151307():
        revert with 'NH{q', 65
    if _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1 > test266151307() or floor32(mem[_95 + mem[_95]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1
    mem[_95 + ceil32(return_data.size)] = _97
    require _96 + (32 * _97) + 32 <= return_data.size
    idx = 0
    s = _95 + _96 + 32
    t = _95 + ceil32(return_data.size) + 32
    while idx < _97:
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
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_109] == mem[_109]
    if mem[_109] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_109] - ext_call.return_data[0] < 0:
        revert with 0, 'no arb opportunity'
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
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_38] == bool(mem[_38])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _40 = mem[64]
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
    mem[_40 + 100] = this.address
    mem[_40 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _40 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _58 = mem[_57]
    require mem[_57] <= test266151307()
    require _57 + mem[_57] + 31 < _57 + return_data.size
    _59 = mem[_57 + mem[_57]]
    if mem[_57 + mem[_57]] > test266151307():
        revert with 'NH{q', 65
    if _57 + ceil32(return_data.size) + floor32(mem[_57 + mem[_57]]) + 1 > test266151307() or floor32(mem[_57 + mem[_57]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _57 + ceil32(return_data.size) + floor32(mem[_57 + mem[_57]]) + 1
    mem[_57 + ceil32(return_data.size)] = _59
    require _58 + (32 * _59) + 32 <= return_data.size
    idx = 0
    s = _57 + _58 + 32
    t = _57 + ceil32(return_data.size) + 32
    while idx < _59:
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
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _83 = mem[_82]
    require mem[_82] == mem[_82]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_86]
    require mem[_86] == mem[_86]
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _83
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _83
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_90] == bool(mem[_90])
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _87
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _87
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_94] == bool(mem[_94])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _87
    mem[mem[64] + 100] = _83
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[132]))
    call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor4, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), _87, _83, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_98] == mem[_98]
    require mem[_98 + 32] == mem[_98 + 32]
    require mem[_98 + 64] == mem[_98 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _105 = mem[_104]
    require mem[_104] == mem[_104]
    mem[mem[64] + 4] = address(cd[196])
    mem[mem[64] + 36] = _105
    require ext_code.size(address(cd[164]))
    call address(cd[164]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[196]), _105
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_108] == bool(mem[_108])
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _113 = mem[_112]
    require mem[_112] == mem[_112]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _117 = mem[_116]
    require mem[_116] == mem[_116]
    require mem[_116 + 32] == mem[_116 + 32]
    require mem[_116 + 64] == mem[_116 + 92 len 4]
    require mem[_116 + 96] == mem[_116 + 124 len 4]
    mem[mem[64] + 4] = _105
    mem[mem[64] + 36] = _113
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(cd[196]))
    call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _105, _113, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_123] == mem[_123]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_127] == mem[_127]
    require mem[_127 + 32] == mem[_127 + 32]
    require mem[_127 + 64] == mem[_127 + 92 len 4]
    require mem[_127 + 96] == mem[_127 + 124 len 4]
    if mem[_127] < _117:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_127] - _117
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
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    _35 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _36 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _35 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _36:
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
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_55] == bool(mem[_55])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _57 = mem[64]
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
    mem[_57 + 100] = this.address
    mem[_57 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _57 + (32 * ('cd', 100).length) + -mem[64] + 192]
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
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _100 = mem[_99]
    require mem[_99] == mem[_99]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _104 = mem[_103]
    require mem[_103] == mem[_103]
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _100
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_107] == bool(mem[_107])
    mem[mem[64] + 4] = address(cd[132])
    mem[mem[64] + 36] = _104
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[132]), _104
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _104
    mem[mem[64] + 100] = _100
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[132]))
    call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor4, address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]), _104, _100, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_115] == mem[_115]
    require mem[_115 + 32] == mem[_115 + 32]
    require mem[_115 + 64] == mem[_115 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).0x70a08231 with:
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
    mem[mem[64] + 4] = address(cd[196])
    mem[mem[64] + 36] = _122
    require ext_code.size(address(cd[164]))
    call address(cd[164]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[196]), _122
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _125 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_125] == bool(mem[_125])
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _130 = mem[_129]
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
    _134 = mem[_133]
    require mem[_133] == mem[_133]
    require mem[_133 + 32] == mem[_133 + 32]
    require mem[_133 + 64] == mem[_133 + 92 len 4]
    require mem[_133 + 96] == mem[_133 + 124 len 4]
    mem[mem[64] + 4] = _122
    mem[mem[64] + 36] = _130
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(cd[196]))
    call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _122, _130, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_140] == mem[_140]
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _144 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_144] == mem[_144]
    require mem[_144 + 32] == mem[_144 + 32]
    require mem[_144 + 64] == mem[_144 + 92 len 4]
    require mem[_144 + 96] == mem[_144 + 124 len 4]
    if mem[_144] < _134:
        revert with 'NH{q', 17
    if mem[_144] - _134 < cd[228]:
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
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
        _47 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _48 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _47 + (32 * _48) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _47 + 128
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
        mem[mem[64]] = mem[_149] - _125
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
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
        mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
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
        mem[mem[64]] = mem[_189] - _179
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
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[ceil32(return_data.size) + 100] = address(cd[4])
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
        _45 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _47 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _45 + (32 * _47) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _45 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _47:
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
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _103 = mem[_101]
        require mem[_101] == mem[_101]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _103
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _103
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_106] == bool(mem[_106])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _115 = mem[_113]
        require mem[_113] == mem[_113]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _121 = mem[_119]
        require mem[_119] == mem[_119]
        require mem[_119 + 32] == mem[_119 + 32]
        require mem[_119 + 64] == mem[_119 + 92 len 4]
        require mem[_119 + 96] == mem[_119 + 124 len 4]
        mem[mem[64] + 4] = _103
        mem[mem[64] + 36] = _115
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _103, _115, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _138 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_138] == mem[_138]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_145] == mem[_145]
        require mem[_145 + 32] == mem[_145 + 32]
        require mem[_145 + 64] == mem[_145 + 92 len 4]
        require mem[_145 + 96] == mem[_145 + 124 len 4]
        if mem[_145] < _121:
            revert with 'NH{q', 17
        if mem[_145] - _121 < cd[100]:
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
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
        _96 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
        _97 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _96 + (32 * _97) + 32 <= return_data.size
        idx = 0
        s = (11 * ceil32(return_data.size)) + _96 + 128
        t = (12 * ceil32(return_data.size)) + 128
        while idx < _97:
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
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _163 = mem[_162]
        require mem[_162] == mem[_162]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _163
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _163
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == bool(mem[_166])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _170 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_170]
        require mem[_170] == mem[_170]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _174 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _175 = mem[_174]
        require mem[_174] == mem[_174]
        require mem[_174 + 32] == mem[_174 + 32]
        require mem[_174 + 64] == mem[_174 + 92 len 4]
        require mem[_174 + 96] == mem[_174 + 124 len 4]
        mem[mem[64] + 4] = _163
        mem[mem[64] + 36] = _171
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _163, _171, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == mem[_181]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_185] == mem[_185]
        require mem[_185 + 32] == mem[_185 + 32]
        require mem[_185 + 64] == mem[_185 + 92 len 4]
        require mem[_185 + 96] == mem[_185 + 124 len 4]
        if mem[_185] < _175:
            revert with 'NH{q', 17
        if mem[_185] - _175 < cd[100]:
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
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
            _228 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _234 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _228 + (32 * _234) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _228 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _234:
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
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_402]
            require mem[_402] == mem[_402]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
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
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _408
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _408
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _450 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_450] == bool(mem[_450])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _432
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _432
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_474] == bool(mem[_474])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _432
            mem[mem[64] + 100] = _408
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _432, _408, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _498 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_498] == mem[_498]
            require mem[_498 + 32] == mem[_498 + 32]
            require mem[_498 + 64] == mem[_498 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _534 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _540 = mem[_534]
            require mem[_534] == mem[_534]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _540
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _540
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _558 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_558] == bool(mem[_558])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _588 = mem[_582]
            require mem[_582] == mem[_582]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _606 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _612 = mem[_606]
            require mem[_606] == mem[_606]
            require mem[_606 + 32] == mem[_606 + 32]
            require mem[_606 + 64] == mem[_606 + 92 len 4]
            require mem[_606 + 96] == mem[_606 + 124 len 4]
            mem[mem[64] + 4] = _540
            mem[mem[64] + 36] = _588
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _540, _588, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _648 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_648] == mem[_648]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _672 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_672] == mem[_672]
            require mem[_672 + 32] == mem[_672 + 32]
            require mem[_672 + 64] == mem[_672 + 92 len 4]
            require mem[_672 + 96] == mem[_672 + 124 len 4]
            if mem[_672] < _612:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_672] - _612
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _230 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _236 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _230 + (32 * _236) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _230 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _236:
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
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _410 = mem[_404]
                require mem[_404] == mem[_404]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _434 = mem[_428]
                require mem[_428] == mem[_428]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _410
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _410
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_452] == bool(mem[_452])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _434
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _434
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_476] == bool(mem[_476])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _434
                mem[mem[64] + 100] = _410
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _434, _410, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_500] == mem[_500]
                require mem[_500 + 32] == mem[_500 + 32]
                require mem[_500 + 64] == mem[_500 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _542 = mem[_536]
                require mem[_536] == mem[_536]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _542
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _542
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_560] == bool(mem[_560])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _590 = mem[_584]
                require mem[_584] == mem[_584]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _614 = mem[_608]
                require mem[_608] == mem[_608]
                require mem[_608 + 32] == mem[_608 + 32]
                require mem[_608 + 64] == mem[_608 + 92 len 4]
                require mem[_608 + 96] == mem[_608 + 124 len 4]
                mem[mem[64] + 4] = _542
                mem[mem[64] + 36] = _590
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _542, _590, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_650] == mem[_650]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_674] == mem[_674]
                require mem[_674 + 32] == mem[_674 + 32]
                require mem[_674 + 64] == mem[_674 + 92 len 4]
                require mem[_674 + 96] == mem[_674 + 124 len 4]
                if mem[_674] < _614:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_674] - _614
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _229 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _235 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _229 + (32 * _235) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _229 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _235:
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
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _409 = mem[_403]
                require mem[_403] == mem[_403]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _433 = mem[_427]
                require mem[_427] == mem[_427]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _409
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _409
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _451 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_451] == bool(mem[_451])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _433
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _433
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_475] == bool(mem[_475])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _433
                mem[mem[64] + 100] = _409
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _433, _409, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_499] == mem[_499]
                require mem[_499 + 32] == mem[_499 + 32]
                require mem[_499 + 64] == mem[_499 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _541 = mem[_535]
                require mem[_535] == mem[_535]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _541
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _541
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_559] == bool(mem[_559])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _589 = mem[_583]
                require mem[_583] == mem[_583]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _607 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _613 = mem[_607]
                require mem[_607] == mem[_607]
                require mem[_607 + 32] == mem[_607 + 32]
                require mem[_607 + 64] == mem[_607 + 92 len 4]
                require mem[_607 + 96] == mem[_607 + 124 len 4]
                mem[mem[64] + 4] = _541
                mem[mem[64] + 36] = _589
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _541, _589, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == mem[_649]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_673] == mem[_673]
                require mem[_673 + 32] == mem[_673 + 32]
                require mem[_673 + 64] == mem[_673 + 92 len 4]
                require mem[_673 + 96] == mem[_673 + 124 len 4]
                if mem[_673] < _613:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_673] - _613
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
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
            _231 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
            _237 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _231 + (32 * _237) + 32 <= return_data.size
            idx = 0
            s = (14 * ceil32(return_data.size)) + _231 + 128
            t = (15 * ceil32(return_data.size)) + 128
            while idx < _237:
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
            _405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _411 = mem[_405]
            require mem[_405] == mem[_405]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _435 = mem[_429]
            require mem[_429] == mem[_429]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _411
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _411
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] == bool(mem[_453])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _435
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _435
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_477] == bool(mem[_477])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _435
            mem[mem[64] + 100] = _411
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _435, _411, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_501] == mem[_501]
            require mem[_501 + 32] == mem[_501 + 32]
            require mem[_501 + 64] == mem[_501 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _543 = mem[_537]
            require mem[_537] == mem[_537]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _543
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _543
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _561 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_561] == bool(mem[_561])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _591 = mem[_585]
            require mem[_585] == mem[_585]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _609 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _615 = mem[_609]
            require mem[_609] == mem[_609]
            require mem[_609 + 32] == mem[_609 + 32]
            require mem[_609 + 64] == mem[_609 + 92 len 4]
            require mem[_609 + 96] == mem[_609 + 124 len 4]
            mem[mem[64] + 4] = _543
            mem[mem[64] + 36] = _591
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _543, _591, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _651 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_651] == mem[_651]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_675] == mem[_675]
            require mem[_675 + 32] == mem[_675 + 32]
            require mem[_675 + 64] == mem[_675 + 92 len 4]
            require mem[_675 + 96] == mem[_675 + 124 len 4]
            if mem[_675] < _615:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_675] - _615
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _233 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _239 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _233 + (32 * _239) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _233 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _239:
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
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _413 = mem[_407]
                require mem[_407] == mem[_407]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _437 = mem[_431]
                require mem[_431] == mem[_431]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _413
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _413
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_455] == bool(mem[_455])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _437
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _437
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_479] == bool(mem[_479])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _437
                mem[mem[64] + 100] = _413
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _437, _413, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_503] == mem[_503]
                require mem[_503 + 32] == mem[_503 + 32]
                require mem[_503 + 64] == mem[_503 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _545 = mem[_539]
                require mem[_539] == mem[_539]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _545
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _545
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_563] == bool(mem[_563])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _587 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _593 = mem[_587]
                require mem[_587] == mem[_587]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _611 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _617 = mem[_611]
                require mem[_611] == mem[_611]
                require mem[_611 + 32] == mem[_611 + 32]
                require mem[_611 + 64] == mem[_611 + 92 len 4]
                require mem[_611 + 96] == mem[_611 + 124 len 4]
                mem[mem[64] + 4] = _545
                mem[mem[64] + 36] = _593
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _545, _593, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_653] == mem[_653]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_677] == mem[_677]
                require mem[_677 + 32] == mem[_677 + 32]
                require mem[_677 + 64] == mem[_677 + 92 len 4]
                require mem[_677 + 96] == mem[_677 + 124 len 4]
                if mem[_677] < _617:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_677] - _617
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _232 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _238 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _232 + (32 * _238) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _232 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _238:
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
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _412 = mem[_406]
                require mem[_406] == mem[_406]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _436 = mem[_430]
                require mem[_430] == mem[_430]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _412
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _412
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_454] == bool(mem[_454])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _436
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _436
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == bool(mem[_478])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _436
                mem[mem[64] + 100] = _412
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _436, _412, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_502] == mem[_502]
                require mem[_502 + 32] == mem[_502 + 32]
                require mem[_502 + 64] == mem[_502 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _544 = mem[_538]
                require mem[_538] == mem[_538]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _544
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _544
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_562] == bool(mem[_562])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _586 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _592 = mem[_586]
                require mem[_586] == mem[_586]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _610 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _616 = mem[_610]
                require mem[_610] == mem[_610]
                require mem[_610 + 32] == mem[_610 + 32]
                require mem[_610 + 64] == mem[_610 + 92 len 4]
                require mem[_610 + 96] == mem[_610 + 124 len 4]
                mem[mem[64] + 4] = _544
                mem[mem[64] + 36] = _592
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _544, _592, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_652] == mem[_652]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_676] == mem[_676]
                require mem[_676 + 32] == mem[_676 + 32]
                require mem[_676 + 64] == mem[_676 + 92 len 4]
                require mem[_676 + 96] == mem[_676 + 124 len 4]
                if mem[_676] < _616:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_676] - _616
    return memory
      from mem[64]
       len 32
}

function sub_7a945e18(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
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
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
            _221 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _227 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _221 + (32 * _227) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _221 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _227:
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
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_395]
            require mem[_395] == mem[_395]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _425 = mem[_419]
            require mem[_419] == mem[_419]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _401
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _401
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _443 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_443] == bool(mem[_443])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _425
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _425
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_467] == bool(mem[_467])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _425
            mem[mem[64] + 100] = _401
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _425, _401, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_491] == mem[_491]
            require mem[_491 + 32] == mem[_491 + 32]
            require mem[_491 + 64] == mem[_491 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _533 = mem[_527]
            require mem[_527] == mem[_527]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _533
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _533
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _551 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_551] == bool(mem[_551])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _575 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _581 = mem[_575]
            require mem[_575] == mem[_575]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _605 = mem[_599]
            require mem[_599] == mem[_599]
            require mem[_599 + 32] == mem[_599 + 32]
            require mem[_599 + 64] == mem[_599 + 92 len 4]
            require mem[_599 + 96] == mem[_599 + 124 len 4]
            mem[mem[64] + 4] = _533
            mem[mem[64] + 36] = _581
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _533, _581, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_641] == mem[_641]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_665] == mem[_665]
            require mem[_665 + 32] == mem[_665 + 32]
            require mem[_665 + 64] == mem[_665 + 92 len 4]
            require mem[_665 + 96] == mem[_665 + 124 len 4]
            if mem[_665] < _605:
                revert with 'NH{q', 17
            if mem[_665] - _605 < cd[164]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _223 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _229 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _223 + (32 * _229) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _223 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _229:
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
                _397 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_397]
                require mem[_397] == mem[_397]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
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
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _403
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _403
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_445] == bool(mem[_445])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _427
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _427
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_469] == bool(mem[_469])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _427
                mem[mem[64] + 100] = _403
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _427, _403, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _493 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_493] == mem[_493]
                require mem[_493 + 32] == mem[_493 + 32]
                require mem[_493 + 64] == mem[_493 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _535 = mem[_529]
                require mem[_529] == mem[_529]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _535
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _535
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_553] == bool(mem[_553])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _583 = mem[_577]
                require mem[_577] == mem[_577]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _607 = mem[_601]
                require mem[_601] == mem[_601]
                require mem[_601 + 32] == mem[_601 + 32]
                require mem[_601 + 64] == mem[_601 + 92 len 4]
                require mem[_601 + 96] == mem[_601 + 124 len 4]
                mem[mem[64] + 4] = _535
                mem[mem[64] + 36] = _583
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _535, _583, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_643] == mem[_643]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_667] == mem[_667]
                require mem[_667 + 32] == mem[_667 + 32]
                require mem[_667 + 64] == mem[_667 + 92 len 4]
                require mem[_667 + 96] == mem[_667 + 124 len 4]
                if mem[_667] < _607:
                    revert with 'NH{q', 17
                if mem[_667] - _607 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _222 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _228 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _222 + (32 * _228) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _222 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _228:
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
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _402 = mem[_396]
                require mem[_396] == mem[_396]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_420]
                require mem[_420] == mem[_420]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _402
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _402
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_444] == bool(mem[_444])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _426
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _426
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_468] == bool(mem[_468])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _426
                mem[mem[64] + 100] = _402
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _426, _402, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_492] == mem[_492]
                require mem[_492 + 32] == mem[_492 + 32]
                require mem[_492 + 64] == mem[_492 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _534 = mem[_528]
                require mem[_528] == mem[_528]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _534
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _534
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_552] == bool(mem[_552])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _582 = mem[_576]
                require mem[_576] == mem[_576]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _606 = mem[_600]
                require mem[_600] == mem[_600]
                require mem[_600 + 32] == mem[_600 + 32]
                require mem[_600 + 64] == mem[_600 + 92 len 4]
                require mem[_600 + 96] == mem[_600 + 124 len 4]
                mem[mem[64] + 4] = _534
                mem[mem[64] + 36] = _582
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _534, _582, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_642] == mem[_642]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_666] == mem[_666]
                require mem[_666 + 32] == mem[_666 + 32]
                require mem[_666 + 64] == mem[_666 + 92 len 4]
                require mem[_666 + 96] == mem[_666 + 124 len 4]
                if mem[_666] < _606:
                    revert with 'NH{q', 17
                if mem[_666] - _606 < cd[164]:
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
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require ('cd', 36)[0] == address(('cd', 36)[0])
            mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
            _224 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
            _230 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _224 + (32 * _230) + 32 <= return_data.size
            idx = 0
            s = (14 * ceil32(return_data.size)) + _224 + 128
            t = (15 * ceil32(return_data.size)) + 128
            while idx < _230:
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
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _404 = mem[_398]
            require mem[_398] == mem[_398]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
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
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _404
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _404
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_446] == bool(mem[_446])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _428
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _428
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_470] == bool(mem[_470])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _428
            mem[mem[64] + 100] = _404
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _428, _404, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _494 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_494] == mem[_494]
            require mem[_494 + 32] == mem[_494 + 32]
            require mem[_494 + 64] == mem[_494 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _536 = mem[_530]
            require mem[_530] == mem[_530]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _536
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _536
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_554] == bool(mem[_554])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _578 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _584 = mem[_578]
            require mem[_578] == mem[_578]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _602 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _608 = mem[_602]
            require mem[_602] == mem[_602]
            require mem[_602 + 32] == mem[_602 + 32]
            require mem[_602 + 64] == mem[_602 + 92 len 4]
            require mem[_602 + 96] == mem[_602 + 124 len 4]
            mem[mem[64] + 4] = _536
            mem[mem[64] + 36] = _584
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _536, _584, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _644 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_644] == mem[_644]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_668] == mem[_668]
            require mem[_668 + 32] == mem[_668 + 32]
            require mem[_668 + 64] == mem[_668 + 92 len 4]
            require mem[_668 + 96] == mem[_668 + 124 len 4]
            if mem[_668] < _608:
                revert with 'NH{q', 17
            if mem[_668] - _608 < cd[164]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _226 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _232 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _226 + (32 * _232) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _226 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _232:
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
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _406 = mem[_400]
                require mem[_400] == mem[_400]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
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
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _406
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _406
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_448] == bool(mem[_448])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _430
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _430
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_472] == bool(mem[_472])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _430
                mem[mem[64] + 100] = _406
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _430, _406, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _496 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_496] == mem[_496]
                require mem[_496 + 32] == mem[_496 + 32]
                require mem[_496 + 64] == mem[_496 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _538 = mem[_532]
                require mem[_532] == mem[_532]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _538
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _538
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_556] == bool(mem[_556])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _586 = mem[_580]
                require mem[_580] == mem[_580]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _604 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _610 = mem[_604]
                require mem[_604] == mem[_604]
                require mem[_604 + 32] == mem[_604 + 32]
                require mem[_604 + 64] == mem[_604 + 92 len 4]
                require mem[_604 + 96] == mem[_604 + 124 len 4]
                mem[mem[64] + 4] = _538
                mem[mem[64] + 36] = _586
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _538, _586, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _646 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_646] == mem[_646]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _670 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_670] == mem[_670]
                require mem[_670 + 32] == mem[_670 + 32]
                require mem[_670 + 64] == mem[_670 + 92 len 4]
                require mem[_670 + 96] == mem[_670 + 124 len 4]
                if mem[_670] < _610:
                    revert with 'NH{q', 17
                if mem[_670] - _610 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
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
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(13 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(13 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
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
                _225 = mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (14 * ceil32(return_data.size)) + return_data.size + 96
                _231 = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (15 * ceil32(return_data.size)) + floor32(mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(15 * ceil32(return_data.size)) + 96] = mem[(14 * ceil32(return_data.size)) + mem[(14 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _225 + (32 * _231) + 32 <= return_data.size
                idx = 0
                s = (14 * ceil32(return_data.size)) + _225 + 128
                t = (15 * ceil32(return_data.size)) + 128
                while idx < _231:
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
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _405 = mem[_399]
                require mem[_399] == mem[_399]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
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
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _405
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _405
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_447] == bool(mem[_447])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _429
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _429
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_471] == bool(mem[_471])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _429
                mem[mem[64] + 100] = _405
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _429, _405, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _495 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_495] == mem[_495]
                require mem[_495 + 32] == mem[_495 + 32]
                require mem[_495 + 64] == mem[_495 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _537 = mem[_531]
                require mem[_531] == mem[_531]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _537
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _537
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_555] == bool(mem[_555])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _585 = mem[_579]
                require mem[_579] == mem[_579]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _609 = mem[_603]
                require mem[_603] == mem[_603]
                require mem[_603 + 32] == mem[_603 + 32]
                require mem[_603 + 64] == mem[_603 + 92 len 4]
                require mem[_603 + 96] == mem[_603 + 124 len 4]
                mem[mem[64] + 4] = _537
                mem[mem[64] + 36] = _585
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _537, _585, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _645 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_645] == mem[_645]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_669] == mem[_669]
                require mem[_669 + 32] == mem[_669 + 32]
                require mem[_669 + 64] == mem[_669 + 92 len 4]
                require mem[_669 + 96] == mem[_669 + 124 len 4]
                if mem[_669] < _609:
                    revert with 'NH{q', 17
                if mem[_669] - _609 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
}



}
