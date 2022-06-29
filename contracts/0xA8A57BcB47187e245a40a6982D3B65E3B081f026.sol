contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7c225982(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getVault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getPoolId() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _12 = mem[96 len 4], ext_call.return_data[0 len 28]
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
    _15 = mem[_12 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
    mem[64] = (32 * _15) + ceil32(return_data.size) + 128
    _53 = ext_call.return_data[28 len 4], mem[132 len 28]
    require ext_call.return_data[28 len 4], mem[132 len 28] <= 4294967296
    require ext_call.return_data[28 len 4], mem[132 len 28] + 32 <= return_data.size
    require mem[ext_call.return_data[28 len 4], mem[132 len 28] + 96] <= 4294967296 and ext_call.return_data[28 len 4], mem[132 len 28] + (32 * mem[ext_call.return_data[28 len 4], mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _15) + ceil32(return_data.size) + 128] = mem[ext_call.return_data[28 len 4], mem[132 len 28] + 96]
    _57 = mem[_53 + 96]
    mem[(32 * _15) + ceil32(return_data.size) + 160 len floor32(mem[_53 + 96])] = mem[_53 + 128 len floor32(mem[_53 + 96])]
    require ext_code.size(arg1)
    staticcall arg1.getSwapFeePercentage() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] = 0xf89f27ed00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getNormalizedWeights() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _97 = mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160]
    require mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] <= 4294967296
    require mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] + 32 <= return_data.size
    require mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] + 160] <= 4294967296 and mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] + (32 * mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] + 160]) + 32 <= return_data.size
    mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + 160] + 160]
    _100 = mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + _97 + 160]
    mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + _97 + 160])] = mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + _97 + 192 len floor32(mem[(32 * _57) + (32 * _15) + ceil32(return_data.size) + _97 + 160])]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getPausedState() with:
            gas gas_remaining wei
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.getLastInvariant() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 320] = bool(ext_call.return_data[0])
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 192] = 192
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _15) + ceil32(return_data.size) + 128]
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _15) + ceil32(return_data.size) + 128])] = mem[(32 * _15) + ceil32(return_data.size) + 160 len floor32(mem[(32 * _15) + ceil32(return_data.size) + 128])]
    mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 224] = (32 * mem[(32 * _15) + ceil32(return_data.size) + 128]) + 224
    mem[(32 * mem[(32 * _15) + ceil32(return_data.size) + 128]) + (32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 416] = mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160]
    mem[(32 * mem[(32 * _15) + ceil32(return_data.size) + 128]) + (32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160])] = mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160])]
    return 192, 
           mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 224],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           mem[(32 * _100) + (32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 384 len (32 * mem[(32 * _57) + (32 * _15) + (2 * ceil32(return_data.size)) + 160]) + (32 * mem[(32 * _15) + ceil32(return_data.size) + 128]) + 64]
}



}
