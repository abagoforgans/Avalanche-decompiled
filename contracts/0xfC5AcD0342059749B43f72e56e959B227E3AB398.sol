contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_6c716898(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c0f24007(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawDAI() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_d71843b8(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5f53a042(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = stor1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor2)
    staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _47 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _50 = mem[_47 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_47 + 192])] = mem[_47 + 224 len floor32(mem[_47 + 192])]
    mem[(32 * _50) + ceil32(return_data.size) + 228] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _50) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < mem[ceil32(return_data.size) + 192]
    _75 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _50) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _50) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _50) + ceil32(return_data.size) + 260] = _75
    mem[(32 * _50) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _50) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _50) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _50) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _50) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _75, Array(len=2, data=mem[(32 * _50) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _50) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _50) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _50) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _50) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
