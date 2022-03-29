contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_7bbe62d7(?) {
    revert with 0, ':)'
}

function sub_ff70f2ca(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    call stor0.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 1, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 10^6, 0, 160, msg.sender, block.timestamp + 1, 2, 0, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_619196e6(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 2
    mem[160] = arg1
    require ext_code.size(stor0)
    call stor0.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = msg.value
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp + 1
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 1, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _45 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    _48 = mem[_45 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_45 + 192])] = mem[_45 + 224 len floor32(mem[_45 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _73 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _48) + ceil32(return_data.size) + 228] = arg2
    mem[(32 * _48) + ceil32(return_data.size) + 260] = _73
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _73
    mem[(32 * _48) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg1
    mem[160] = stor0
    require 1 < mem[ceil32(return_data.size) + 192]
    _81 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _48) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _48) + ceil32(return_data.size) + 228] = _81
    mem[(32 * _48) + ceil32(return_data.size) + 260] = 0
    mem[(32 * _48) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _48) + ceil32(return_data.size) + 356] = block.timestamp + 1
    mem[(32 * _48) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _48) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _48) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _81, 0, 160, msg.sender, block.timestamp + 1, 2, mem[(32 * _48) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _48) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _48) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 <= 4294967296
    require mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + (32 * _48) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + (32 * mem[mem[(32 * _48) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + (32 * _48) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
