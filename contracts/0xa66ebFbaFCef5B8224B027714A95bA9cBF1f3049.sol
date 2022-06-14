contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor3 = arg1
}

function withdrawStuck() {
    if stor3 != msg.sender:
        require msg.sender == stor4
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function withdrawStuckToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        require msg.sender == stor4
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6023e966(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    if stor3 != msg.sender:
        require msg.sender == stor4
    idx = 0
    while idx < cd[36]:
        if eth.balance(this.address) < cd[68]:
            revert with 0, 'Not enough balance'
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        require ('cd', 4)[0] == address(('cd', 4)[0])
        if address(('cd', 4)[0]) == stor2:
            if block.timestamp > -16:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 4).length
            s = 0
            t = cd[4] + 36
            u = mem[64] + 164
            while s < ('cd', 4).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = address(cd[100])
            mem[mem[64] + 100] = block.timestamp + 15
            require ext_code.size(stor1)
            call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[68] wei
                 gas gas_remaining wei
                args 0, 128, address(cd[100]), block.timestamp + 15, ('cd', 4).length, mem[mem[64] + 164 len 32 * ('cd', 4).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e1853af6(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    if msg.sender == stor3:
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _27 = mem[128]
        mem[(32 * ('cd', 4).length) + 132] = stor0
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(_27))
        call address(_27).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    else:
        require msg.sender == stor4
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _30 = mem[128]
        mem[(32 * ('cd', 4).length) + 132] = stor0
        mem[(32 * ('cd', 4).length) + 164] = cd[36]
        require ext_code.size(address(_30))
        call address(_30).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132] = cd[36]
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 164] = 0
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 196] = 160
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 292] = ('cd', 4).length
    idx = 0
    s = 128
    t = (32 * ('cd', 4).length) + ceil32(return_data.size) + 324
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 260] = block.timestamp + 15
    require ext_code.size(stor1)
    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 132 len (96 * ('cd', 4).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
