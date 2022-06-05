contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address pairAddress;
address sub_c37ad011Address;
address sub_9157772aAddress;
address wavaxAddress;
address mimAddress;
address sub_398345f0Address;

function wavax() payable {
    return wavaxAddress
}

function Pair() payable {
    return pairAddress
}

function sub_398345f0(?) payable {
    return sub_398345f0Address
}

function owner() payable {
    return owner
}

function sub_9157772a(?) payable {
    return sub_9157772aAddress
}

function mim() payable {
    return mimAddress
}

function sub_c37ad011(?) payable {
    return sub_c37ad011Address
}

function Router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function sub_60b6571c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c37ad011Address = address(arg1)
}

function sub_81a4863a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_398345f0Address = address(arg1)
}

function sub_dba71376(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9157772aAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8981876b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2dee2327(?) payable {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'Verify Volt Input Amount'
    if not sub_398345f0Address:
        revert with 0, 'Stable Bond not set'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(sub_c37ad011Address)
    call sub_c37ad011Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224 len 64] = call.data[calldata.size len 64]
    mem[ceil32(return_data.size) + 128] = sub_c37ad011Address
    mem[ceil32(return_data.size) + 160] = mimAddress
    mem[ceil32(return_data.size) + 292] = routerAddress
    mem[ceil32(return_data.size) + 324] = arg1
    require ext_code.size(sub_c37ad011Address)
    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = arg1
    mem[(2 * ceil32(return_data.size)) + 324] = 1
    mem[(2 * ceil32(return_data.size)) + 356] = 160
    mem[(2 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 484
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    mem[(2 * ceil32(return_data.size)) + 420] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _79 = mem[_78]
    require mem[_78] <= test266151307()
    require _78 + mem[_78] + 31 < _78 + return_data.size
    _80 = mem[_78 + mem[_78]]
    if mem[_78 + mem[_78]] > test266151307():
        revert with 0, 65
    if _78 + ceil32(return_data.size) + ceil32(32 * mem[_78 + mem[_78]]) + 1 > test266151307() or ceil32(32 * mem[_78 + mem[_78]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _78 + ceil32(return_data.size) + ceil32(32 * mem[_78 + mem[_78]]) + 1
    mem[_78 + ceil32(return_data.size)] = _80
    require return_data.size >= _79 + (32 * _80) + 32
    mem[_78 + ceil32(return_data.size) + 32 len 32 * _80] = mem[_78 + _79 + 32 len 32 * _80]
    if not mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = mimAddress
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = wavaxAddress
    if 1 >= _80:
        revert with 0, 50
    _137 = mem[_78 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = _137
    require ext_code.size(mimAddress)
    call mimAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, _137
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_140] == bool(mem[_140])
    if 1 >= _80:
        revert with 0, 50
    _143 = mem[_78 + ceil32(return_data.size) + 64]
    _144 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _143
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _145 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 196
    t = ceil32(return_data.size) + 128
    while idx < _145:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_144 + 100] = this.address
    mem[_144 + 132] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _144 + (32 * _145) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _186 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _187 = mem[_186]
    require mem[_186] <= test266151307()
    require _186 + mem[_186] + 31 < _186 + return_data.size
    _188 = mem[_186 + mem[_186]]
    if mem[_186 + mem[_186]] > test266151307():
        revert with 0, 65
    if _186 + ceil32(return_data.size) + ceil32(32 * mem[_186 + mem[_186]]) + 1 > test266151307() or ceil32(32 * mem[_186 + mem[_186]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _186 + ceil32(return_data.size) + ceil32(32 * mem[_186 + mem[_186]]) + 1
    mem[_186 + ceil32(return_data.size)] = _188
    require return_data.size >= _187 + (32 * _188) + 32
    mem[_186 + ceil32(return_data.size) + 32 len 32 * _188] = mem[_186 + _187 + 32 len 32 * _188]
    if not mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = wavaxAddress
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = sub_9157772aAddress
    if 1 >= _188:
        revert with 0, 50
    _226 = mem[_186 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = _226
    require ext_code.size(wavaxAddress)
    call wavaxAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, _226
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_229] == bool(mem[_229])
    if 1 >= _188:
        revert with 0, 50
    _232 = mem[_186 + ceil32(return_data.size) + 64]
    _233 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _232
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    _234 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 196
    t = ceil32(return_data.size) + 128
    while idx < _234:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_233 + 100] = this.address
    mem[_233 + 132] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _233 + (32 * _234) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _257 = mem[_256]
    require mem[_256] <= test266151307()
    require _256 + mem[_256] + 31 < _256 + return_data.size
    _258 = mem[_256 + mem[_256]]
    if mem[_256 + mem[_256]] > test266151307():
        revert with 0, 65
    if _256 + ceil32(return_data.size) + ceil32(32 * mem[_256 + mem[_256]]) + 1 > test266151307() or ceil32(32 * mem[_256 + mem[_256]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _256 + ceil32(return_data.size) + ceil32(32 * mem[_256 + mem[_256]]) + 1
    mem[_256 + ceil32(return_data.size)] = _258
    require return_data.size >= _257 + (32 * _258) + 32
    mem[_256 + ceil32(return_data.size) + 32 len 32 * _258] = mem[_256 + _257 + 32 len 32 * _258]
    if 1 >= _258:
        revert with 0, 50
    _275 = mem[_256 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = sub_398345f0Address
    mem[mem[64] + 36] = _275
    require ext_code.size(sub_9157772aAddress)
    call sub_9157772aAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_398345f0Address, _275
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _278 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_278] == bool(mem[_278])
    if 1 >= _258:
        revert with 0, 50
    mem[mem[64] + 4] = mem[_256 + ceil32(return_data.size) + 64]
    require ext_code.size(sub_398345f0Address)
    call sub_398345f0Address.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
