contract main {




// =====================  Runtime code  =====================


#
#  - sub_9b7bd2f4(?)
#
address owner;
array of address stor1;
array of address stor2;
array of address stor3;

function owner() payable {
    return owner
}

function master() payable {
    return stor1.length
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

function sub_247b69c5(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_a2e3cd84(?) payable {
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

function getAmountOutMin(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_7e92803c(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    mem[100] = address(arg2)
    mem[132] = arg1
    require ext_code.size(stor2.length)
    call stor2.length.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor2.length
    mem[ceil32(return_data.size) + 160] = address(arg3)
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    require return_data.size >= mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32
}

function sub_d02efb1e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 6
    if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[sha3(sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32]))][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) = 0
            idx = 0
            while (uint255(uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32]))].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor[sha3(sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32]))][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) = 0
            idx = 0
            while stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3(sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32]))].field_0) = 0
                idx = idx + 1
                continue 
    stor1[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = address(arg1)
    stor2[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor3[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = ext_call.return_data[12 len 20]
}

function sub_d1f4d266(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
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
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32
}

function sub_1d4804a3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
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
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
}

function sub_068e7ca1(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _36 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223 < return_data.size + 192
    _37 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require return_data.size >= _36 + (32 * _37) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _37] = mem[_36 + 224 len 32 * _37]
    if 1 >= _37:
        revert with 0, 50
    _63 = mem[ceil32(return_data.size) + 256]
    _64 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_64]:
        revert with 0, 50
    mem[_64 + 32] = address(arg4)
    if 1 >= mem[_64]:
        revert with 0, 50
    mem[_64 + 64] = address(arg3)
    mem[_64 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_64 + 100] = _63
    mem[_64 + 132] = 64
    mem[_64 + 164] = mem[_64]
    idx = 0
    s = _64 + 32
    t = _64 + 196
    while idx < mem[_64]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _64 + (32 * mem[_64]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _84 = mem[_83]
    require mem[_83] <= test266151307()
    require _83 + mem[_83] + 31 < _83 + return_data.size
    _85 = mem[_83 + mem[_83]]
    if mem[_83 + mem[_83]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_83 + mem[_83]]) + 1 < 0 or _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1
    mem[_83 + ceil32(return_data.size)] = _85
    require return_data.size >= _84 + (32 * _85) + 32
    mem[_83 + ceil32(return_data.size) + 32 len 32 * _85] = mem[_83 + _84 + 32 len 32 * _85]
    if mem[_64] < 1:
        revert with 0, 17
    if mem[_64] - 1 >= _85:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * mem[_64] - 1) + _83 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_26a215ec(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg5)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg7
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg7, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _51 = mem[192 len 4], Mask(224, 32, arg7) >> 32
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223 < return_data.size + 192
    _52 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require return_data.size >= _51 + (32 * _52) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _52] = mem[_51 + 224 len 32 * _52]
    if 1 >= _52:
        revert with 0, 50
    _93 = mem[ceil32(return_data.size) + 256]
    _94 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_94]:
        revert with 0, 50
    mem[_94 + 32] = address(arg5)
    if 1 >= mem[_94]:
        revert with 0, 50
    mem[_94 + 64] = address(arg6)
    mem[_94 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_94 + 100] = _93
    mem[_94 + 132] = 64
    mem[_94 + 164] = mem[_94]
    idx = 0
    s = _94 + 32
    t = _94 + 196
    while idx < mem[_94]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _94 + (32 * mem[_94]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] <= test266151307()
    require _128 + mem[_128] + 31 < _128 + return_data.size
    _130 = mem[_128 + mem[_128]]
    if mem[_128 + mem[_128]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_128 + mem[_128]]) + 1 < 0 or _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1
    mem[_128 + ceil32(return_data.size)] = _130
    require return_data.size >= _129 + (32 * _130) + 32
    mem[_128 + ceil32(return_data.size) + 32 len 32 * _130] = mem[_128 + _129 + 32 len 32 * _130]
    if mem[_94] < 1:
        revert with 0, 17
    if mem[_94] - 1 >= _130:
        revert with 0, 50
    _156 = mem[(32 * mem[_94] - 1) + _128 + ceil32(return_data.size) + 32]
    _157 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_157]:
        revert with 0, 50
    mem[_157 + 32] = address(arg6)
    if 1 >= mem[_157]:
        revert with 0, 50
    mem[_157 + 64] = address(arg4)
    mem[_157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_157 + 100] = _156
    mem[_157 + 132] = 64
    mem[_157 + 164] = mem[_157]
    idx = 0
    s = _157 + 32
    t = _157 + 196
    while idx < mem[_157]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _157 + (32 * mem[_157]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _177 = mem[_176]
    require mem[_176] <= test266151307()
    require _176 + mem[_176] + 31 < _176 + return_data.size
    _178 = mem[_176 + mem[_176]]
    if mem[_176 + mem[_176]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_176 + mem[_176]]) + 1 < 0 or _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1
    mem[_176 + ceil32(return_data.size)] = _178
    require return_data.size >= _177 + (32 * _178) + 32
    mem[_176 + ceil32(return_data.size) + 32 len 32 * _178] = mem[_176 + _177 + 32 len 32 * _178]
    if mem[_157] < 1:
        revert with 0, 17
    if mem[_157] - 1 >= _178:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * mem[_157] - 1) + _176 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_13d3fdc5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2.length)
    call stor2.length.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = stor2.length
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _56 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _57 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _56 + (32 * _57) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _57] = mem[(4 * ceil32(return_data.size)) + _56 + 224 len 32 * _57]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    if mem[_89] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _90 - ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _90 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_93] == bool(mem[_93])
    _95 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 32] = address(arg3)
    if 1 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 64] = stor2.length
    mem[_95 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_95 + 100] = _90 - ext_call.return_data[0]
    mem[_95 + 132] = 0
    mem[_95 + 164] = 160
    mem[_95 + 260] = mem[_95]
    idx = 0
    s = _95 + 32
    t = _95 + 292
    while idx < mem[_95]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + 196] = this.address
    mem[_95 + 228] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _95 + (32 * mem[_95]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] <= test266151307()
    require _115 + mem[_115] + 31 < _115 + return_data.size
    _117 = mem[_115 + mem[_115]]
    if mem[_115 + mem[_115]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_115 + mem[_115]]) + 1 < 0 or _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1
    mem[_115 + ceil32(return_data.size)] = _117
    require return_data.size >= _116 + (32 * _117) + 32
    mem[_115 + ceil32(return_data.size) + 32 len 32 * _117] = mem[_115 + _116 + 32 len 32 * _117]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_129] < ext_call.return_data[0]:
        revert with 0, 'Done messed up AyAyron'
}

