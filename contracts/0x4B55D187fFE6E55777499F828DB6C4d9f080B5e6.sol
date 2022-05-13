contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function swap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[196] = 10 * 10^18
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 356
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = stor0
    mem[292] = block.timestamp + 60
    call arg1.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 10 * 10^18, 128, stor0, block.timestamp + 60, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 2328306436
    require mem[192 len 4], 2328306436 <= test266151307()
    require mem[192 len 4], 2328306436 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 2328306436 + 192]
    if mem[mem[192 len 4], 2328306436 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 2328306436 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 2328306436 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 2328306436 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 2328306436 + 192]
    require (32 * _21) + _20 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _21)] = mem[_20 + 224 len ceil32(32 * _21)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 224 len 32 * _21]
    emit 0x3ee12abf: Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}



}
