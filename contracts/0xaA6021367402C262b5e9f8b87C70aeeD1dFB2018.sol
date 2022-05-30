contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor4;

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

function approveDAI() payable {
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
    mem[192] = stor1
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = ext_call.return_data[0]
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _48 = mem[224 len 4], ext_call.return_data[0 len 28]
    require mem[224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], ext_call.return_data[0 len 28] + 224]
    _51 = mem[_48 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_48 + 224])] = mem[_48 + 256 len floor32(mem[_48 + 224])]
    mem[(32 * _51) + ceil32(return_data.size) + 260] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _51) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < mem[ceil32(return_data.size) + 224]
    _76 = mem[ceil32(return_data.size) + 320]
    mem[(32 * _51) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _51) + ceil32(return_data.size) + 260] = ext_call.return_data[0]
    mem[(32 * _51) + ceil32(return_data.size) + 292] = _76
    mem[(32 * _51) + ceil32(return_data.size) + 356] = this.address
    mem[(32 * _51) + ceil32(return_data.size) + 388] = block.timestamp
    mem[(32 * _51) + ceil32(return_data.size) + 324] = 160
    mem[(32 * _51) + ceil32(return_data.size) + 420] = 3
    mem[(32 * _51) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _76, Array(len=3, data=mem[(32 * _51) + ceil32(return_data.size) + 452 len 96]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _51) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _51) + (2 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    require mem[(32 * _51) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _51) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _51) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * _51) + ceil32(return_data.size) + 256] <= 4294967296 and mem[(32 * _51) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _51) + ceil32(return_data.size) + 256 len 4], ext_call.return_data[0 len 28] + (32 * _51) + ceil32(return_data.size) + 256]) + 32 <= return_data.size
}



}
