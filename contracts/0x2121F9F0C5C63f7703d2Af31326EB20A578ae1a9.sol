contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;

function sub_41dcbd24(?) payable {
    require stor0 == msg.sender
    selfdestruct(0xd697e41cb97bb437457e1e5b37d398074214a9e0)
}

function _fallback() payable {
    revert
}

function approveTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _18 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6cfd8628(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + 101] = cd[4]
    mem[floor32(('cd', 68).length) + 133] = 64
    mem[floor32(('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = 128
    t = floor32(('cd', 68).length) + 197
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _157 = mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 68).length) + return_data.size + 97
    _158 = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 68).length) + mem[floor32(('cd', 68).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _157 + (32 * _158) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 68).length) + _157 + 129
    t = floor32(('cd', 68).length) + ceil32(return_data.size) + 129
    while idx < _158:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _158 < 1:
        revert with 'NH{q', 17
    if _158 - 1 >= _158:
        revert with 'NH{q', 50
    if mem[(32 * _158 - 1) + floor32(('cd', 68).length) + ceil32(return_data.size) + 129] < cd[36]:
        revert with 0, 'Lambot: INSUFFICIENT_OUTPUT_AMOUNT'
    if 1 >= _158:
        revert with 'NH{q', 50
    _240 = mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 161]
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    _244 = mem[160]
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = address(_244)
    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_244)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _249 = mem[_248]
    require mem[_248] == mem[_248 + 12 len 20]
    require ext_code.size(mem[_248 + 12 len 20])
    staticcall mem[_248 + 12 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _252 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _253 = mem[_252]
    require mem[_252] == mem[_252 + 12 len 20]
    require ext_code.size(address(_249))
    staticcall address(_249).token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_256] == mem[_256 + 12 len 20]
    if 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    if mem[172 len 20] == address(_253):
        if mem[172 len 20] == mem[_256 + 12 len 20]:
            _268 = mem[128]
            _269 = mem[64]
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = address(_268)
            mem[mem[64] + 96] = cd[4]
            mem[mem[64] + 128] = _240
            _312 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 192
            mem[_269 + (32 * ('cd', 68).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_269 + (32 * ('cd', 68).length) + 196] = _240
            mem[_269 + (32 * ('cd', 68).length) + 228] = _240
            mem[_269 + (32 * ('cd', 68).length) + 260] = this.address
            mem[_269 + (32 * ('cd', 68).length) + 292] = 128
            _320 = mem[_312]
            mem[_269 + (32 * ('cd', 68).length) + 324] = mem[_312]
            mem[_269 + (32 * ('cd', 68).length) + 356 len ceil32(_320)] = mem[_312 + 32 len ceil32(_320)]
            if ceil32(_320) > _320:
                mem[_269 + (32 * ('cd', 68).length) + _320 + 356] = 0
            require ext_code.size(address(_249))
            call address(_249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _240, _240, address(this.address), 128, mem[_269 + (32 * ('cd', 68).length) + 324 len ceil32(_320) + 32]
        else:
            _270 = mem[128]
            _271 = mem[64]
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = address(_270)
            mem[mem[64] + 96] = cd[4]
            mem[mem[64] + 128] = _240
            _314 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 192
            mem[_271 + (32 * ('cd', 68).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_271 + (32 * ('cd', 68).length) + 196] = _240
            mem[_271 + (32 * ('cd', 68).length) + 228] = 0
            mem[_271 + (32 * ('cd', 68).length) + 260] = this.address
            mem[_271 + (32 * ('cd', 68).length) + 292] = 128
            _321 = mem[_314]
            mem[_271 + (32 * ('cd', 68).length) + 324] = mem[_314]
            mem[_271 + (32 * ('cd', 68).length) + 356 len ceil32(_321)] = mem[_314 + 32 len ceil32(_321)]
            if ceil32(_321) > _321:
                mem[_271 + (32 * ('cd', 68).length) + _321 + 356] = 0
            require ext_code.size(address(_249))
            call address(_249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _240, 0, address(this.address), 128, mem[_271 + (32 * ('cd', 68).length) + 324 len ceil32(_321) + 32]
    else:
        if mem[172 len 20] == mem[_256 + 12 len 20]:
            _272 = mem[128]
            _273 = mem[64]
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = address(_272)
            mem[mem[64] + 96] = cd[4]
            mem[mem[64] + 128] = _240
            _316 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 192
            mem[_273 + (32 * ('cd', 68).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_273 + (32 * ('cd', 68).length) + 196] = 0
            mem[_273 + (32 * ('cd', 68).length) + 228] = _240
            mem[_273 + (32 * ('cd', 68).length) + 260] = this.address
            mem[_273 + (32 * ('cd', 68).length) + 292] = 128
            _322 = mem[_316]
            mem[_273 + (32 * ('cd', 68).length) + 324] = mem[_316]
            mem[_273 + (32 * ('cd', 68).length) + 356 len ceil32(_322)] = mem[_316 + 32 len ceil32(_322)]
            if ceil32(_322) > _322:
                mem[_273 + (32 * ('cd', 68).length) + _322 + 356] = 0
            require ext_code.size(address(_249))
            call address(_249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _240, address(this.address), 128, mem[_273 + (32 * ('cd', 68).length) + 324 len ceil32(_322) + 32]
        else:
            _274 = mem[128]
            _275 = mem[64]
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = ('cd', 68).length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = address(_274)
            mem[mem[64] + 96] = cd[4]
            mem[mem[64] + 128] = _240
            _318 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 192
            mem[_275 + (32 * ('cd', 68).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_275 + (32 * ('cd', 68).length) + 196] = 0
            mem[_275 + (32 * ('cd', 68).length) + 228] = 0
            mem[_275 + (32 * ('cd', 68).length) + 260] = this.address
            mem[_275 + (32 * ('cd', 68).length) + 292] = 128
            _323 = mem[_318]
            mem[_275 + (32 * ('cd', 68).length) + 324] = mem[_318]
            mem[_275 + (32 * ('cd', 68).length) + 356 len ceil32(_323)] = mem[_318 + 32 len ceil32(_323)]
            if ceil32(_323) > _323:
                mem[_275 + (32 * ('cd', 68).length) + _323 + 356] = 0
            require ext_code.size(address(_249))
            call address(_249).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, mem[_275 + (32 * ('cd', 68).length) + 324 len ceil32(_323) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
