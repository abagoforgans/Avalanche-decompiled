contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    revert
}

function setLocked(bool arg1) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Locked!'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function checkHPAndTaxes(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if uint8(stor0.field_160):
        revert with 0, 
                    32,
                    38,
                    0xfe486f6e6579706f7420636f6e74726163742069732063757272656e746c79206c6f636b6564,
                    mem[(32 * arg2.length) + 234 len 26]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = msg.value
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _58 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    _61 = mem[(32 * arg2.length) + _58 + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _58 + 128])] = mem[(32 * arg2.length) + _58 + 160 len floor32(mem[(32 * arg2.length) + _58 + 128])]
    require 1 < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
    _105 = mem[(32 * arg2.length) + ceil32(return_data.size) + 192]
    require 1 < arg2.length
    require 0 < arg2.length
    _109 = mem[128]
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 260] = block.timestamp + 15
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg2.length
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 15, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length
    mem[128] = mem[172 len 20]
    require 1 < arg2.length
    mem[160] = address(_109)
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 196] = 64
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg2.length
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 260 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 260 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _178 = mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] + 160] <= 4294967296 and mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] + 160]) + 32 <= return_data.size
    mem[(32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] = mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + 160 len 4], ext_call.return_data[0 len 28] + 160]
    _181 = mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + _178 + 160]
    mem[(32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + _178 + 160])] = mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + _178 + 192 len floor32(mem[(32 * _61) + (32 * arg2.length) + ceil32(return_data.size) + _178 + 160])]
    require 1 < mem[(32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
    mem[(32 * _181) + (32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 388 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 15, arg2.length, mem[128 len floor32(arg2.length)], mem[(32 * _181) + (32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + floor32(arg2.length) + 388 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return _105, 
           ext_call.return_data[0],
           mem[(32 * _61) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 224],
           eth.balance(this.address)
}



}
