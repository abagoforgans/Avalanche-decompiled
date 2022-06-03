contract main {




// =====================  Runtime code  =====================


#
#  - mintWithLP(address arg1, uint256 arg2)
#
address owner;
address stor1;
address stor2;
address stor3;
address stor6;
address stor7;
address stor8;
address stor9;
mapping of address stor10;
mapping of address stor11;

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

function payoutForERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require arg1
    mem[ceil32(return_data.size) + 100] = stor8
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor3
    mem[(2 * ceil32(return_data.size)) + 160] = arg1
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(stor8)
    call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _40 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _41 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _41
    require _40 + (32 * _41) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _40 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _41:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_77]
    require mem[_77] == mem[_77]
    mem[0] = arg1
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _78
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _78
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_82] == bool(mem[_82])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_86]
    require mem[_86] == mem[_86]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _91 = mem[_90]
    require mem[_90] == mem[_90]
    require mem[_90 + 32] == mem[_90 + 32]
    require mem[_90 + 64] == mem[_90 + 92 len 4]
    require mem[_90 + 96] == mem[_90 + 124 len 4]
    mem[mem[64] + 4] = _78
    mem[mem[64] + 36] = _87
    mem[mem[64] + 68] = this.address
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _78, _87, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_97] == mem[_97]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_101] == mem[_101]
    require mem[_101 + 32] == mem[_101 + 32]
    require mem[_101 + 64] == mem[_101 + 92 len 4]
    require mem[_101 + 96] == mem[_101 + 124 len 4]
    if mem[_101] < _91:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_101] - _91
    return memory
      from mem[64]
       len 32
}

function mintWithERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require arg1
    mem[ceil32(return_data.size) + 100] = stor8
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor8, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor3
    mem[(2 * ceil32(return_data.size)) + 160] = arg1
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(stor8)
    call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _39 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _40 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _39 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _77 = mem[_76]
    require mem[_76] == mem[_76]
    mem[0] = arg1
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _77
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _77
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_81] == bool(mem[_81])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    require mem[_85] == mem[_85]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _90 = mem[_89]
    require mem[_89] == mem[_89]
    require mem[_89 + 32] == mem[_89 + 32]
    require mem[_89 + 64] == mem[_89 + 92 len 4]
    require mem[_89 + 96] == mem[_89 + 124 len 4]
    mem[mem[64] + 4] = _77
    mem[mem[64] + 36] = _86
    mem[mem[64] + 68] = this.address
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _77, _86, this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_96] == mem[_96]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_100] == mem[_100]
    require mem[_100 + 32] == mem[_100 + 32]
    require mem[_100 + 64] == mem[_100 + 92 len 4]
    require mem[_100 + 96] == mem[_100 + 124 len 4]
    if mem[_100] < _90:
        revert with 'NH{q', 17
    if mem[_100] - _90 < arg2:
        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
}

function payoutForLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 == stor6:
        mem[0] = stor1
        mem[32] = 10
        require stor10[stor1]
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor10[stor1])
        staticcall stor10[stor1].token1() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != stor1:
            if ext_call.return_data[12 len 20] != stor1:
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor3:
                revert with 0, 'bad LP token'
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
            require stor1
            mem[(6 * ceil32(return_data.size)) + 100] = stor8
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor3
            mem[(7 * ceil32(return_data.size)) + 160] = stor1
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _263 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _269 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _269
            require _263 + (32 * _269) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _263 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _269:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            if arg1 != stor6:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _635 = mem[_623]
                require mem[_623] == mem[_623]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _677 = mem[_665]
                require mem[_665] == mem[_665]
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 36] = _635
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, _635
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_719] == bool(mem[_719])
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 36] = _677
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, _677
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_773] == bool(mem[_773])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _635
                mem[mem[64] + 100] = _677
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, stor3, _635, _677, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_869] == mem[_869]
                require mem[_869 + 32] == mem[_869 + 32]
                require mem[_869 + 64] == mem[_869 + 64]
                mem[0] = arg1
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _941 = mem[_935]
                require mem[_935] == mem[_935]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _941
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _941
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _965 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_965] == bool(mem[_965])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1007 = mem[_995]
                require mem[_995] == mem[_995]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1043 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1049 = mem[_1043]
                require mem[_1043] == mem[_1043]
                require mem[_1043 + 32] == mem[_1043 + 32]
                require mem[_1043 + 64] == mem[_1043 + 92 len 4]
                require mem[_1043 + 96] == mem[_1043 + 124 len 4]
                mem[mem[64] + 4] = _941
                mem[mem[64] + 36] = _1007
                mem[mem[64] + 68] = this.address
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _941, _1007, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1145] == mem[_1145]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1199] == mem[_1199]
                require mem[_1199 + 32] == mem[_1199 + 32]
                require mem[_1199 + 64] == mem[_1199 + 92 len 4]
                require mem[_1199 + 96] == mem[_1199 + 124 len 4]
                if mem[_1199] < _1049:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_1199] - _1049
            else:
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_624] == mem[_624]
                mem[mem[64] + 4] = mem[_624]
                mem[mem[64] + 36] = this.address
                require ext_code.size(stor7)
                call stor7.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(this.address)
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
                _701 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _707 = mem[_701]
                require mem[_701] == mem[_701]
                mem[mem[64] + 4] = mem[_701]
                require ext_code.size(stor6)
                call stor6.wrap(uint256 arg1) with:
                     gas gas_remaining wei
                    args _707
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_743] == mem[_743]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _797 = mem[_791]
                require mem[_791] == mem[_791]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _827 = mem[_821]
                require mem[_821] == mem[_821]
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = _797
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor9, _797
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _845 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_845] == bool(mem[_845])
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = _827
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor9, _827
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_893] == bool(mem[_893])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _797
                mem[mem[64] + 100] = _827
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor9)
                call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor6, stor1, _797, _827, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1001 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1001] == mem[_1001]
                require mem[_1001 + 32] == mem[_1001 + 32]
                require mem[_1001 + 64] == mem[_1001 + 64]
                mem[0] = arg1
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1085 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1091 = mem[_1085]
                require mem[_1085] == mem[_1085]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _1091
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _1091
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1127] == bool(mem[_1127])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1175 = mem[_1169]
                require mem[_1169] == mem[_1169]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1223 = mem[_1217]
                require mem[_1217] == mem[_1217]
                require mem[_1217 + 32] == mem[_1217 + 32]
                require mem[_1217 + 64] == mem[_1217 + 92 len 4]
                require mem[_1217 + 96] == mem[_1217 + 124 len 4]
                mem[mem[64] + 4] = _1091
                mem[mem[64] + 36] = _1175
                mem[mem[64] + 68] = this.address
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1091, _1175, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1289] == mem[_1289]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1313] == mem[_1313]
                require mem[_1313 + 32] == mem[_1313 + 32]
                require mem[_1313 + 64] == mem[_1313 + 92 len 4]
                require mem[_1313 + 96] == mem[_1313 + 124 len 4]
                if mem[_1313] < _1223:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_1313] - _1223
        else:
            if ext_call.return_data[12 len 20] == stor3:
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
                require stor1
                mem[(6 * ceil32(return_data.size)) + 100] = stor8
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 96] = 2
                mem[(7 * ceil32(return_data.size)) + 128] = stor3
                mem[(7 * ceil32(return_data.size)) + 160] = stor1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(7 * ceil32(return_data.size)) + 228] = 0
                mem[(7 * ceil32(return_data.size)) + 260] = 160
                mem[(7 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _265 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _271 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = _271
                require _265 + (32 * _271) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _265 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _271:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                if arg1 != stor6:
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_627]
                    require mem[_627] == mem[_627]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _667 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _679 = mem[_667]
                    require mem[_667] == mem[_667]
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _639
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _639
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_723] == bool(mem[_723])
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _679
                    require ext_code.size(stor3)
                    call stor3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _679
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_775] == bool(mem[_775])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _639
                    mem[mem[64] + 100] = _679
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor8)
                    call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, stor3, _639, _679, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_871] == mem[_871]
                    require mem[_871 + 32] == mem[_871 + 32]
                    require mem[_871 + 64] == mem[_871 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _943 = mem[_937]
                    require mem[_937] == mem[_937]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _943
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _943
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _967 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_967] == bool(mem[_967])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1009 = mem[_997]
                    require mem[_997] == mem[_997]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1051 = mem[_1045]
                    require mem[_1045] == mem[_1045]
                    require mem[_1045 + 32] == mem[_1045 + 32]
                    require mem[_1045 + 64] == mem[_1045 + 92 len 4]
                    require mem[_1045 + 96] == mem[_1045 + 124 len 4]
                    mem[mem[64] + 4] = _943
                    mem[mem[64] + 36] = _1009
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _943, _1009, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1147] == mem[_1147]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1201] == mem[_1201]
                    require mem[_1201 + 32] == mem[_1201 + 32]
                    require mem[_1201 + 64] == mem[_1201 + 92 len 4]
                    require mem[_1201 + 96] == mem[_1201 + 124 len 4]
                    if mem[_1201] < _1051:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1201] - _1051
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_628] == mem[_628]
                    mem[mem[64] + 4] = mem[_628]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor7)
                    call stor7.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(this.address)
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
                    _703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _709 = mem[_703]
                    require mem[_703] == mem[_703]
                    mem[mem[64] + 4] = mem[_703]
                    require ext_code.size(stor6)
                    call stor6.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args _709
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_745] == mem[_745]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _799 = mem[_793]
                    require mem[_793] == mem[_793]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _829 = mem[_823]
                    require mem[_823] == mem[_823]
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _799
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _799
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_847] == bool(mem[_847])
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _829
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _829
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _895 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_895] == bool(mem[_895])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _799
                    mem[mem[64] + 100] = _829
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor9)
                    call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor6, stor1, _799, _829, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1003] == mem[_1003]
                    require mem[_1003 + 32] == mem[_1003 + 32]
                    require mem[_1003 + 64] == mem[_1003 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1087 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1093 = mem[_1087]
                    require mem[_1087] == mem[_1087]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _1093
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _1093
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1129] == bool(mem[_1129])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1177 = mem[_1171]
                    require mem[_1171] == mem[_1171]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1225 = mem[_1219]
                    require mem[_1219] == mem[_1219]
                    require mem[_1219 + 32] == mem[_1219 + 32]
                    require mem[_1219 + 64] == mem[_1219 + 92 len 4]
                    require mem[_1219 + 96] == mem[_1219 + 124 len 4]
                    mem[mem[64] + 4] = _1093
                    mem[mem[64] + 36] = _1177
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1093, _1177, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1291] == mem[_1291]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1315] == mem[_1315]
                    require mem[_1315 + 32] == mem[_1315 + 32]
                    require mem[_1315 + 64] == mem[_1315 + 92 len 4]
                    require mem[_1315 + 96] == mem[_1315 + 124 len 4]
                    if mem[_1315] < _1225:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1315] - _1225
            else:
                if ext_call.return_data[12 len 20] != stor1:
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor3:
                    revert with 0, 'bad LP token'
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
                require stor1
                mem[(6 * ceil32(return_data.size)) + 100] = stor8
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 96] = 2
                mem[(7 * ceil32(return_data.size)) + 128] = stor3
                mem[(7 * ceil32(return_data.size)) + 160] = stor1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(7 * ceil32(return_data.size)) + 228] = 0
                mem[(7 * ceil32(return_data.size)) + 260] = 160
                mem[(7 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _264 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _270 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = _270
                require _264 + (32 * _270) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _264 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _270:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                if arg1 != stor6:
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _637 = mem[_625]
                    require mem[_625] == mem[_625]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _666 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _678 = mem[_666]
                    require mem[_666] == mem[_666]
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _637
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _637
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_721] == bool(mem[_721])
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _678
                    require ext_code.size(stor3)
                    call stor3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _678
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == bool(mem[_774])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _637
                    mem[mem[64] + 100] = _678
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor8)
                    call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, stor3, _637, _678, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_870] == mem[_870]
                    require mem[_870 + 32] == mem[_870 + 32]
                    require mem[_870 + 64] == mem[_870 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _942 = mem[_936]
                    require mem[_936] == mem[_936]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _942
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _942
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_966] == bool(mem[_966])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _996 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1008 = mem[_996]
                    require mem[_996] == mem[_996]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1044 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1050 = mem[_1044]
                    require mem[_1044] == mem[_1044]
                    require mem[_1044 + 32] == mem[_1044 + 32]
                    require mem[_1044 + 64] == mem[_1044 + 92 len 4]
                    require mem[_1044 + 96] == mem[_1044 + 124 len 4]
                    mem[mem[64] + 4] = _942
                    mem[mem[64] + 36] = _1008
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _942, _1008, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1146] == mem[_1146]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1200] == mem[_1200]
                    require mem[_1200 + 32] == mem[_1200 + 32]
                    require mem[_1200 + 64] == mem[_1200 + 92 len 4]
                    require mem[_1200 + 96] == mem[_1200 + 124 len 4]
                    if mem[_1200] < _1050:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1200] - _1050
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_626] == mem[_626]
                    mem[mem[64] + 4] = mem[_626]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor7)
                    call stor7.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(this.address)
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
                    _702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _708 = mem[_702]
                    require mem[_702] == mem[_702]
                    mem[mem[64] + 4] = mem[_702]
                    require ext_code.size(stor6)
                    call stor6.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args _708
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_744] == mem[_744]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _798 = mem[_792]
                    require mem[_792] == mem[_792]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _822 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _828 = mem[_822]
                    require mem[_822] == mem[_822]
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _798
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _798
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_846] == bool(mem[_846])
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _828
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _828
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _894 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_894] == bool(mem[_894])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _798
                    mem[mem[64] + 100] = _828
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor9)
                    call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor6, stor1, _798, _828, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1002 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1002] == mem[_1002]
                    require mem[_1002 + 32] == mem[_1002 + 32]
                    require mem[_1002 + 64] == mem[_1002 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1092 = mem[_1086]
                    require mem[_1086] == mem[_1086]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _1092
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _1092
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1128] == bool(mem[_1128])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1176 = mem[_1170]
                    require mem[_1170] == mem[_1170]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1224 = mem[_1218]
                    require mem[_1218] == mem[_1218]
                    require mem[_1218 + 32] == mem[_1218 + 32]
                    require mem[_1218 + 64] == mem[_1218 + 92 len 4]
                    require mem[_1218 + 96] == mem[_1218 + 124 len 4]
                    mem[mem[64] + 4] = _1092
                    mem[mem[64] + 36] = _1176
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1092, _1176, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1290] == mem[_1290]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1314] == mem[_1314]
                    require mem[_1314 + 32] == mem[_1314 + 32]
                    require mem[_1314 + 64] == mem[_1314 + 92 len 4]
                    require mem[_1314 + 96] == mem[_1314 + 124 len 4]
                    if mem[_1314] < _1224:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1314] - _1224
    else:
        mem[0] = arg1
        mem[32] = 10
        require stor10[address(arg1)]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != arg1:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor3:
                revert with 0, 'bad LP token'
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
            require arg1
            mem[(6 * ceil32(return_data.size)) + 100] = stor8
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor3
            mem[(7 * ceil32(return_data.size)) + 160] = arg1
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor8)
            call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _266 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _272 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _272
            require _266 + (32 * _272) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _266 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _272:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            if arg1 != stor6:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _641 = mem[_629]
                require mem[_629] == mem[_629]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _668 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _680 = mem[_668]
                require mem[_668] == mem[_668]
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 36] = _641
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, _641
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_725] == bool(mem[_725])
                mem[mem[64] + 4] = stor8
                mem[mem[64] + 36] = _680
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, _680
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_776] == bool(mem[_776])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _641
                mem[mem[64] + 100] = _680
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), stor3, _641, _680, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _872 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_872] == mem[_872]
                require mem[_872 + 32] == mem[_872 + 32]
                require mem[_872 + 64] == mem[_872 + 64]
                mem[0] = arg1
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _944 = mem[_938]
                require mem[_938] == mem[_938]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _944
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _944
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _968 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_968] == bool(mem[_968])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1010 = mem[_998]
                require mem[_998] == mem[_998]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1052 = mem[_1046]
                require mem[_1046] == mem[_1046]
                require mem[_1046 + 32] == mem[_1046 + 32]
                require mem[_1046 + 64] == mem[_1046 + 92 len 4]
                require mem[_1046 + 96] == mem[_1046 + 124 len 4]
                mem[mem[64] + 4] = _944
                mem[mem[64] + 36] = _1010
                mem[mem[64] + 68] = this.address
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _944, _1010, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1148] == mem[_1148]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1202] == mem[_1202]
                require mem[_1202 + 32] == mem[_1202 + 32]
                require mem[_1202 + 64] == mem[_1202 + 92 len 4]
                require mem[_1202 + 96] == mem[_1202 + 124 len 4]
                if mem[_1202] < _1052:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_1202] - _1052
            else:
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_630] == mem[_630]
                mem[mem[64] + 4] = mem[_630]
                mem[mem[64] + 36] = this.address
                require ext_code.size(stor7)
                call stor7.stake(uint256 arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(this.address)
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
                _704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _710 = mem[_704]
                require mem[_704] == mem[_704]
                mem[mem[64] + 4] = mem[_704]
                require ext_code.size(stor6)
                call stor6.wrap(uint256 arg1) with:
                     gas gas_remaining wei
                    args _710
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _746 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_746] == mem[_746]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _800 = mem[_794]
                require mem[_794] == mem[_794]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _824 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _830 = mem[_824]
                require mem[_824] == mem[_824]
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = _800
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor9, _800
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_848] == bool(mem[_848])
                mem[mem[64] + 4] = stor9
                mem[mem[64] + 36] = _830
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor9, _830
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_896] == bool(mem[_896])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _800
                mem[mem[64] + 100] = _830
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor9)
                call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor6, stor1, _800, _830, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1004 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1004] == mem[_1004]
                require mem[_1004 + 32] == mem[_1004 + 32]
                require mem[_1004 + 64] == mem[_1004 + 64]
                mem[0] = arg1
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1088 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1094 = mem[_1088]
                require mem[_1088] == mem[_1088]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _1094
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _1094
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1130] == bool(mem[_1130])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1178 = mem[_1172]
                require mem[_1172] == mem[_1172]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1226 = mem[_1220]
                require mem[_1220] == mem[_1220]
                require mem[_1220 + 32] == mem[_1220 + 32]
                require mem[_1220 + 64] == mem[_1220 + 92 len 4]
                require mem[_1220 + 96] == mem[_1220 + 124 len 4]
                mem[mem[64] + 4] = _1094
                mem[mem[64] + 36] = _1178
                mem[mem[64] + 68] = this.address
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _1094, _1178, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1292] == mem[_1292]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1316] == mem[_1316]
                require mem[_1316 + 32] == mem[_1316 + 32]
                require mem[_1316 + 64] == mem[_1316 + 92 len 4]
                require mem[_1316 + 96] == mem[_1316 + 124 len 4]
                if mem[_1316] < _1226:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_1316] - _1226
        else:
            if ext_call.return_data[12 len 20] == stor3:
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
                require arg1
                mem[(6 * ceil32(return_data.size)) + 100] = stor8
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 96] = 2
                mem[(7 * ceil32(return_data.size)) + 128] = stor3
                mem[(7 * ceil32(return_data.size)) + 160] = arg1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(7 * ceil32(return_data.size)) + 228] = 0
                mem[(7 * ceil32(return_data.size)) + 260] = 160
                mem[(7 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _268 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _274 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = _274
                require _268 + (32 * _274) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _268 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _274:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                if arg1 != stor6:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _645 = mem[_633]
                    require mem[_633] == mem[_633]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _682 = mem[_670]
                    require mem[_670] == mem[_670]
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _645
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _645
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_729] == bool(mem[_729])
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _682
                    require ext_code.size(stor3)
                    call stor3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _682
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _778 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_778] == bool(mem[_778])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _645
                    mem[mem[64] + 100] = _682
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor8)
                    call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(arg1), stor3, _645, _682, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_874] == mem[_874]
                    require mem[_874 + 32] == mem[_874 + 32]
                    require mem[_874 + 64] == mem[_874 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _946 = mem[_940]
                    require mem[_940] == mem[_940]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _946
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _946
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _970 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_970] == bool(mem[_970])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1012 = mem[_1000]
                    require mem[_1000] == mem[_1000]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1048 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1054 = mem[_1048]
                    require mem[_1048] == mem[_1048]
                    require mem[_1048 + 32] == mem[_1048 + 32]
                    require mem[_1048 + 64] == mem[_1048 + 92 len 4]
                    require mem[_1048 + 96] == mem[_1048 + 124 len 4]
                    mem[mem[64] + 4] = _946
                    mem[mem[64] + 36] = _1012
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _946, _1012, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1150 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1150] == mem[_1150]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1204 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1204] == mem[_1204]
                    require mem[_1204 + 32] == mem[_1204 + 32]
                    require mem[_1204 + 64] == mem[_1204 + 92 len 4]
                    require mem[_1204 + 96] == mem[_1204 + 124 len 4]
                    if mem[_1204] < _1054:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1204] - _1054
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_634] == mem[_634]
                    mem[mem[64] + 4] = mem[_634]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor7)
                    call stor7.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(this.address)
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
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _712 = mem[_706]
                    require mem[_706] == mem[_706]
                    mem[mem[64] + 4] = mem[_706]
                    require ext_code.size(stor6)
                    call stor6.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args _712
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_748] == mem[_748]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _802 = mem[_796]
                    require mem[_796] == mem[_796]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _832 = mem[_826]
                    require mem[_826] == mem[_826]
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _802
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _802
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_850] == bool(mem[_850])
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _832
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _832
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _898 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_898] == bool(mem[_898])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _802
                    mem[mem[64] + 100] = _832
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor9)
                    call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor6, stor1, _802, _832, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1006 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1006] == mem[_1006]
                    require mem[_1006 + 32] == mem[_1006 + 32]
                    require mem[_1006 + 64] == mem[_1006 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1090 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1096 = mem[_1090]
                    require mem[_1090] == mem[_1090]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _1096
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _1096
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1132] == bool(mem[_1132])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1174 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1180 = mem[_1174]
                    require mem[_1174] == mem[_1174]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1228 = mem[_1222]
                    require mem[_1222] == mem[_1222]
                    require mem[_1222 + 32] == mem[_1222 + 32]
                    require mem[_1222 + 64] == mem[_1222 + 92 len 4]
                    require mem[_1222 + 96] == mem[_1222 + 124 len 4]
                    mem[mem[64] + 4] = _1096
                    mem[mem[64] + 36] = _1180
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1096, _1180, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1294] == mem[_1294]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1318] == mem[_1318]
                    require mem[_1318 + 32] == mem[_1318 + 32]
                    require mem[_1318 + 64] == mem[_1318 + 92 len 4]
                    require mem[_1318 + 96] == mem[_1318 + 124 len 4]
                    if mem[_1318] < _1228:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1318] - _1228
            else:
                if ext_call.return_data[12 len 20] != arg1:
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor3:
                    revert with 0, 'bad LP token'
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
                require arg1
                mem[(6 * ceil32(return_data.size)) + 100] = stor8
                mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 96] = 2
                mem[(7 * ceil32(return_data.size)) + 128] = stor3
                mem[(7 * ceil32(return_data.size)) + 160] = arg1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(7 * ceil32(return_data.size)) + 228] = 0
                mem[(7 * ceil32(return_data.size)) + 260] = 160
                mem[(7 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + 128
                t = (7 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor8)
                call stor8.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _267 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _273 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * (997 * ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / (1994 * ext_call.return_data[0] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = _273
                require _267 + (32 * _273) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _267 + 224
                t = (8 * ceil32(return_data.size)) + 224
                while idx < _273:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                if arg1 != stor6:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _643 = mem[_631]
                    require mem[_631] == mem[_631]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _681 = mem[_669]
                    require mem[_669] == mem[_669]
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _643
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _643
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _727 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_727] == bool(mem[_727])
                    mem[mem[64] + 4] = stor8
                    mem[mem[64] + 36] = _681
                    require ext_code.size(stor3)
                    call stor3.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8, _681
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == bool(mem[_777])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _643
                    mem[mem[64] + 100] = _681
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor8)
                    call stor8.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(arg1), stor3, _643, _681, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_873] == mem[_873]
                    require mem[_873 + 32] == mem[_873 + 32]
                    require mem[_873 + 64] == mem[_873 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _945 = mem[_939]
                    require mem[_939] == mem[_939]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _945
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _945
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_969] == bool(mem[_969])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _999 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1011 = mem[_999]
                    require mem[_999] == mem[_999]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1047 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1053 = mem[_1047]
                    require mem[_1047] == mem[_1047]
                    require mem[_1047 + 32] == mem[_1047 + 32]
                    require mem[_1047 + 64] == mem[_1047 + 92 len 4]
                    require mem[_1047 + 96] == mem[_1047 + 124 len 4]
                    mem[mem[64] + 4] = _945
                    mem[mem[64] + 36] = _1011
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _945, _1011, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1149] == mem[_1149]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1203] == mem[_1203]
                    require mem[_1203 + 32] == mem[_1203 + 32]
                    require mem[_1203 + 64] == mem[_1203 + 92 len 4]
                    require mem[_1203 + 96] == mem[_1203 + 124 len 4]
                    if mem[_1203] < _1053:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1203] - _1053
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _632 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_632] == mem[_632]
                    mem[mem[64] + 4] = mem[_632]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(stor7)
                    call stor7.stake(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(this.address)
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
                    _705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _711 = mem[_705]
                    require mem[_705] == mem[_705]
                    mem[mem[64] + 4] = mem[_705]
                    require ext_code.size(stor6)
                    call stor6.wrap(uint256 arg1) with:
                         gas gas_remaining wei
                        args _711
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_747] == mem[_747]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _801 = mem[_795]
                    require mem[_795] == mem[_795]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _831 = mem[_825]
                    require mem[_825] == mem[_825]
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _801
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _801
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_849] == bool(mem[_849])
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = _831
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor9, _831
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_897] == bool(mem[_897])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _801
                    mem[mem[64] + 100] = _831
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor9)
                    call stor9.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor6, stor1, _801, _831, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1005 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1005] == mem[_1005]
                    require mem[_1005 + 32] == mem[_1005 + 32]
                    require mem[_1005 + 64] == mem[_1005 + 64]
                    mem[0] = arg1
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1089 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1095 = mem[_1089]
                    require mem[_1089] == mem[_1089]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _1095
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _1095
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1131] == bool(mem[_1131])
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1179 = mem[_1173]
                    require mem[_1173] == mem[_1173]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1227 = mem[_1221]
                    require mem[_1221] == mem[_1221]
                    require mem[_1221 + 32] == mem[_1221 + 32]
                    require mem[_1221 + 64] == mem[_1221 + 92 len 4]
                    require mem[_1221 + 96] == mem[_1221 + 124 len 4]
                    mem[mem[64] + 4] = _1095
                    mem[mem[64] + 36] = _1179
                    mem[mem[64] + 68] = this.address
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _1095, _1179, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1293] == mem[_1293]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1317] == mem[_1317]
                    require mem[_1317 + 32] == mem[_1317 + 32]
                    require mem[_1317 + 64] == mem[_1317 + 92 len 4]
                    require mem[_1317 + 96] == mem[_1317 + 124 len 4]
                    if mem[_1317] < _1227:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[_1317] - _1227
    return memory
      from mem[64]
       len 32
}



}