function sub_924330a7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2.length)
    call stor2.length.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    mem[(7 * ceil32(return_data.size)) + 128] = stor2.length
    mem[(7 * ceil32(return_data.size)) + 160] = address(arg4)
    mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
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
    mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _84 = mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _85 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _84 + (32 * _85) + 32
    mem[(8 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[(7 * ceil32(return_data.size)) + _84 + 224 len 32 * _85]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _138 = mem[_137]
    if mem[_137] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _138 - ext_call.return_data[0]
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _138 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_141] == bool(mem[_141])
    _143 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_143]:
        revert with 0, 50
    mem[_143 + 32] = address(arg4)
    if 1 >= mem[_143]:
        revert with 0, 50
    mem[_143 + 64] = address(arg5)
    mem[_143 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_143 + 100] = _138 - ext_call.return_data[0]
    mem[_143 + 132] = 0
    mem[_143 + 164] = 160
    mem[_143 + 260] = mem[_143]
    idx = 0
    s = _143 + 32
    t = _143 + 292
    while idx < mem[_143]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_143 + 196] = this.address
    mem[_143 + 228] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _143 + (32 * mem[_143]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_183]
    require mem[_183] <= test266151307()
    require _183 + mem[_183] + 31 < _183 + return_data.size
    _185 = mem[_183 + mem[_183]]
    if mem[_183 + mem[_183]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_183 + mem[_183]]) + 1 < 0 or _183 + ceil32(return_data.size) + ceil32(32 * mem[_183 + mem[_183]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _183 + ceil32(return_data.size) + ceil32(32 * mem[_183 + mem[_183]]) + 1
    mem[_183 + ceil32(return_data.size)] = _185
    require return_data.size >= _184 + (32 * _185) + 32
    mem[_183 + ceil32(return_data.size) + 32 len 32 * _185] = mem[_183 + _184 + 32 len 32 * _185]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _218 = mem[_217]
    if mem[_217] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg3)
    mem[mem[64] + 36] = _218 - ext_call.return_data[0]
    require ext_code.size(address(arg5))
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), _218 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _221 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_221] == bool(mem[_221])
    _223 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_223]:
        revert with 0, 50
    mem[_223 + 32] = address(arg5)
    if 1 >= mem[_223]:
        revert with 0, 50
    mem[_223 + 64] = stor2.length
    mem[_223 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_223 + 100] = _218 - ext_call.return_data[0]
    mem[_223 + 132] = 0
    mem[_223 + 164] = 160
    mem[_223 + 260] = mem[_223]
    idx = 0
    s = _223 + 32
    t = _223 + 292
    while idx < mem[_223]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_223 + 196] = this.address
    mem[_223 + 228] = block.timestamp
    require ext_code.size(address(arg3))
    call address(arg3).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _223 + (32 * mem[_223]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _243 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _244 = mem[_243]
    require mem[_243] <= test266151307()
    require _243 + mem[_243] + 31 < _243 + return_data.size
    _245 = mem[_243 + mem[_243]]
    if mem[_243 + mem[_243]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_243 + mem[_243]]) + 1 < 0 or _243 + ceil32(return_data.size) + ceil32(32 * mem[_243 + mem[_243]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _243 + ceil32(return_data.size) + ceil32(32 * mem[_243 + mem[_243]]) + 1
    mem[_243 + ceil32(return_data.size)] = _245
    require return_data.size >= _244 + (32 * _245) + 32
    mem[_243 + ceil32(return_data.size) + 32 len 32 * _245] = mem[_243 + _244 + 32 len 32 * _245]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _257 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_257] <= ext_call.return_data[0]:
        revert with 0, 'Trade Reverted, No Profit Made'
}

