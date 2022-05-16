contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor5
    stor5 = arg1
}

function sub_0eb8d896(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor5
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function sub_7ea25ca1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor5
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor5
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e7735191(?) {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    if msg.sender == stor5:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[36]
        mem[164] = 160
        mem[260] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = 292
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = cd[100]
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[292 len 32 * ('cd', 68).length]), address(this.address), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _19 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
        _21 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _21
        require _19 + (32 * _21) + 32 <= return_data.size
        idx = 0
        s = _19 + 128
        t = ceil32(return_data.size) + 128
        while idx < _21:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        require msg.sender == stor0
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[4]
        mem[132] = cd[36]
        mem[164] = 160
        mem[260] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = 292
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = cd[100]
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[292 len 32 * ('cd', 68).length]), address(this.address), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _20 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
        _22 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _22
        require _20 + (32 * _22) + 32 <= return_data.size
        idx = 0
        s = _20 + 128
        t = ceil32(return_data.size) + 128
        while idx < _22:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
