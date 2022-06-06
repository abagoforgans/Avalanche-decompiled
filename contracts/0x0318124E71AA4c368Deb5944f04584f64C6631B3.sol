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

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function wrap() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stake() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_224b182f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ea97bf82(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == mem[_95]
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_95]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
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
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _102
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _102
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_105] == bool(mem[_105])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _102, 1
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
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == mem[_111]
    if mem[_111] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_111] - ext_call.return_data[0] < 0:
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
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_96] == mem[_96]
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
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
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _103
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _103
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == bool(mem[_106])
    mem[mem[64] + 36] = 1
    require ext_code.size(stor6)
    call stor6.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args _103, 1
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
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_112] == mem[_112]
    if mem[_112] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_112] - ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
    mem[(7 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 132] = 0
    mem[(8 * ceil32(return_data.size)) + 164] = 160
    mem[(8 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (8 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 196] = this.address
    mem[(8 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _49 = mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (8 * ceil32(return_data.size)) + return_data.size + 96
    _50 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(10 * ceil32(return_data.size)) + 96] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _49 + 128
    t = (10 * ceil32(return_data.size)) + 128
    while idx < _50:
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
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _73 = mem[_72]
    require mem[_72] == mem[_72]
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
    mem[mem[64] + 36] = _73
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _73
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_76] == bool(mem[_76])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _78 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _73
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
    mem[_78 + 100] = this.address
    mem[_78 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _78 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + mem[_92] + 31 < _92 + return_data.size
    _94 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 'NH{q', 65
    if _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1 > test266151307() or floor32(mem[_92 + mem[_92]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _94
    require _93 + (32 * _94) + 32 <= return_data.size
    idx = 0
    s = _92 + _93 + 32
    t = _92 + ceil32(return_data.size) + 32
    while idx < _94:
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
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == mem[_106]
    if mem[_106] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_106] - ext_call.return_data[0] < 0:
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
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(stor5)
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
    mem[(7 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 132] = 0
    mem[(8 * ceil32(return_data.size)) + 164] = 160
    mem[(8 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (8 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 196] = this.address
    mem[(8 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(8 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _49 = mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (8 * ceil32(return_data.size)) + return_data.size + 96
    _50 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(10 * ceil32(return_data.size)) + 96] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _49 + 128
    t = (10 * ceil32(return_data.size)) + 128
    while idx < _50:
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
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _73 = mem[_72]
    require mem[_72] == mem[_72]
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
    mem[mem[64] + 36] = _73
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _73
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_76] == bool(mem[_76])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _78 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _73
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
    mem[_78 + 100] = this.address
    mem[_78 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _78 + (32 * ('cd', 100).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + mem[_92] + 31 < _92 + return_data.size
    _94 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 'NH{q', 65
    if _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1 > test266151307() or floor32(mem[_92 + mem[_92]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _94
    require _93 + (32 * _94) + 32 <= return_data.size
    idx = 0
    s = _92 + _93 + 32
    t = _92 + ceil32(return_data.size) + 32
    while idx < _94:
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
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == mem[_106]
    if mem[_106] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_106] - ext_call.return_data[0]
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
        _41 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _43 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _41 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _43:
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
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_107]
        require mem[_107] == mem[_107]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _109
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _109
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_112] == bool(mem[_112])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_119]
        require mem[_119] == mem[_119]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _127 = mem[_125]
        require mem[_125] == mem[_125]
        require mem[_125 + 32] == mem[_125 + 32]
        require mem[_125 + 64] == mem[_125 + 92 len 4]
        require mem[_125 + 96] == mem[_125 + 124 len 4]
        mem[mem[64] + 4] = _109
        mem[mem[64] + 36] = _121
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _109, _121, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == mem[_144]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_151] == mem[_151]
        require mem[_151 + 32] == mem[_151 + 32]
        require mem[_151 + 64] == mem[_151 + 92 len 4]
        require mem[_151 + 96] == mem[_151 + 124 len 4]
        if mem[_151] < _127:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_151] - _127
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
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
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
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _102 = mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _103 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _102 + (32 * _103) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _102 + 128
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _103:
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
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _169 = mem[_168]
        require mem[_168] == mem[_168]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _169
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _169
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_172] == bool(mem[_172])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _176 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_176]
        require mem[_176] == mem[_176]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _181 = mem[_180]
        require mem[_180] == mem[_180]
        require mem[_180 + 32] == mem[_180 + 32]
        require mem[_180 + 64] == mem[_180 + 92 len 4]
        require mem[_180 + 96] == mem[_180 + 124 len 4]
        mem[mem[64] + 4] = _169
        mem[mem[64] + 36] = _177
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _169, _177, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == mem[_187]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_191] == mem[_191]
        require mem[_191 + 32] == mem[_191 + 32]
        require mem[_191 + 64] == mem[_191 + 92 len 4]
        require mem[_191 + 96] == mem[_191 + 124 len 4]
        if mem[_191] < _181:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_191] - _181
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
        _38 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _40 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _38 + (32 * _40) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _38 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _40:
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
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _106 = mem[_104]
        require mem[_104] == mem[_104]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _106
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _106
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == bool(mem[_109])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_116]
        require mem[_116] == mem[_116]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _124 = mem[_122]
        require mem[_122] == mem[_122]
        require mem[_122 + 32] == mem[_122 + 32]
        require mem[_122 + 64] == mem[_122 + 92 len 4]
        require mem[_122 + 96] == mem[_122 + 124 len 4]
        mem[mem[64] + 4] = _106
        mem[mem[64] + 36] = _118
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _106, _118, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_141] == mem[_141]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_148] == mem[_148]
        require mem[_148 + 32] == mem[_148 + 32]
        require mem[_148 + 64] == mem[_148 + 92 len 4]
        require mem[_148 + 96] == mem[_148 + 124 len 4]
        if mem[_148] < _124:
            revert with 'NH{q', 17
        if mem[_148] - _124 < cd[100]:
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
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
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
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _99 = mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _100 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _99 + (32 * _100) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _99 + 128
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _100:
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
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _166 = mem[_165]
        require mem[_165] == mem[_165]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _166
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _166
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_169] == bool(mem[_169])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _174 = mem[_173]
        require mem[_173] == mem[_173]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _178 = mem[_177]
        require mem[_177] == mem[_177]
        require mem[_177 + 32] == mem[_177 + 32]
        require mem[_177 + 64] == mem[_177 + 92 len 4]
        require mem[_177 + 96] == mem[_177 + 124 len 4]
        mem[mem[64] + 4] = _166
        mem[mem[64] + 36] = _174
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _166, _174, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_184] == mem[_184]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_188] == mem[_188]
        require mem[_188 + 32] == mem[_188 + 32]
        require mem[_188 + 64] == mem[_188 + 92 len 4]
        require mem[_188 + 96] == mem[_188 + 124 len 4]
        if mem[_188] < _178:
            revert with 'NH{q', 17
        if mem[_188] - _178 < cd[100]:
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
            _244 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _250 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _244 + (32 * _250) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _244 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _250:
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
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _424 = mem[_418]
            require mem[_418] == mem[_418]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _448 = mem[_442]
            require mem[_442] == mem[_442]
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _424
            require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
            call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _424
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _466 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_466] == bool(mem[_466])
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = _448
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), _448
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_490] == bool(mem[_490])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _448
            mem[mem[64] + 100] = _424
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[68]))
            call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _448, _424, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_514] == mem[_514]
            require mem[_514 + 32] == mem[_514 + 32]
            require mem[_514 + 64] == mem[_514 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _550 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _556 = mem[_550]
            require mem[_550] == mem[_550]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _556
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _556
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_574] == bool(mem[_574])
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _598 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _604 = mem[_598]
            require mem[_598] == mem[_598]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _622 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _628 = mem[_622]
            require mem[_622] == mem[_622]
            require mem[_622 + 32] == mem[_622 + 32]
            require mem[_622 + 64] == mem[_622 + 92 len 4]
            require mem[_622 + 96] == mem[_622 + 124 len 4]
            mem[mem[64] + 4] = _556
            mem[mem[64] + 36] = _604
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(cd[132]))
            call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _556, _604, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _664 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_664] == mem[_664]
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_688] == mem[_688]
            require mem[_688 + 32] == mem[_688 + 32]
            require mem[_688 + 64] == mem[_688 + 92 len 4]
            require mem[_688 + 96] == mem[_688 + 124 len 4]
            if mem[_688] < _628:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_688] - _628
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
                _246 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _252 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _246 + (32 * _252) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _246 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _252:
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
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_420]
                require mem[_420] == mem[_420]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _444 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _450 = mem[_444]
                require mem[_444] == mem[_444]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _426
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _426
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_468] == bool(mem[_468])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _450
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _450
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_492] == bool(mem[_492])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _450
                mem[mem[64] + 100] = _426
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _450, _426, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _516 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_516] == mem[_516]
                require mem[_516 + 32] == mem[_516 + 32]
                require mem[_516 + 64] == mem[_516 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _558 = mem[_552]
                require mem[_552] == mem[_552]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _558
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _558
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_576] == bool(mem[_576])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _606 = mem[_600]
                require mem[_600] == mem[_600]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _630 = mem[_624]
                require mem[_624] == mem[_624]
                require mem[_624 + 32] == mem[_624 + 32]
                require mem[_624 + 64] == mem[_624 + 92 len 4]
                require mem[_624 + 96] == mem[_624 + 124 len 4]
                mem[mem[64] + 4] = _558
                mem[mem[64] + 36] = _606
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _558, _606, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_666] == mem[_666]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _690 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_690] == mem[_690]
                require mem[_690 + 32] == mem[_690 + 32]
                require mem[_690 + 64] == mem[_690 + 92 len 4]
                require mem[_690 + 96] == mem[_690 + 124 len 4]
                if mem[_690] < _630:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_690] - _630
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
                _245 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _251 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _245 + (32 * _251) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _245 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _251:
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
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_419]
                require mem[_419] == mem[_419]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _449 = mem[_443]
                require mem[_443] == mem[_443]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _425
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _425
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_467] == bool(mem[_467])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _449
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _449
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_491] == bool(mem[_491])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _449
                mem[mem[64] + 100] = _425
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _449, _425, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_515] == mem[_515]
                require mem[_515 + 32] == mem[_515 + 32]
                require mem[_515 + 64] == mem[_515 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _557 = mem[_551]
                require mem[_551] == mem[_551]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _557
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _557
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_575] == bool(mem[_575])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _605 = mem[_599]
                require mem[_599] == mem[_599]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _629 = mem[_623]
                require mem[_623] == mem[_623]
                require mem[_623 + 32] == mem[_623 + 32]
                require mem[_623 + 64] == mem[_623 + 92 len 4]
                require mem[_623 + 96] == mem[_623 + 124 len 4]
                mem[mem[64] + 4] = _557
                mem[mem[64] + 36] = _605
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _557, _605, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_665] == mem[_665]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_689] == mem[_689]
                require mem[_689 + 32] == mem[_689 + 32]
                require mem[_689 + 64] == mem[_689 + 92 len 4]
                require mem[_689 + 96] == mem[_689 + 124 len 4]
                if mem[_689] < _629:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_689] - _629
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
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor5)
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        require address(cd[100])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getReserves() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token1() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
            mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(10 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(('cd', 36)[0]))
            call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(11 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
                args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (12 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _247 = mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
            _253 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _247 + (32 * _253) + 32 <= return_data.size
            idx = 0
            s = (11 * ceil32(return_data.size)) + _247 + 128
            t = (12 * ceil32(return_data.size)) + 128
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
                mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(10 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(11 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
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
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (12 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _249 = mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                _255 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _249 + (32 * _255) + 32 <= return_data.size
                idx = 0
                s = (11 * ceil32(return_data.size)) + _249 + 128
                t = (12 * ceil32(return_data.size)) + 128
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
                mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(10 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(11 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(11 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (12 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _248 = mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
                _254 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _248 + (32 * _254) + 32 <= return_data.size
                idx = 0
                s = (11 * ceil32(return_data.size)) + _248 + 128
                t = (12 * ceil32(return_data.size)) + 128
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
    return memory
      from mem[64]
       len 32
}



}