function sub_56e4f8d0(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == bool(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg6:
        if arg5 and 1 > -1 / arg5:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 132] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg5
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg5
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _156 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _158 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require return_data.size >= _156 + (32 * _158) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _158] = mem[(4 * ceil32(return_data.size)) + _156 + 224 len 32 * _158]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _282 = mem[_279]
        if mem[_279] < ext_call.return_data[0]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _282 - ext_call.return_data[0]
        require ext_code.size(address(arg4))
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _282 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_290] == bool(mem[_290])
        _299 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_299]:
            revert with 0, 50
        mem[_299 + 32] = address(arg4)
        if 1 >= mem[_299]:
            revert with 0, 50
        mem[_299 + 64] = address(arg3)
        mem[_299 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_299 + 100] = _282 - ext_call.return_data[0]
        mem[_299 + 132] = 0
        mem[_299 + 164] = 160
        mem[_299 + 260] = mem[_299]
        idx = 0
        s = _299 + 32
        t = _299 + 292
        while idx < mem[_299]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_299 + 196] = this.address
        mem[_299 + 228] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _299 + (32 * mem[_299]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _377 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _380 = mem[_377]
        require mem[_377] <= test266151307()
        require _377 + mem[_377] + 31 < _377 + return_data.size
        _382 = mem[_377 + mem[_377]]
        if mem[_377 + mem[_377]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_377 + mem[_377]]) + 1 < 0 or _377 + ceil32(return_data.size) + ceil32(32 * mem[_377 + mem[_377]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _377 + ceil32(return_data.size) + ceil32(32 * mem[_377 + mem[_377]]) + 1
        mem[_377 + ceil32(return_data.size)] = _382
        require return_data.size >= _380 + (32 * _382) + 32
        mem[_377 + ceil32(return_data.size) + 32 len 32 * _382] = mem[_377 + _380 + 32 len 32 * _382]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _443 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _446 = mem[_443]
        if mem[_443] < ext_call.return_data[0]:
            revert with 0, 'Done messed up AyAyron'
        if bool(arg7) == 1:
            if mem[_443] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = stor1.length
            mem[mem[64] + 36] = _446 - ext_call.return_data[0]
            require ext_code.size(address(arg3))
            call address(arg3).0xa9059cbb with:
                 gas gas_remaining wei
                args stor1.length, _446 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_461] == bool(mem[_461])
    else:
        if bool(bool(arg6 < 78)) or bool(bool(arg6 < 32)):
            if arg5 and 10^arg6 > -1 / arg5:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = arg5 * 10^arg6
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg5 * 10^arg6
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg3)
            mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg5 * 10^arg6
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg5 * 10^arg6, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _155 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _157 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * 10^arg6) >> 32 + 192]
            require return_data.size >= _155 + (32 * _157) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _157] = mem[(4 * ceil32(return_data.size)) + _155 + 224 len 32 * _157]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _281 = mem[_278]
            if mem[_278] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _281 - ext_call.return_data[0]
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _281 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_289] == bool(mem[_289])
            _297 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_297]:
                revert with 0, 50
            mem[_297 + 32] = address(arg4)
            if 1 >= mem[_297]:
                revert with 0, 50
            mem[_297 + 64] = address(arg3)
            mem[_297 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_297 + 100] = _281 - ext_call.return_data[0]
            mem[_297 + 132] = 0
            mem[_297 + 164] = 160
            mem[_297 + 260] = mem[_297]
            idx = 0
            s = _297 + 32
            t = _297 + 292
            while idx < mem[_297]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_297 + 196] = this.address
            mem[_297 + 228] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _297 + (32 * mem[_297]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _376 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _379 = mem[_376]
            require mem[_376] <= test266151307()
            require _376 + mem[_376] + 31 < _376 + return_data.size
            _381 = mem[_376 + mem[_376]]
            if mem[_376 + mem[_376]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_376 + mem[_376]]) + 1 < 0 or _376 + ceil32(return_data.size) + ceil32(32 * mem[_376 + mem[_376]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _376 + ceil32(return_data.size) + ceil32(32 * mem[_376 + mem[_376]]) + 1
            mem[_376 + ceil32(return_data.size)] = _381
            require return_data.size >= _379 + (32 * _381) + 32
            mem[_376 + ceil32(return_data.size) + 32 len 32 * _381] = mem[_376 + _379 + 32 len 32 * _381]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _445 = mem[_442]
            if mem[_442] < ext_call.return_data[0]:
                revert with 0, 'Done messed up AyAyron'
            if bool(arg7) == 1:
                if mem[_442] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64] + 4] = stor1.length
                mem[mem[64] + 36] = _445 - ext_call.return_data[0]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1.length, _445 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_460] == bool(mem[_460])
        else:
            s = 10
            t = 1
            idx = arg6
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg5 and s * t > -1 / arg5:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 132] = arg5 * s * t
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg5 * s * t
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg3)
            mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg5 * s * t
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            u = (4 * ceil32(return_data.size)) + 128
            v = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg5 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _280 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _283 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5 * s * t) >> 32 + 192]
            require return_data.size >= _280 + (32 * _283) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _283] = mem[(4 * ceil32(return_data.size)) + _280 + 224 len 32 * _283]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_375]
            if mem[_375] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _378 - ext_call.return_data[0]
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _378 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == bool(mem[_387])
            _395 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_395]:
                revert with 0, 50
            mem[_395 + 32] = address(arg4)
            if 1 >= mem[_395]:
                revert with 0, 50
            mem[_395 + 64] = address(arg3)
            mem[_395 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_395 + 100] = _378 - ext_call.return_data[0]
            mem[_395 + 132] = 0
            mem[_395 + 164] = 160
            mem[_395 + 260] = mem[_395]
            idx = 0
            s = _395 + 32
            t = _395 + 292
            while idx < mem[_395]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_395 + 196] = this.address
            mem[_395 + 228] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _395 + (32 * mem[_395]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _444 = mem[_441]
            require mem[_441] <= test266151307()
            require _441 + mem[_441] + 31 < _441 + return_data.size
            _447 = mem[_441 + mem[_441]]
            if mem[_441 + mem[_441]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_441 + mem[_441]]) + 1 < 0 or _441 + ceil32(return_data.size) + ceil32(32 * mem[_441 + mem[_441]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _441 + ceil32(return_data.size) + ceil32(32 * mem[_441 + mem[_441]]) + 1
            mem[_441 + ceil32(return_data.size)] = _447
            require return_data.size >= _444 + (32 * _447) + 32
            mem[_441 + ceil32(return_data.size) + 32 len 32 * _447] = mem[_441 + _444 + 32 len 32 * _447]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _476 = mem[_475]
            if mem[_475] < ext_call.return_data[0]:
                revert with 0, 'Done messed up AyAyron'
            if bool(arg7) == 1:
                if mem[_475] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[mem[64] + 4] = stor1.length
                mem[mem[64] + 36] = _476 - ext_call.return_data[0]
                require ext_code.size(address(arg3))
                call address(arg3).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1.length, _476 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_481] == bool(mem[_481])
}

