contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address wavaxAddress;
uint256 nonce;

function wavax() {
    return wavaxAddress
}

function sub_173f6b40(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function sub_e490e7cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
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

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1[address(arg1)]:
        revert with 0, 'A1-R1'
    stor1[address(arg1)] = 1
}

function addBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        revert with 0, 'A2-R1'
    stor2[address(arg1)] = 1
}

function removeBridge(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        revert with 0, 'R2-R1'
    stor2[address(arg1)] = 0
}

function removeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        revert with 0, 'R1-R1'
    stor1[address(arg1)] = 0
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

function sub_8790a079(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg1)
    mem[32] = 1
    if not stor1[address(arg1)]:
        revert with 0, 'S1-R1'
    mem[96] = 2
    mem[128] = wavaxAddress
    mem[160] = address(arg2)
    if msg.value < arg6:
        revert with 'NH{q', 17
    if block.timestamp > -arg4 - 1:
        revert with 'NH{q', 17
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp + arg4
    require ext_code.size(address(arg1))
    call address(arg1).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value - arg6 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _38 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _39 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _38 + (32 * _39) + 32 <= return_data.size
    idx = 0
    s = _38 + 224
    t = ceil32(return_data.size) + 224
    while idx < _39:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _63 = mem[_62]
    require mem[_62] == mem[_62]
    if mem[_62] <= 0:
        revert with 0, 'S1-R2'
    mem[0] = address(arg5)
    mem[32] = 2
    if not stor2[address(arg5)]:
        revert with 0, 'S1-R3'
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = _63
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg5), _63
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_71] == bool(mem[_71])
    require ext_code.size(address(arg5))
    call address(arg5).burn(uint256 rg1) with:
       value arg6 wei
         gas gas_remaining wei
        args _63
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    emit 0x42d60699: nonce
}



}
