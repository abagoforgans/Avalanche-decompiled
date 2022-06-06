contract main {




// =====================  Runtime code  =====================


#
#  - sub_20713c05(?)
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

function retrieve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function send(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
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
    staticcall stor2.balanceOf(address arg1) with:
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
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function unwrap() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
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
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function unstake() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
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
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function sub_421bfde6(?) payable {
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _45, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _65 = mem[_64]
    require mem[_64] <= test266151307()
    require _64 + mem[_64] + 31 < _64 + return_data.size
    _66 = mem[_64 + mem[_64]]
    if mem[_64 + mem[_64]] > test266151307():
        revert with 'NH{q', 65
    if _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1 > test266151307() or floor32(mem[_64 + mem[_64]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1
    mem[_64 + ceil32(return_data.size)] = _66
    require _65 + (32 * _66) + 32 <= return_data.size
    idx = 0
    s = _64 + _65 + 32
    t = _64 + ceil32(return_data.size) + 32
    while idx < _66:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_78] == mem[_78]
    if mem[_78] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_78] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}

function sub_d70187aa(?) payable {
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
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _45, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _65 = mem[_64]
    require mem[_64] <= test266151307()
    require _64 + mem[_64] + 31 < _64 + return_data.size
    _66 = mem[_64 + mem[_64]]
    if mem[_64 + mem[_64]] > test266151307():
        revert with 'NH{q', 65
    if _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1 > test266151307() or floor32(mem[_64 + mem[_64]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _64 + ceil32(return_data.size) + floor32(mem[_64 + mem[_64]]) + 1
    mem[_64 + ceil32(return_data.size)] = _66
    require _65 + (32 * _66) + 32 <= return_data.size
    idx = 0
    s = _64 + _65 + 32
    t = _64 + ceil32(return_data.size) + 32
    while idx < _66:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_78] == mem[_78]
    if mem[_78] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_78] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _44, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
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
    staticcall stor3.balanceOf(address arg1) with:
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
    staticcall stor2.balanceOf(address arg1) with:
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
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _45, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
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
    staticcall stor3.balanceOf(address arg1) with:
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
    staticcall stor2.balanceOf(address arg1) with:
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
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor2.balanceOf(address arg1) with:
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
    mem[(8 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
    mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    mem[(11 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (11 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
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
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (12 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _51 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
    _52 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _51 + (32 * _52) + 32 <= return_data.size
    idx = 0
    s = (11 * ceil32(return_data.size)) + _51 + 128
    t = (12 * ceil32(return_data.size)) + 128
    while idx < _52:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] == mem[_74]
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
    mem[mem[64] + 36] = _75
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _75
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_78] == bool(mem[_78])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _75
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _75, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _95 = mem[_94]
    require mem[_94] <= test266151307()
    require _94 + mem[_94] + 31 < _94 + return_data.size
    _96 = mem[_94 + mem[_94]]
    if mem[_94 + mem[_94]] > test266151307():
        revert with 'NH{q', 65
    if _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1 > test266151307() or floor32(mem[_94 + mem[_94]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1
    mem[_94 + ceil32(return_data.size)] = _96
    require _95 + (32 * _96) + 32 <= return_data.size
    idx = 0
    s = _94 + _95 + 32
    t = _94 + ceil32(return_data.size) + 32
    while idx < _96:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_108] == mem[_108]
    if mem[_108] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if mem[_108] - ext_call.return_data[0] < 0:
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
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
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
    staticcall stor2.balanceOf(address arg1) with:
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
    mem[(8 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
    mem[(10 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
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
    mem[(11 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (11 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
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
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(11 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(11 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (12 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _51 = mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (11 * ceil32(return_data.size)) + return_data.size + 96
    _52 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(12 * ceil32(return_data.size)) + 96] = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _51 + (32 * _52) + 32 <= return_data.size
    idx = 0
    s = (11 * ceil32(return_data.size)) + _51 + 128
    t = (12 * ceil32(return_data.size)) + 128
    while idx < _52:
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
    staticcall address(('cd', 100)[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] == mem[_74]
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
    mem[mem[64] + 36] = _75
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), _75
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_78] == bool(mem[_78])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _75
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _75, 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _95 = mem[_94]
    require mem[_94] <= test266151307()
    require _94 + mem[_94] + 31 < _94 + return_data.size
    _96 = mem[_94 + mem[_94]]
    if mem[_94 + mem[_94]] > test266151307():
        revert with 'NH{q', 65
    if _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1 > test266151307() or floor32(mem[_94 + mem[_94]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1
    mem[_94 + ceil32(return_data.size)] = _96
    require _95 + (32 * _96) + 32 <= return_data.size
    idx = 0
    s = _94 + _95 + 32
    t = _94 + ceil32(return_data.size) + 32
    while idx < _96:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_108] == mem[_108]
    if mem[_108] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_108] - ext_call.return_data[0]
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
    staticcall stor1.balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
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
    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).balanceOf(address arg1) with:
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
    staticcall stor4.balanceOf(address arg1) with:
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
    staticcall address(cd[164]).balanceOf(address arg1) with:
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
    staticcall stor1.balanceOf(address arg1) with:
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
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[mem[64] + 196 len 32 * ('cd', 100).length]
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
    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).balanceOf(address arg1) with:
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
    staticcall stor4.balanceOf(address arg1) with:
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
    staticcall address(cd[164]).balanceOf(address arg1) with:
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
        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
        _46 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _45 + (32 * _46) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _45 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _46:
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
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
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
        staticcall stor1.balanceOf(address arg1) with:
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
        staticcall stor2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 100] = stor3
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
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
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(8 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 132] = 0
        mem[(10 * ceil32(return_data.size)) + 164] = 160
        mem[(10 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (10 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 196] = this.address
        mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _102 = mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
        _103 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _102 + (32 * _103) + 32 <= return_data.size
        idx = 0
        s = (10 * ceil32(return_data.size)) + _102 + 128
        t = (11 * ceil32(return_data.size)) + 128
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
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
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
        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
        _44 = mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _45 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _44 + (32 * _45) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _44 + 128
        t = (4 * ceil32(return_data.size)) + 128
        while idx < _45:
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
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _104 = mem[_102]
        require mem[_102] == mem[_102]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _104
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _104
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_107] == bool(mem[_107])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_114]
        require mem[_114] == mem[_114]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _122 = mem[_120]
        require mem[_120] == mem[_120]
        require mem[_120 + 32] == mem[_120 + 32]
        require mem[_120 + 64] == mem[_120 + 92 len 4]
        require mem[_120 + 96] == mem[_120 + 124 len 4]
        mem[mem[64] + 4] = _104
        mem[mem[64] + 36] = _116
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _104, _116, this.address
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
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_146] == mem[_146]
        require mem[_146 + 32] == mem[_146 + 32]
        require mem[_146 + 64] == mem[_146 + 92 len 4]
        require mem[_146 + 96] == mem[_146 + 124 len 4]
        if mem[_146] < _122:
            revert with 'NH{q', 17
        if mem[_146] - _122 < cd[100]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(address arg1) with:
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
        staticcall stor2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 100] = stor3
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
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
        require address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[(8 * ceil32(return_data.size)) + 100] = address(cd[4])
        mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 132] = 0
        mem[(10 * ceil32(return_data.size)) + 164] = 160
        mem[(10 * ceil32(return_data.size)) + 260] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (10 * ceil32(return_data.size)) + 292
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 196] = this.address
        mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _97 = mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
        require mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
        _98 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
        mem[(11 * ceil32(return_data.size)) + 96] = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
        require _97 + (32 * _98) + 32 <= return_data.size
        idx = 0
        s = (10 * ceil32(return_data.size)) + _97 + 128
        t = (11 * ceil32(return_data.size)) + 128
        while idx < _98:
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
        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_163]
        require mem[_163] == mem[_163]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = _164
        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), _164
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == bool(mem[_167])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_171]
        require mem[_171] == mem[_171]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _176 = mem[_175]
        require mem[_175] == mem[_175]
        require mem[_175 + 32] == mem[_175 + 32]
        require mem[_175 + 64] == mem[_175 + 92 len 4]
        require mem[_175 + 96] == mem[_175 + 124 len 4]
        mem[mem[64] + 4] = _164
        mem[mem[64] + 36] = _172
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(cd[68]))
        call address(cd[68]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _164, _172, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_182] == mem[_182]
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_186] == mem[_186]
        require mem[_186 + 32] == mem[_186 + 32]
        require mem[_186 + 64] == mem[_186 + 92 len 4]
        require mem[_186 + 96] == mem[_186 + 124 len 4]
        if mem[_186] < _176:
            revert with 'NH{q', 17
        if mem[_186] - _176 < cd[100]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
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
            if address(ext_call.return_data[0]) == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                _378 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _390 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _378 + (32 * _390) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _378 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _390:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _738 = mem[_726]
                require mem[_726] == mem[_726]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _774 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _786 = mem[_774]
                require mem[_774] == mem[_774]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _738
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _738
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_822] == bool(mem[_822])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _786
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _786
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _870 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_870] == bool(mem[_870])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _786
                mem[mem[64] + 100] = _738
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _786, _738, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_918] == mem[_918]
                require mem[_918 + 32] == mem[_918 + 32]
                require mem[_918 + 64] == mem[_918 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _990 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1002 = mem[_990]
                require mem[_990] == mem[_990]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1002
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1002
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1038 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1038] == bool(mem[_1038])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1086 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1098 = mem[_1086]
                require mem[_1086] == mem[_1086]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1146 = mem[_1134]
                require mem[_1134] == mem[_1134]
                require mem[_1134 + 32] == mem[_1134 + 32]
                require mem[_1134 + 64] == mem[_1134 + 92 len 4]
                require mem[_1134 + 96] == mem[_1134 + 124 len 4]
                mem[mem[64] + 4] = _1002
                mem[mem[64] + 36] = _1098
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1002, _1098, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1218] == mem[_1218]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1266] == mem[_1266]
                require mem[_1266 + 32] == mem[_1266 + 32]
                require mem[_1266 + 64] == mem[_1266 + 92 len 4]
                require mem[_1266 + 96] == mem[_1266 + 124 len 4]
                if mem[_1266] < _1146:
                    revert with 'NH{q', 17
                if mem[_1266] - _1146 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            else:
                if address(ext_call.return_data[0]) != stor3:
                    revert with 0, 'bad LP token'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                _379 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _391 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _379 + (32 * _391) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _379 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _391:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _739 = mem[_727]
                require mem[_727] == mem[_727]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _775 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _787 = mem[_775]
                require mem[_775] == mem[_775]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _739
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _739
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_823] == bool(mem[_823])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _787
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _787
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_871] == bool(mem[_871])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _787
                mem[mem[64] + 100] = _739
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _787, _739, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_919] == mem[_919]
                require mem[_919 + 32] == mem[_919 + 32]
                require mem[_919 + 64] == mem[_919 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _991 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1003 = mem[_991]
                require mem[_991] == mem[_991]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1003
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1003
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1039 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1039] == bool(mem[_1039])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1087 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1099 = mem[_1087]
                require mem[_1087] == mem[_1087]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1147 = mem[_1135]
                require mem[_1135] == mem[_1135]
                require mem[_1135 + 32] == mem[_1135 + 32]
                require mem[_1135 + 64] == mem[_1135 + 92 len 4]
                require mem[_1135 + 96] == mem[_1135 + 124 len 4]
                mem[mem[64] + 4] = _1003
                mem[mem[64] + 36] = _1099
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1003, _1099, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1219] == mem[_1219]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1267] == mem[_1267]
                require mem[_1267 + 32] == mem[_1267 + 32]
                require mem[_1267 + 64] == mem[_1267 + 92 len 4]
                require mem[_1267 + 96] == mem[_1267 + 124 len 4]
                if mem[_1267] < _1147:
                    revert with 'NH{q', 17
                if mem[_1267] - _1147 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        else:
            if ext_call.return_data[12 len 20] == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                _380 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                _392 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _380 + (32 * _392) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _380 + 128
                t = (8 * ceil32(return_data.size)) + 128
                while idx < _392:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _740 = mem[_728]
                require mem[_728] == mem[_728]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _788 = mem[_776]
                require mem[_776] == mem[_776]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _740
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _740
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _824 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_824] == bool(mem[_824])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _788
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _788
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _872 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_872] == bool(mem[_872])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _788
                mem[mem[64] + 100] = _740
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _788, _740, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _920 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_920] == mem[_920]
                require mem[_920 + 32] == mem[_920 + 32]
                require mem[_920 + 64] == mem[_920 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _992 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1004 = mem[_992]
                require mem[_992] == mem[_992]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1004
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1004
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1040 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1040] == bool(mem[_1040])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1088 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1100 = mem[_1088]
                require mem[_1088] == mem[_1088]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1148 = mem[_1136]
                require mem[_1136] == mem[_1136]
                require mem[_1136 + 32] == mem[_1136 + 32]
                require mem[_1136 + 64] == mem[_1136 + 92 len 4]
                require mem[_1136 + 96] == mem[_1136 + 124 len 4]
                mem[mem[64] + 4] = _1004
                mem[mem[64] + 36] = _1100
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1004, _1100, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1220] == mem[_1220]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1268] == mem[_1268]
                require mem[_1268 + 32] == mem[_1268 + 32]
                require mem[_1268 + 64] == mem[_1268 + 92 len 4]
                require mem[_1268 + 96] == mem[_1268 + 124 len 4]
                if mem[_1268] < _1148:
                    revert with 'NH{q', 17
                if mem[_1268] - _1148 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            else:
                if ext_call.return_data[12 len 20] == stor3:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ('cd', 36)[0] == address(('cd', 36)[0])
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(('cd', 36)[0]))
                    staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                    _383 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                    _395 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                    mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                    require _383 + (32 * _395) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _383 + 128
                    t = (8 * ceil32(return_data.size)) + 128
                    while idx < _395:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _743 = mem[_731]
                    require mem[_731] == mem[_731]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _791 = mem[_779]
                    require mem[_779] == mem[_779]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _743
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _743
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_827] == bool(mem[_827])
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _791
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _791
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_875] == bool(mem[_875])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _791
                    mem[mem[64] + 100] = _743
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _791, _743, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_923] == mem[_923]
                    require mem[_923 + 32] == mem[_923 + 32]
                    require mem[_923 + 64] == mem[_923 + 64]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[100]))
                    staticcall address(cd[100]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _995 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1007 = mem[_995]
                    require mem[_995] == mem[_995]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = _1007
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[132]), _1007
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1043 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1043] == bool(mem[_1043])
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1091 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1103 = mem[_1091]
                    require mem[_1091] == mem[_1091]
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1151 = mem[_1139]
                    require mem[_1139] == mem[_1139]
                    require mem[_1139 + 32] == mem[_1139 + 32]
                    require mem[_1139 + 64] == mem[_1139 + 92 len 4]
                    require mem[_1139 + 96] == mem[_1139 + 124 len 4]
                    mem[mem[64] + 4] = _1007
                    mem[mem[64] + 36] = _1103
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1007, _1103, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1223] == mem[_1223]
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1271] == mem[_1271]
                    require mem[_1271 + 32] == mem[_1271 + 32]
                    require mem[_1271 + 64] == mem[_1271 + 92 len 4]
                    require mem[_1271 + 96] == mem[_1271 + 124 len 4]
                    if mem[_1271] < _1151:
                        revert with 'NH{q', 17
                    if mem[_1271] - _1151 < cd[164]:
                        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                else:
                    if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                        revert with 0, 'bad LP token'
                    if address(ext_call.return_data[0]) == stor1:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(('cd', 36)[0]))
                        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                        _381 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                        _393 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        require _381 + (32 * _393) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _381 + 128
                        t = (8 * ceil32(return_data.size)) + 128
                        while idx < _393:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _741 = mem[_729]
                        require mem[_729] == mem[_729]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _789 = mem[_777]
                        require mem[_777] == mem[_777]
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _741
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _741
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_825] == bool(mem[_825])
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _789
                        require ext_code.size(stor1)
                        call stor1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _789
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_873] == bool(mem[_873])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = _789
                        mem[mem[64] + 100] = _741
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _789, _741, 0, 0, address(this.address), block.timestamp + 60
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_921] == mem[_921]
                        require mem[_921 + 32] == mem[_921 + 32]
                        require mem[_921 + 64] == mem[_921 + 64]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[100]))
                        staticcall address(cd[100]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1005 = mem[_993]
                        require mem[_993] == mem[_993]
                        mem[mem[64] + 4] = address(cd[132])
                        mem[mem[64] + 36] = _1005
                        require ext_code.size(address(cd[100]))
                        call address(cd[100]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[132]), _1005
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == bool(mem[_1041])
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1101 = mem[_1089]
                        require mem[_1089] == mem[_1089]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1149 = mem[_1137]
                        require mem[_1137] == mem[_1137]
                        require mem[_1137 + 32] == mem[_1137 + 32]
                        require mem[_1137 + 64] == mem[_1137 + 92 len 4]
                        require mem[_1137 + 96] == mem[_1137 + 124 len 4]
                        mem[mem[64] + 4] = _1005
                        mem[mem[64] + 36] = _1101
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _1005, _1101, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1221] == mem[_1221]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1269] == mem[_1269]
                        require mem[_1269 + 32] == mem[_1269 + 32]
                        require mem[_1269 + 64] == mem[_1269 + 92 len 4]
                        require mem[_1269 + 96] == mem[_1269 + 124 len 4]
                        if mem[_1269] < _1149:
                            revert with 'NH{q', 17
                        if mem[_1269] - _1149 < cd[164]:
                            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                    else:
                        if address(ext_call.return_data[0]) != stor3:
                            revert with 0, 'bad LP token'
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(('cd', 36)[0]))
                        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
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
                        _382 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
                        _394 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        require _382 + (32 * _394) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _382 + 128
                        t = (8 * ceil32(return_data.size)) + 128
                        while idx < _394:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _742 = mem[_730]
                        require mem[_730] == mem[_730]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _790 = mem[_778]
                        require mem[_778] == mem[_778]
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _742
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _742
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _826 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_826] == bool(mem[_826])
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _790
                        require ext_code.size(stor1)
                        call stor1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _790
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_874] == bool(mem[_874])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = _790
                        mem[mem[64] + 100] = _742
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _790, _742, 0, 0, address(this.address), block.timestamp + 60
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_922] == mem[_922]
                        require mem[_922 + 32] == mem[_922 + 32]
                        require mem[_922 + 64] == mem[_922 + 64]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[100]))
                        staticcall address(cd[100]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _994 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1006 = mem[_994]
                        require mem[_994] == mem[_994]
                        mem[mem[64] + 4] = address(cd[132])
                        mem[mem[64] + 36] = _1006
                        require ext_code.size(address(cd[100]))
                        call address(cd[100]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[132]), _1006
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1042] == bool(mem[_1042])
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1102 = mem[_1090]
                        require mem[_1090] == mem[_1090]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1150 = mem[_1138]
                        require mem[_1138] == mem[_1138]
                        require mem[_1138 + 32] == mem[_1138 + 32]
                        require mem[_1138 + 64] == mem[_1138 + 92 len 4]
                        require mem[_1138 + 96] == mem[_1138 + 124 len 4]
                        mem[mem[64] + 4] = _1006
                        mem[mem[64] + 36] = _1102
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _1006, _1102, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1222 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1222] == mem[_1222]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1270] == mem[_1270]
                        require mem[_1270 + 32] == mem[_1270 + 32]
                        require mem[_1270 + 64] == mem[_1270 + 92 len 4]
                        require mem[_1270 + 96] == mem[_1270 + 124 len 4]
                        if mem[_1270] < _1150:
                            revert with 'NH{q', 17
                        if mem[_1270] - _1150 < cd[164]:
                            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    else:
        mem[100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.balanceOf(address arg1) with:
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
        staticcall stor2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 100] = stor3
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor3)
        call stor3.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
        mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token0() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).token1() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
            if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(11 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(13 * ceil32(return_data.size)) + 132] = 0
                mem[(13 * ceil32(return_data.size)) + 164] = 160
                mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (13 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _384 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                _396 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _384 + (32 * _396) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _384 + 128
                t = (14 * ceil32(return_data.size)) + 128
                while idx < _396:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _744 = mem[_732]
                require mem[_732] == mem[_732]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _780 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _792 = mem[_780]
                require mem[_780] == mem[_780]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _744
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _744
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_828] == bool(mem[_828])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _792
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _792
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_876] == bool(mem[_876])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _792
                mem[mem[64] + 100] = _744
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _792, _744, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _924 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_924] == mem[_924]
                require mem[_924 + 32] == mem[_924 + 32]
                require mem[_924 + 64] == mem[_924 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1008 = mem[_996]
                require mem[_996] == mem[_996]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1008
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1008
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1044 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1044] == bool(mem[_1044])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1092 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1104 = mem[_1092]
                require mem[_1092] == mem[_1092]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1152 = mem[_1140]
                require mem[_1140] == mem[_1140]
                require mem[_1140 + 32] == mem[_1140 + 32]
                require mem[_1140 + 64] == mem[_1140 + 92 len 4]
                require mem[_1140 + 96] == mem[_1140 + 124 len 4]
                mem[mem[64] + 4] = _1008
                mem[mem[64] + 36] = _1104
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1008, _1104, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1224] == mem[_1224]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1272] == mem[_1272]
                require mem[_1272 + 32] == mem[_1272 + 32]
                require mem[_1272 + 64] == mem[_1272 + 92 len 4]
                require mem[_1272 + 96] == mem[_1272 + 124 len 4]
                if mem[_1272] < _1152:
                    revert with 'NH{q', 17
                if mem[_1272] - _1152 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            else:
                if address(ext_call.return_data[0]) != stor3:
                    revert with 0, 'bad LP token'
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(11 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(13 * ceil32(return_data.size)) + 132] = 0
                mem[(13 * ceil32(return_data.size)) + 164] = 160
                mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (13 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _385 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                _397 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                require _385 + (32 * _397) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _385 + 128
                t = (14 * ceil32(return_data.size)) + 128
                while idx < _397:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _745 = mem[_733]
                require mem[_733] == mem[_733]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _793 = mem[_781]
                require mem[_781] == mem[_781]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _745
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _745
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_829] == bool(mem[_829])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _793
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _793
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_877] == bool(mem[_877])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _793
                mem[mem[64] + 100] = _745
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _793, _745, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _925 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_925] == mem[_925]
                require mem[_925 + 32] == mem[_925 + 32]
                require mem[_925 + 64] == mem[_925 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1009 = mem[_997]
                require mem[_997] == mem[_997]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1009
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1009
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1045 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1045] == bool(mem[_1045])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1093 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1105 = mem[_1093]
                require mem[_1093] == mem[_1093]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1153 = mem[_1141]
                require mem[_1141] == mem[_1141]
                require mem[_1141 + 32] == mem[_1141 + 32]
                require mem[_1141 + 64] == mem[_1141 + 92 len 4]
                require mem[_1141 + 96] == mem[_1141 + 124 len 4]
                mem[mem[64] + 4] = _1009
                mem[mem[64] + 36] = _1105
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1009, _1105, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1225] == mem[_1225]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1273] == mem[_1273]
                require mem[_1273 + 32] == mem[_1273 + 32]
                require mem[_1273 + 64] == mem[_1273 + 92 len 4]
                require mem[_1273 + 96] == mem[_1273 + 124 len 4]
                if mem[_1273] < _1153:
                    revert with 'NH{q', 17
                if mem[_1273] - _1153 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        else:
            if ext_call.return_data[12 len 20] == stor1:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                mem[(11 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(('cd', 36)[0]))
                staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(13 * ceil32(return_data.size)) + 132] = 0
                mem[(13 * ceil32(return_data.size)) + 164] = 160
                mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = (13 * ceil32(return_data.size)) + 292
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(13 * ceil32(return_data.size)) + 196] = this.address
                mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _386 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                _398 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                require _386 + (32 * _398) + 32 <= return_data.size
                idx = 0
                s = (13 * ceil32(return_data.size)) + _386 + 128
                t = (14 * ceil32(return_data.size)) + 128
                while idx < _398:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _746 = mem[_734]
                require mem[_734] == mem[_734]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _782 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _794 = mem[_782]
                require mem[_782] == mem[_782]
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _746
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _746
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_830] == bool(mem[_830])
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = _794
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), _794
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_878] == bool(mem[_878])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _794
                mem[mem[64] + 100] = _746
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[68]))
                call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _794, _746, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_926] == mem[_926]
                require mem[_926 + 32] == mem[_926 + 32]
                require mem[_926 + 64] == mem[_926 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1010 = mem[_998]
                require mem[_998] == mem[_998]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _1010
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _1010
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1046] == bool(mem[_1046])
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1094 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1106 = mem[_1094]
                require mem[_1094] == mem[_1094]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1154 = mem[_1142]
                require mem[_1142] == mem[_1142]
                require mem[_1142 + 32] == mem[_1142 + 32]
                require mem[_1142 + 64] == mem[_1142 + 92 len 4]
                require mem[_1142 + 96] == mem[_1142 + 124 len 4]
                mem[mem[64] + 4] = _1010
                mem[mem[64] + 36] = _1106
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(cd[132]))
                call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1010, _1106, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1226] == mem[_1226]
                require ext_code.size(address(cd[132]))
                staticcall address(cd[132]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1274] == mem[_1274]
                require mem[_1274 + 32] == mem[_1274 + 32]
                require mem[_1274 + 64] == mem[_1274 + 92 len 4]
                require mem[_1274 + 96] == mem[_1274 + 124 len 4]
                if mem[_1274] < _1154:
                    revert with 'NH{q', 17
                if mem[_1274] - _1154 < cd[164]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            else:
                if ext_call.return_data[12 len 20] == stor3:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require ('cd', 36)[0] == address(('cd', 36)[0])
                    mem[(11 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(('cd', 36)[0]))
                    staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                    mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                    mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                    require ext_code.size(address(('cd', 36)[0]))
                    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                    mem[(13 * ceil32(return_data.size)) + 132] = 0
                    mem[(13 * ceil32(return_data.size)) + 164] = 160
                    mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                    idx = 0
                    s = cd[36] + 36
                    t = (13 * ceil32(return_data.size)) + 292
                    while idx < ('cd', 36).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(13 * ceil32(return_data.size)) + 196] = this.address
                    mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _389 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                    _401 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
                    mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
                    require _389 + (32 * _401) + 32 <= return_data.size
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + _389 + 128
                    t = (14 * ceil32(return_data.size)) + 128
                    while idx < _401:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _749 = mem[_737]
                    require mem[_737] == mem[_737]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _797 = mem[_785]
                    require mem[_785] == mem[_785]
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _749
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _749
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_833] == bool(mem[_833])
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = _797
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), _797
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_881] == bool(mem[_881])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _797
                    mem[mem[64] + 100] = _749
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _797, _749, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_929] == mem[_929]
                    require mem[_929 + 32] == mem[_929 + 32]
                    require mem[_929 + 64] == mem[_929 + 64]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[100]))
                    staticcall address(cd[100]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1001 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1013 = mem[_1001]
                    require mem[_1001] == mem[_1001]
                    mem[mem[64] + 4] = address(cd[132])
                    mem[mem[64] + 36] = _1013
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[132]), _1013
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1049 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1049] == bool(mem[_1049])
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1097 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1109 = mem[_1097]
                    require mem[_1097] == mem[_1097]
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1157 = mem[_1145]
                    require mem[_1145] == mem[_1145]
                    require mem[_1145 + 32] == mem[_1145 + 32]
                    require mem[_1145 + 64] == mem[_1145 + 92 len 4]
                    require mem[_1145 + 96] == mem[_1145 + 124 len 4]
                    mem[mem[64] + 4] = _1013
                    mem[mem[64] + 36] = _1109
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(address(cd[132]))
                    call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1013, _1109, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1229] == mem[_1229]
                    require ext_code.size(address(cd[132]))
                    staticcall address(cd[132]).bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1277] == mem[_1277]
                    require mem[_1277 + 32] == mem[_1277 + 32]
                    require mem[_1277 + 64] == mem[_1277 + 92 len 4]
                    require mem[_1277 + 96] == mem[_1277 + 124 len 4]
                    if mem[_1277] < _1157:
                        revert with 'NH{q', 17
                    if mem[_1277] - _1157 < cd[164]:
                        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                else:
                    if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]):
                        revert with 0, 'bad LP token'
                    if address(ext_call.return_data[0]) == stor1:
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        mem[(11 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(('cd', 36)[0]))
                        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                        mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                        mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        require ext_code.size(address(('cd', 36)[0]))
                        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(13 * ceil32(return_data.size)) + 132] = 0
                        mem[(13 * ceil32(return_data.size)) + 164] = 160
                        mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                        idx = 0
                        s = cd[36] + 36
                        t = (13 * ceil32(return_data.size)) + 292
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(13 * ceil32(return_data.size)) + 196] = this.address
                        mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (14 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _387 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                        require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _399 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        require _387 + (32 * _399) + 32 <= return_data.size
                        idx = 0
                        s = (13 * ceil32(return_data.size)) + _387 + 128
                        t = (14 * ceil32(return_data.size)) + 128
                        while idx < _399:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _735 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _747 = mem[_735]
                        require mem[_735] == mem[_735]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _795 = mem[_783]
                        require mem[_783] == mem[_783]
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _747
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _747
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_831] == bool(mem[_831])
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _795
                        require ext_code.size(stor1)
                        call stor1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _795
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _879 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_879] == bool(mem[_879])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = _795
                        mem[mem[64] + 100] = _747
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _795, _747, 0, 0, address(this.address), block.timestamp + 60
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_927] == mem[_927]
                        require mem[_927 + 32] == mem[_927 + 32]
                        require mem[_927 + 64] == mem[_927 + 64]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[100]))
                        staticcall address(cd[100]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1011 = mem[_999]
                        require mem[_999] == mem[_999]
                        mem[mem[64] + 4] = address(cd[132])
                        mem[mem[64] + 36] = _1011
                        require ext_code.size(address(cd[100]))
                        call address(cd[100]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[132]), _1011
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == bool(mem[_1047])
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1095 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1107 = mem[_1095]
                        require mem[_1095] == mem[_1095]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1155 = mem[_1143]
                        require mem[_1143] == mem[_1143]
                        require mem[_1143 + 32] == mem[_1143 + 32]
                        require mem[_1143 + 64] == mem[_1143 + 92 len 4]
                        require mem[_1143 + 96] == mem[_1143 + 124 len 4]
                        mem[mem[64] + 4] = _1011
                        mem[mem[64] + 36] = _1107
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _1011, _1107, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1227] == mem[_1227]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1275] == mem[_1275]
                        require mem[_1275 + 32] == mem[_1275 + 32]
                        require mem[_1275 + 64] == mem[_1275 + 92 len 4]
                        require mem[_1275 + 96] == mem[_1275 + 124 len 4]
                        if mem[_1275] < _1155:
                            revert with 'NH{q', 17
                        if mem[_1275] - _1155 < cd[164]:
                            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                    else:
                        if address(ext_call.return_data[0]) != stor3:
                            revert with 0, 'bad LP token'
                        if 0 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require ('cd', 36)[0] == address(('cd', 36)[0])
                        mem[(11 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(address(('cd', 36)[0]))
                        staticcall address(('cd', 36)[0]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
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
                        mem[(12 * ceil32(return_data.size)) + 100] = address(cd[4])
                        mem[(12 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        require ext_code.size(address(('cd', 36)[0]))
                        call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[(13 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(13 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                        mem[(13 * ceil32(return_data.size)) + 132] = 0
                        mem[(13 * ceil32(return_data.size)) + 164] = 160
                        mem[(13 * ceil32(return_data.size)) + 260] = ('cd', 36).length
                        idx = 0
                        s = cd[36] + 36
                        t = (13 * ceil32(return_data.size)) + 292
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(13 * ceil32(return_data.size)) + 196] = this.address
                        mem[(13 * ceil32(return_data.size)) + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 36).length, mem[(13 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(13 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (14 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _388 = mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                        require mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                        require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (13 * ceil32(return_data.size)) + return_data.size + 96
                        _400 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                            revert with 'NH{q', 65
                        if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
                        mem[(14 * ceil32(return_data.size)) + 96] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
                        require _388 + (32 * _400) + 32 <= return_data.size
                        idx = 0
                        s = (13 * ceil32(return_data.size)) + _388 + 128
                        t = (14 * ceil32(return_data.size)) + 128
                        while idx < _400:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _736 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _748 = mem[_736]
                        require mem[_736] == mem[_736]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _796 = mem[_784]
                        require mem[_784] == mem[_784]
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _748
                        require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                        call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _748
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _832 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_832] == bool(mem[_832])
                        mem[mem[64] + 4] = address(cd[68])
                        mem[mem[64] + 36] = _796
                        require ext_code.size(stor1)
                        call stor1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), _796
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_880] == bool(mem[_880])
                        if block.timestamp > -61:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = _796
                        mem[mem[64] + 100] = _748
                        mem[mem[64] + 132] = 0
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = this.address
                        mem[mem[64] + 228] = block.timestamp + 60
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                             gas gas_remaining wei
                            args stor1, address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), _796, _748, 0, 0, address(this.address), block.timestamp + 60
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_928] == mem[_928]
                        require mem[_928 + 32] == mem[_928 + 32]
                        require mem[_928 + 64] == mem[_928 + 64]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[100]))
                        staticcall address(cd[100]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1000 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1012 = mem[_1000]
                        require mem[_1000] == mem[_1000]
                        mem[mem[64] + 4] = address(cd[132])
                        mem[mem[64] + 36] = _1012
                        require ext_code.size(address(cd[100]))
                        call address(cd[100]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[132]), _1012
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1048] == bool(mem[_1048])
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1096 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1108 = mem[_1096]
                        require mem[_1096] == mem[_1096]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1156 = mem[_1144]
                        require mem[_1144] == mem[_1144]
                        require mem[_1144 + 32] == mem[_1144 + 32]
                        require mem[_1144 + 64] == mem[_1144 + 92 len 4]
                        require mem[_1144 + 96] == mem[_1144 + 124 len 4]
                        mem[mem[64] + 4] = _1012
                        mem[mem[64] + 36] = _1108
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[132]))
                        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _1012, _1108, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1228] == mem[_1228]
                        require ext_code.size(address(cd[132]))
                        staticcall address(cd[132]).bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1276] == mem[_1276]
                        require mem[_1276 + 32] == mem[_1276 + 32]
                        require mem[_1276 + 64] == mem[_1276 + 92 len 4]
                        require mem[_1276 + 96] == mem[_1276 + 124 len 4]
                        if mem[_1276] < _1156:
                            revert with 'NH{q', 17
                        if mem[_1276] - _1156 < cd[164]:
                            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
}



}
