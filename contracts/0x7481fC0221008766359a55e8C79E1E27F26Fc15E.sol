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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
        mem[floor32(('cd', 4).length) + 101] = stor0
        mem[floor32(('cd', 4).length) + 133] = cd[36]
        require ext_code.size(address(_27))
        call address(_27).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    else:
        require msg.sender == stor4
        if 0 >= ('cd', 4).length:
            revert with 'NH{q', 50
        _30 = mem[128]
        mem[floor32(('cd', 4).length) + 101] = stor0
        mem[floor32(('cd', 4).length) + 133] = cd[36]
        require ext_code.size(address(_30))
        call address(_30).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, cd[36]
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 101] = cd[36]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 133] = 0
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 165] = 160
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 261] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + ceil32(return_data.size) + 293
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], 0, 160, address(this.address), block.timestamp + 15, ('cd', 4).length, mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
