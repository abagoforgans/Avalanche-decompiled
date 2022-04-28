contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
address wavaxAddress;
uint256 nonce;
uint256 sub_ac3f7234;

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

function sub_ac3f7234(?) {
    return sub_ac3f7234
}

function sub_ada25427(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
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

function sub_55b605a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ac3f7234 = arg1
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

function addRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'A3-R1'
    stor3[address(arg1)] = 1
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

function removeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'R3-R1'
    stor3[address(arg1)] = 0
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'W1-R1'
    if eth.balance(this.address) <= 0:
        revert with 0, 'W1-R2'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'W2-R2'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'W2-R3'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e652b71a(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = wavaxAddress
    if block.timestamp > -arg5 - 1:
        revert with 'NH{q', 17
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = arg4
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = owner
    mem[324] = block.timestamp + arg5
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=2, data=mem[388 len 64]), owner, block.timestamp + arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _18 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _19 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = _18 + 224
    t = ceil32(return_data.size) + 224
    while idx < _19:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_f66c9906(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)]:
        revert with 0, 'S3-R1'
    mem[96] = 2
    mem[128] = wavaxAddress
    mem[160] = address(arg2)
    if arg6 > sub_ac3f7234:
        revert with 0, 'S3-R2'
    if msg.value <= arg6:
        revert with 0, 'S3-R3'
    mem[0] = address(arg5)
    mem[32] = 3
    if not stor3[address(arg5)]:
        revert with 0, 'S3-R4'
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
    mem[260] = address(arg5)
    mem[292] = block.timestamp + arg4
    require ext_code.size(address(arg1))
    call address(arg1).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value - arg6 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(arg5), block.timestamp + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _30 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _31 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _30 + (32 * _31) + 32 <= return_data.size
    idx = 0
    s = _30 + 224
    t = ceil32(return_data.size) + 224
    while idx < _31:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    emit 0x42d60699: nonce
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
    if arg6 > sub_ac3f7234:
        revert with 0, 'S1-R2'
    if msg.value <= arg6:
        revert with 0, 'S1-R3'
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
    _42 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _43 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _42 + (32 * _43) + 32 <= return_data.size
    idx = 0
    s = _42 + 224
    t = ceil32(return_data.size) + 224
    while idx < _43:
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
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == mem[_74]
    if mem[_74] <= 0:
        revert with 0, 'S1-R4'
    mem[0] = address(arg5)
    mem[32] = 2
    if not stor2[address(arg5)]:
        revert with 0, 'S1-R5'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _84 = mem[_83]
    require mem[_83] == mem[_83]
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = _84
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg5), _84
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _87 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_87] == bool(mem[_87])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_91] == mem[_91]
    require ext_code.size(address(arg5))
    call address(arg5).0x42966c68 with:
       value arg6 wei
         gas gas_remaining wei
        args mem[_91]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if nonce == -1:
        revert with 'NH{q', 17
    nonce++
    emit 0x42d60699: nonce
}



}
