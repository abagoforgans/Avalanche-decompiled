contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1badd640(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 1
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
    mem[292] = this.address
    mem[324] = block.timestamp
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _35 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _36 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _35 + (32 * _36) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _36] = mem[_35 + 224 len 32 * _36]
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _68 = mem[_67]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _68
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _68, arg1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_80] <= test266151307()
    require _80 + mem[_80] + 31 < _80 + return_data.size
    if mem[_80 + mem[_80]] > test266151307():
        revert with 'NH{q', 65
    if _80 + ceil32(return_data.size) + (32 * mem[_80 + mem[_80]]) + 32 > test266151307() or (32 * mem[_80 + mem[_80]]) + 32 < 0:
        revert with 'NH{q', 65
    require return_data.size >= mem[_80] + (32 * mem[_80 + mem[_80]]) + 32
}



}
