contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address uniswapRouterAddress;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function uniswapRouter() {
    return uniswapRouterAddress
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function remove(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor1[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function withdrawEth() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdrawEth failed'
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_bdf77309(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    if ('cd', 164).length <= 0:
        revert with 0, 'target address not be null'
    uniswapRouterAddress = address(cd[132])
    idx = 0
    while idx < ('cd', 164).length:
        mem[96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[164] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[196] = cd[68]
        mem[132] = 128
        mem[228] = ('cd', 36).length
        mem[260 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 260] = 0
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[100] wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_26c05978(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    if ('cd', 164).length <= 0:
        revert with 0, 'target address not be null'
    uniswapRouterAddress = address(cd[132])
    idx = 0
    while idx < ('cd', 164).length:
        mem[96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[36]
        mem[196] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[228] = cd[100]
        mem[164] = 160
        mem[260] = ('cd', 68).length
        mem[292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 292] = 0
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_61b2f920(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    if ('cd', 164).length <= 0:
        revert with 0, 'target address not be null'
    uniswapRouterAddress = address(cd[132])
    idx = 0
    while idx < ('cd', 164).length:
        mem[96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[36]
        mem[196] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[228] = cd[100]
        mem[164] = 160
        mem[260] = ('cd', 68).length
        mem[292 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 292] = 0
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_ed523f0b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    if ('cd', 164).length <= 0:
        revert with 0, 'target address not be null'
    uniswapRouterAddress = address(cd[132])
    idx = 0
    while idx < ('cd', 164).length:
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = cd[36]
        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[mem[64] + 132] = cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        mem[mem[64] + 196 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + (32 * ('cd', 68).length) + 196] = 0
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] <= 4294967296
        require mem[_16] + 32 <= return_data.size
        require mem[mem[_16] + _16] <= 4294967296 and mem[_16] + (32 * mem[mem[_16] + _16]) + 32 <= return_data.size
        mem[_16 + ceil32(return_data.size)] = mem[mem[_16] + _16]
        _20 = mem[_17 + _16]
        s = 0
        while s < 32 * _20:
            mem[_16 + ceil32(return_data.size) + s + 32] = mem[_17 + _16 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _20) + _16 + ceil32(return_data.size) + 32
        idx = idx + 1
        continue 
}

function sub_f931c3be(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'address must in writelist'
    if ('cd', 164).length <= 0:
        revert with 0, 'target address not be null'
    uniswapRouterAddress = address(cd[132])
    idx = 0
    while idx < ('cd', 164).length:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = cd[36]
        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[164] + 36)])
        mem[mem[64] + 132] = cd[100]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        mem[mem[64] + 196 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + (32 * ('cd', 68).length) + 196] = 0
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[((32 * idx) + cd[164] + 36)]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] <= 4294967296
        require mem[_16] + 32 <= return_data.size
        require mem[mem[_16] + _16] <= 4294967296 and mem[_16] + (32 * mem[mem[_16] + _16]) + 32 <= return_data.size
        mem[_16 + ceil32(return_data.size)] = mem[mem[_16] + _16]
        _20 = mem[_17 + _16]
        s = 0
        while s < 32 * _20:
            mem[_16 + ceil32(return_data.size) + s + 32] = mem[_17 + _16 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _20) + _16 + ceil32(return_data.size) + 32
        idx = idx + 1
        continue 
}



}