function sub_334d6d72(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg8:
        if arg7 and 1 > -1 / arg7:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 132] = arg7
        require ext_code.size(address(arg4))
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg7
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
        mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = arg7
        mem[(6 * ceil32(return_data.size)) + 228] = 0
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _208 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        _210 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
        mem[(7 * ceil32(return_data.size)) + 192] = _210
        require return_data.size >= _208 + (32 * _210) + 32
        mem[(7 * ceil32(return_data.size)) + 224 len 32 * _210] = mem[(6 * ceil32(return_data.size)) + _208 + 224 len 32 * _210]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _379 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _382 = mem[_379]
        if mem[_379] < ext_call.return_data[0]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _382 - ext_call.return_data[0]
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _382 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_391] == bool(mem[_391])
        _400 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_400]:
            revert with 0, 50
        mem[_400 + 32] = address(arg5)
        if 1 >= mem[_400]:
            revert with 0, 50
        mem[_400 + 64] = address(arg6)
        mem[_400 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_400 + 100] = _382 - ext_call.return_data[0]
        mem[_400 + 132] = 0
        mem[_400 + 164] = 160
        mem[_400 + 260] = mem[_400]
        idx = 0
        s = _400 + 32
        t = _400 + 292
        while idx < mem[_400]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_400 + 196] = this.address
        mem[_400 + 228] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _400 + (32 * mem[_400]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _528 = mem[_525]
        require mem[_525] <= test266151307()
        require _525 + mem[_525] + 31 < _525 + return_data.size
        _530 = mem[_525 + mem[_525]]
        if mem[_525 + mem[_525]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_525 + mem[_525]]) + 1 < 0 or _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _525 + ceil32(return_data.size) + ceil32(32 * mem[_525 + mem[_525]]) + 1
        mem[_525 + ceil32(return_data.size)] = _530
        require return_data.size >= _528 + (32 * _530) + 32
        mem[_525 + ceil32(return_data.size) + 32 len 32 * _530] = mem[_525 + _528 + 32 len 32 * _530]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg6))
        staticcall address(arg6).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _642 = mem[_639]
        if mem[_639] < ext_call.return_data[0]:
            revert with 0, 17
        mem[mem[64] + 4] = address(arg3)
        mem[mem[64] + 36] = _642 - ext_call.return_data[0]
        require ext_code.size(address(arg6))
        call address(arg6).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), _642 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _651 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_651] == bool(mem[_651])
        _660 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_660]:
            revert with 0, 50
        mem[_660 + 32] = address(arg6)
        if 1 >= mem[_660]:
            revert with 0, 50
        mem[_660 + 64] = address(arg4)
        mem[_660 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_660 + 100] = _642 - ext_call.return_data[0]
        mem[_660 + 132] = 0
        mem[_660 + 164] = 160
        mem[_660 + 260] = mem[_660]
        idx = 0
        s = _660 + 32
        t = _660 + 292
        while idx < mem[_660]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_660 + 196] = this.address
        mem[_660 + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _660 + (32 * mem[_660]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _725 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _728 = mem[_725]
        require mem[_725] <= test266151307()
        require _725 + mem[_725] + 31 < _725 + return_data.size
        _730 = mem[_725 + mem[_725]]
        if mem[_725 + mem[_725]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_725 + mem[_725]]) + 1 < 0 or _725 + ceil32(return_data.size) + ceil32(32 * mem[_725 + mem[_725]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _725 + ceil32(return_data.size) + ceil32(32 * mem[_725 + mem[_725]]) + 1
        mem[_725 + ceil32(return_data.size)] = _730
        require return_data.size >= _728 + (32 * _730) + 32
        mem[_725 + ceil32(return_data.size) + 32 len 32 * _730] = mem[_725 + _728 + 32 len 32 * _730]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _779 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_779] <= ext_call.return_data[0]:
            revert with 0, 'Trade Reverted, No Profit Made'
    else:
        if bool(bool(arg8 < 78)) or bool(bool(arg8 < 32)):
            if arg7 and 10^arg8 > -1 / arg7:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 132] = arg7 * 10^arg8
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg7 * 10^arg8
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg7 * 10^arg8
            mem[(6 * ceil32(return_data.size)) + 228] = 0
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg7 * 10^arg8, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _207 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _209 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * 10^arg8) >> 32 + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = _209
            require return_data.size >= _207 + (32 * _209) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _209] = mem[(6 * ceil32(return_data.size)) + _207 + 224 len 32 * _209]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _381 = mem[_378]
            if mem[_378] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _381 - ext_call.return_data[0]
            require ext_code.size(address(arg5))
            call address(arg5).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _381 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_390] == bool(mem[_390])
            _398 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_398]:
                revert with 0, 50
            mem[_398 + 32] = address(arg5)
            if 1 >= mem[_398]:
                revert with 0, 50
            mem[_398 + 64] = address(arg6)
            mem[_398 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_398 + 100] = _381 - ext_call.return_data[0]
            mem[_398 + 132] = 0
            mem[_398 + 164] = 160
            mem[_398 + 260] = mem[_398]
            idx = 0
            s = _398 + 32
            t = _398 + 292
            while idx < mem[_398]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_398 + 196] = this.address
            mem[_398 + 228] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _398 + (32 * mem[_398]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _524 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _527 = mem[_524]
            require mem[_524] <= test266151307()
            require _524 + mem[_524] + 31 < _524 + return_data.size
            _529 = mem[_524 + mem[_524]]
            if mem[_524 + mem[_524]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_524 + mem[_524]]) + 1 < 0 or _524 + ceil32(return_data.size) + ceil32(32 * mem[_524 + mem[_524]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _524 + ceil32(return_data.size) + ceil32(32 * mem[_524 + mem[_524]]) + 1
            mem[_524 + ceil32(return_data.size)] = _529
            require return_data.size >= _527 + (32 * _529) + 32
            mem[_524 + ceil32(return_data.size) + 32 len 32 * _529] = mem[_524 + _527 + 32 len 32 * _529]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_638]
            if mem[_638] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _641 - ext_call.return_data[0]
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _641 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_650] == bool(mem[_650])
            _658 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_658]:
                revert with 0, 50
            mem[_658 + 32] = address(arg6)
            if 1 >= mem[_658]:
                revert with 0, 50
            mem[_658 + 64] = address(arg4)
            mem[_658 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_658 + 100] = _641 - ext_call.return_data[0]
            mem[_658 + 132] = 0
            mem[_658 + 164] = 160
            mem[_658 + 260] = mem[_658]
            idx = 0
            s = _658 + 32
            t = _658 + 292
            while idx < mem[_658]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_658 + 196] = this.address
            mem[_658 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _658 + (32 * mem[_658]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _724 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _727 = mem[_724]
            require mem[_724] <= test266151307()
            require _724 + mem[_724] + 31 < _724 + return_data.size
            _729 = mem[_724 + mem[_724]]
            if mem[_724 + mem[_724]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_724 + mem[_724]]) + 1 < 0 or _724 + ceil32(return_data.size) + ceil32(32 * mem[_724 + mem[_724]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _724 + ceil32(return_data.size) + ceil32(32 * mem[_724 + mem[_724]]) + 1
            mem[_724 + ceil32(return_data.size)] = _729
            require return_data.size >= _727 + (32 * _729) + 32
            mem[_724 + ceil32(return_data.size) + 32 len 32 * _729] = mem[_724 + _727 + 32 len 32 * _729]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_778] <= ext_call.return_data[0]:
                revert with 0, 'Trade Reverted, No Profit Made'
        else:
            s = 10
            t = 1
            idx = arg8
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg7 and s * t > -1 / arg7:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 132] = arg7 * s * t
            require ext_code.size(address(arg4))
            call address(arg4).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg7 * s * t
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = arg7 * s * t
            mem[(6 * ceil32(return_data.size)) + 228] = 0
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            u = (6 * ceil32(return_data.size)) + 128
            v = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg7 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _380 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _383 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7 * s * t) >> 32 + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = _383
            require return_data.size >= _380 + (32 * _383) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _383] = mem[(6 * ceil32(return_data.size)) + _380 + 224 len 32 * _383]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg5))
            staticcall address(arg5).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _523 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _526 = mem[_523]
            if mem[_523] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = _526 - ext_call.return_data[0]
            require ext_code.size(address(arg5))
            call address(arg5).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), _526 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_537] == bool(mem[_537])
            _547 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_547]:
                revert with 0, 50
            mem[_547 + 32] = address(arg5)
            if 1 >= mem[_547]:
                revert with 0, 50
            mem[_547 + 64] = address(arg6)
            mem[_547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_547 + 100] = _526 - ext_call.return_data[0]
            mem[_547 + 132] = 0
            mem[_547 + 164] = 160
            mem[_547 + 260] = mem[_547]
            idx = 0
            s = _547 + 32
            t = _547 + 292
            while idx < mem[_547]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_547 + 196] = this.address
            mem[_547 + 228] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _547 + (32 * mem[_547]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _637 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_637]
            require mem[_637] <= test266151307()
            require _637 + mem[_637] + 31 < _637 + return_data.size
            _643 = mem[_637 + mem[_637]]
            if mem[_637 + mem[_637]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_637 + mem[_637]]) + 1 < 0 or _637 + ceil32(return_data.size) + ceil32(32 * mem[_637 + mem[_637]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _637 + ceil32(return_data.size) + ceil32(32 * mem[_637 + mem[_637]]) + 1
            mem[_637 + ceil32(return_data.size)] = _643
            require return_data.size >= _640 + (32 * _643) + 32
            mem[_637 + ceil32(return_data.size) + 32 len 32 * _643] = mem[_637 + _640 + 32 len 32 * _643]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _723 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _726 = mem[_723]
            if mem[_723] < ext_call.return_data[0]:
                revert with 0, 17
            mem[mem[64] + 4] = address(arg3)
            mem[mem[64] + 36] = _726 - ext_call.return_data[0]
            require ext_code.size(address(arg6))
            call address(arg6).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _726 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_737] == bool(mem[_737])
            _747 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_747]:
                revert with 0, 50
            mem[_747 + 32] = address(arg6)
            if 1 >= mem[_747]:
                revert with 0, 50
            mem[_747 + 64] = address(arg4)
            mem[_747 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_747 + 100] = _726 - ext_call.return_data[0]
            mem[_747 + 132] = 0
            mem[_747 + 164] = 160
            mem[_747 + 260] = mem[_747]
            idx = 0
            s = _747 + 32
            t = _747 + 292
            while idx < mem[_747]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_747 + 196] = this.address
            mem[_747 + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _747 + (32 * mem[_747]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _780 = mem[_777]
            require mem[_777] <= test266151307()
            require _777 + mem[_777] + 31 < _777 + return_data.size
            _783 = mem[_777 + mem[_777]]
            if mem[_777 + mem[_777]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_777 + mem[_777]]) + 1 < 0 or _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _777 + ceil32(return_data.size) + ceil32(32 * mem[_777 + mem[_777]]) + 1
            mem[_777 + ceil32(return_data.size)] = _783
            require return_data.size >= _780 + (32 * _783) + 32
            mem[_777 + ceil32(return_data.size) + 32 len 32 * _783] = mem[_777 + _780 + 32 len 32 * _783]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _799 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_799] <= ext_call.return_data[0]:
                revert with 0, 'Trade Reverted, No Profit Made'
}



}
