contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEstimatedTokenforToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _23 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _26 = mem[_23 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_23 + 192])] = mem[_23 + 224 len floor32(mem[_23 + 192])]
    mem[(32 * _26) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _26) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _26) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    return 32, mem[(32 * _26) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
}

function BuyToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 2
    mem[224] = arg1
    mem[256] = arg2
    mem[288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _44 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    _47 = mem[_44 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_44 + 288])] = mem[_44 + 320 len floor32(mem[_44 + 288])]
    require 0 < mem[ceil32(return_data.size) + 288]
    mem[(32 * _47) + ceil32(return_data.size) + 384] = arg2
    mem[(32 * _47) + ceil32(return_data.size) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _47) + ceil32(return_data.size) + 420] = arg3
    mem[(32 * _47) + ceil32(return_data.size) + 452] = mem[ceil32(return_data.size) + 320]
    mem[(32 * _47) + ceil32(return_data.size) + 516] = this.address
    mem[(32 * _47) + ceil32(return_data.size) + 548] = block.timestamp + 15
    mem[(32 * _47) + ceil32(return_data.size) + 484] = 160
    mem[(32 * _47) + ceil32(return_data.size) + 580] = 2
    mem[(32 * _47) + ceil32(return_data.size) + 612 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, mem[ceil32(return_data.size) + 320], Array(len=2, data=mem[(32 * _47) + ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _47) + ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _47) + (2 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    require mem[(32 * _47) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _47) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _47) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _47) + ceil32(return_data.size) + 416] <= 4294967296 and mem[(32 * _47) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _47) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * _47) + ceil32(return_data.size) + 416]) + 32 <= return_data.size
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}



}
