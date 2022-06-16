contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_f70001b6(?)
#
address owner;
array of address tokens;
address stor2;
array of address factories;
array of address routers;
array of address sub_12bbd77d;

function sub_12bbd77d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_12bbd77d[arg1]
}

function routers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return routers[arg1]
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return tokens[arg1]
}

function factories(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return factories[arg1]
}

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

function sub_fb6ca1e2(?) payable {
    require calldata.size - 4 >= 32
    staticcall tokens.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        revert with 0, 'Not enough token0s to return'
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

function sub_5ac8ced8(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall tokens.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call tokens.length.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d09da489(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 256
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353 < 352 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(cd[36] + ('cd', 36).length + 4)]
    require cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36).length + 36
    s = 384
    while idx < cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354 < 353 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353] = cd[(cd[36] + ('cd', 36)[0] + 4)]
    require cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[0] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 385
    while idx < cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355 < 354 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[1] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 386
    while idx < cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require ('cd', 36)[3] == uint8(('cd', 36)[3])
    require ('cd', 36)[4] == uint8(('cd', 36)[4])
    require ('cd', 36)[5] <= test266151307()
    require cd[36] + ('cd', 36)[5] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[5] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 356 < 355 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 356 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355] = cd[(cd[36] + ('cd', 36)[5] + 4)]
    require cd[36] + ('cd', 36)[5] + (32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[5] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 387
    while idx < cd[36] + ('cd', 36)[5] + (32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if address(cd[4]) != this.address:
        revert with 0, 'Not from this contract'
    if uint8(('cd', 36)[3]) >= 2:
        revert with 0, 50
    if not cd[(cd[36] + ('cd', 36).length + 4)]:
        revert with 0, 50
    if 1 >= cd[(cd[36] + ('cd', 36).length + 4)]:
        revert with 0, 50
    _124 = mem[416]
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 360] = mem[396 len 20]
    staticcall factories[uint8(('cd', 36)[3])].getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 360], address(_124)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    staticcall tokens.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'The token0 balance should be 0 here'
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 36)[2] != ext_call.return_data[0]:
        revert with 0, 'Not enough token1 received'
}

