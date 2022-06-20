contract main {




// =====================  Runtime code  =====================


address stor0;
address routerAddress;
address WAVAXAddress;

function WAVAX() payable {
    return WAVAXAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'OWNER'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function redeem(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'OWNER'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            call stor0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if return_data.size:
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20] = return_data.size
                mem[_20 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'NOT SENT'
        else:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            require mem[_27] == mem[_27]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _28
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _28
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_31] == bool(mem[_31])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_205baa33(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    if stor0 != msg.sender:
        revert with 0, 'OWNER'
    mem[100] = this.address
    require ext_code.size(WAVAXAddress)
    staticcall WAVAXAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[36]
    mem[ceil32(return_data.size) + 132] = cd[68]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[100]
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 4).length]), address(this.address), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _22 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _23 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _23
    require _22 + (32 * _23) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _22 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _23:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(WAVAXAddress)
    staticcall WAVAXAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _35 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_35] == mem[_35]
    if mem[_35] <= ext_call.return_data[0]:
        revert with 0, 'Failed Arb'
}



}