function sub_40ea4365(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 256
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353 < 352 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(cd[36] + ('cd', 36).length + 4)]
    require cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36).length + 36
    s = 384
    while idx < cd[36] + ('cd', 36).length + (32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[96] = 352
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354 < 353 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353] = cd[(cd[36] + ('cd', 36)[0] + 4)]
    require cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[0] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 385
    while idx < cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[128] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + 353
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355 < 354 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[1] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 386
    while idx < cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[160] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 354
    mem[192] = ('cd', 36)[2]
    require ('cd', 36)[3] == uint8(('cd', 36)[3])
    mem[224] = ('cd', 36)[3]
    require ('cd', 36)[4] == uint8(('cd', 36)[4])
    mem[256] = ('cd', 36)[4]
    require ('cd', 36)[5] <= test266151307()
    require cd[36] + ('cd', 36)[5] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[5] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 356 < 355 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 356 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355] = cd[(cd[36] + ('cd', 36)[5] + 4)]
    require cd[36] + ('cd', 36)[5] + (32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 36 <= calldata.size
    idx = cd[36] + ('cd', 36)[5] + 36
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 387
    while idx < cd[36] + ('cd', 36)[5] + (32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[288] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 355
    mem[320] = ('cd', 36)[6]
    if uint8(('cd', 36)[4]) >= 2:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 360] = routers[uint8(('cd', 36)[4])]
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 392] = cd[4]
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routers[uint8(('cd', 36)[4])], cd[4]
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + 356] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 356] = 2
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 388 len 64] = call.data[calldata.size len 64]
    if 1 >= cd[(cd[36] + ('cd', 36).length + 4)]:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 388] = mem[428 len 20]
    if not cd[(cd[36] + ('cd', 36).length + 4)]:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 420] = mem[396 len 20]
    if uint8(('cd', 36)[4]) >= 2:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 456] = cd[4]
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 488] = 0
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 520] = 160
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 616] = 2
    idx = 0
    s = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 648
    t = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 388
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 552] = this.address
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 584] = block.timestamp
    call routers[uint8(('cd', 36)[4])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 648 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + (2 * ceil32(return_data.size)) + 452
    require return_data.size >= 32
    require mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + return_data.size + 452 > ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + 483
    if mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + 452] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + 452]) + 1 < 0 or ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + 452]) + 453 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(cd[36] + ('cd', 36).length + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[5] + 4)]) + ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[4]) >> 32 + 452]) + 32 <= return_data.size
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 256
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 353 < 352 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]
    require cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 68
    s = 384
    while idx < arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[96] = 352
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 354 < 353 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 354 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 353] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]
    require cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 68
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 385
    while idx < arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[128] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + 353
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 355 < 354 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 355 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 354] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]
    require cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 68
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 386
    while idx < arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[160] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 354
    mem[192] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[224] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    require cd[(arg4 + cd[(arg4 + 36)] + 196)] == uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])
    mem[256] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    require cd[(arg4 + cd[(arg4 + 36)] + 228)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 356 < 355 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 356 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 355] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]
    require cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 68
    s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 387
    while idx < arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 68:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[288] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 355
    mem[320] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]:
        revert with 0, 50
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
        revert with 0, 50
    if not cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
        revert with 0, 50
    if 1 >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
        revert with 0, 50
    if mem[(32 * uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 387]:
        _896 = mem[416]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 360] = mem[396 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 392] = address(_896)
        staticcall factories[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 360], address(_896)
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + ceil32(return_data.size) + 360] = this.address
        staticcall tokens.length.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + ceil32(return_data.size) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'The token0 balance should be 0 here'
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 360] = this.address
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg4 + cd[(arg4 + 36)] + 132)] != ext_call.return_data[0]:
            revert with 0, 'Not enough token1 received'
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)]) >= 2:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 360] = routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 392] = arg2
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])], arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = 2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388 len 64] = call.data[calldata.size len 64]
        if 1 >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = mem[428 len 20]
        if not cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = mem[396 len 20]
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)]) >= 2:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 456] = arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 488] = 0
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 520] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 616] = 2
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 648
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 552] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 584] = block.timestamp
        call routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 648 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 452
        require return_data.size >= 32
        _1102 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + return_data.size + 452 > ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 483
        _1104 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 453 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]) + 453
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg2) >> 32 + 452]
        require _1102 + (32 * _1104) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 484 len ceil32(32 * _1104)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + _1102 + 484 len ceil32(32 * _1104)]
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
            revert with 0, 50
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]:
            revert with 0, 50
        _1238 = mem[(32 * uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 387]
        staticcall sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1246 = mem[_1244]
        require mem[_1244] == mem[_1244 + 18 len 14]
        _1248 = mem[_1244 + 32]
        require mem[_1244 + 32] == mem[_1244 + 50 len 14]
        require mem[_1244 + 64] == mem[_1244 + 92 len 4]
        if cd[(arg4 + cd[(arg4 + 36)] + 132)] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
        if _1238:
            if mem[_1244 + 50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1244 + 18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1244 + 50 len 14] and cd[(arg4 + cd[(arg4 + 36)] + 132)] > -1 / mem[_1244 + 50 len 14]:
                revert with 0, 17
            if mem[_1244 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if mem[_1244 + 18 len 14] < cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if mem[_1244 + 18 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)] and cd[(arg4 + cd[(arg4 + 36)] + 260)] > -1 / mem[_1244 + 18 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if not (mem[_1244 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)]):
                revert with 0, 18
            if 1 > !(1000 * mem[_1244 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (mem[_1244 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])):
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            emit 0xb68daf33: mem[_1288], (1000 * Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1308] <= (1000 * Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1:
                revert with 0, 'Not enough token0s to return'
            if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
                revert with 0, 50
            if 100 > !((1000 * Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1):
                revert with 0, 17
            mem[mem[64] + 4] = sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])]
            mem[mem[64] + 36] = (1000 * Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            call tokens.length.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])], (1000 * Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1336] == bool(mem[_1336])
        else:
            if mem[_1244 + 18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1244 + 50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1244 + 18 len 14] and cd[(arg4 + cd[(arg4 + 36)] + 132)] > -1 / mem[_1244 + 18 len 14]:
                revert with 0, 17
            if mem[_1244 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if mem[_1244 + 50 len 14] < cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if mem[_1244 + 50 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)] and cd[(arg4 + cd[(arg4 + 36)] + 260)] > -1 / mem[_1244 + 50 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if not (mem[_1244 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)]):
                revert with 0, 18
            if 1 > !(1000 * mem[_1244 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (mem[_1244 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])):
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            emit 0xb68daf33: mem[_1289], (1000 * Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1309] <= (1000 * Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1:
                revert with 0, 'Not enough token0s to return'
            if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
                revert with 0, 50
            if 100 > !((1000 * Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1):
                revert with 0, 17
            mem[mem[64] + 4] = sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])]
            mem[mem[64] + 36] = (1000 * Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            call tokens.length.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])], (1000 * Mask(112, 0, _1246) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1248) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1337] == bool(mem[_1337])
    else:
        _898 = mem[416]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 360] = mem[396 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 392] = address(_898)
        staticcall factories[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])].getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 360], address(_898)
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + ceil32(return_data.size) + 360] = this.address
        staticcall tokens.length.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + ceil32(return_data.size) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'The token0 balance should be 0 here'
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 360] = this.address
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg4 + cd[(arg4 + 36)] + 132)] != ext_call.return_data[0]:
            revert with 0, 'Not enough token1 received'
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)]) >= 2:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 360] = routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 392] = arg3
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])], arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = 2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388 len 64] = call.data[calldata.size len 64]
        if 1 >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = mem[428 len 20]
        if not cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = mem[396 len 20]
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)]) >= 2:
            revert with 0, 50
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 456] = arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 488] = 0
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 520] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 616] = 2
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 648
        t = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 552] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 584] = block.timestamp
        call routers[uint8(cd[(arg4 + cd[(arg4 + 36)] + 196)])].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 648 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 452
        require return_data.size >= 32
        _1103 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + return_data.size + 452 > ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 483
        _1105 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452]) + 453 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452]) + 453
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, arg3) >> 32 + 452]
        require _1103 + (32 * _1105) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 484 len ceil32(32 * _1105)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]) + (6 * ceil32(return_data.size)) + _1103 + 484 len ceil32(32 * _1105)]
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
            revert with 0, 50
        if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 228)] + 36)]:
            revert with 0, 50
        _1239 = mem[(32 * uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 36)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 100)] + 36)]) + 387]
        staticcall sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1245 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1247 = mem[_1245]
        require mem[_1245] == mem[_1245 + 18 len 14]
        _1249 = mem[_1245 + 32]
        require mem[_1245 + 32] == mem[_1245 + 50 len 14]
        require mem[_1245 + 64] == mem[_1245 + 92 len 4]
        if cd[(arg4 + cd[(arg4 + 36)] + 132)] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
        if _1239:
            if mem[_1245 + 50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1245 + 18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1245 + 50 len 14] and cd[(arg4 + cd[(arg4 + 36)] + 132)] > -1 / mem[_1245 + 50 len 14]:
                revert with 0, 17
            if mem[_1245 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if mem[_1245 + 18 len 14] < cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if mem[_1245 + 18 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)] and cd[(arg4 + cd[(arg4 + 36)] + 260)] > -1 / mem[_1245 + 18 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if not (mem[_1245 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)]):
                revert with 0, 18
            if 1 > !(1000 * mem[_1245 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (mem[_1245 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])):
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            emit 0xb68daf33: mem[_1290], (1000 * Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1310] <= (1000 * Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1:
                revert with 0, 'Not enough token0s to return'
            if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
                revert with 0, 50
            if 100 > !((1000 * Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1):
                revert with 0, 17
            mem[mem[64] + 4] = sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])]
            mem[mem[64] + 36] = (1000 * Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            call tokens.length.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])], (1000 * Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1338] == bool(mem[_1338])
        else:
            if mem[_1245 + 18 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1245 + 50 len 14] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[_1245 + 18 len 14] and cd[(arg4 + cd[(arg4 + 36)] + 132)] > -1 / mem[_1245 + 18 len 14]:
                revert with 0, 17
            if mem[_1245 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if mem[_1245 + 50 len 14] < cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if mem[_1245 + 50 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)] and cd[(arg4 + cd[(arg4 + 36)] + 260)] > -1 / mem[_1245 + 50 len 14] - cd[(arg4 + cd[(arg4 + 36)] + 132)]:
                revert with 0, 17
            if not (mem[_1245 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)]):
                revert with 0, 18
            if 1 > !(1000 * mem[_1245 + 18 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (mem[_1245 + 50 len 14] * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])):
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            emit 0xb68daf33: mem[_1291], (1000 * Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1
            mem[mem[64] + 4] = this.address
            staticcall tokens.length.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1311] <= (1000 * Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1:
                revert with 0, 'Not enough token0s to return'
            if uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)]) >= 2:
                revert with 0, 50
            if 100 > !((1000 * Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 1):
                revert with 0, 17
            mem[mem[64] + 4] = sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])]
            mem[mem[64] + 36] = (1000 * Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            call tokens.length.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_12bbd77d[uint8(cd[(arg4 + cd[(arg4 + 36)] + 164)])], (1000 * Mask(112, 0, _1247) * cd[(arg4 + cd[(arg4 + 36)] + 132)] / (Mask(112, 0, _1249) * cd[(arg4 + cd[(arg4 + 36)] + 260)]) - (cd[(arg4 + cd[(arg4 + 36)] + 132)] * cd[(arg4 + cd[(arg4 + 36)] + 260)])) + 101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1339] == bool(mem[_1339])
}



}
