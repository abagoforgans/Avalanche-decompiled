contract main {




// =====================  Runtime code  =====================


#
#  - swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - sub_5cae0310(?)
#  - swapExactTokensForETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - sub_b1ca4936(?)
#  - swapTokensForExactETH(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#
address owner;
uint256 stor2;
uint256 stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_459f02ac(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transfer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    return Array(len=1, data=arg1)
}

function withdraw(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    if not arg2:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] >= arg1
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_674ee80b(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    if stor3 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor3:
        revert with 'NH{q', 18
    if not msg.value / stor3:
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if not msg.value:
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            idx = 0
            s = cd[68] + 36
            t = 452
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
        else:
            if msg.value and cd[36] > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * cd[36] / msg.value != cd[36]:
                revert with 0, 'SafeMath: multiplication overflow'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            idx = 0
            s = cd[68] + 36
            t = 452
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.value * cd[36] / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
    else:
        if msg.value / stor3 and stor2 > -1 / msg.value / stor3:
            revert with 'NH{q', 17
        if not msg.value / stor3:
            revert with 'NH{q', 18
        if msg.value / stor3 * stor2 / msg.value / stor3 != stor2:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor3 * stor2:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value / stor3 * stor2 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor3 * stor2:
            revert with 'NH{q', 17
        if not msg.value - (msg.value / stor3 * stor2):
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            idx = 0
            s = cd[68] + 36
            t = 452
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor3 * stor2) wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
        else:
            if msg.value - (msg.value / stor3 * stor2) and cd[36] > -1 / msg.value - (msg.value / stor3 * stor2):
                revert with 'NH{q', 17
            if not msg.value - (msg.value / stor3 * stor2):
                revert with 'NH{q', 18
            if (msg.value * cd[36]) - (msg.value / stor3 * stor2 * cd[36]) / msg.value - (msg.value / stor3 * stor2) != cd[36]:
                revert with 0, 'SafeMath: multiplication overflow'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            idx = 0
            s = cd[68] + 36
            t = 452
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor3 * stor2) wei
                 gas gas_remaining wei
                args (msg.value * cd[36]) - (msg.value / stor3 * stor2 * cd[36]) / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = cd[68] + 36
    t = 544
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 544] = 26
    mem[(32 * ('cd', 68).length) + 576 len 832] = msg.value, cd[36], 'SafeMath: subtraction overflow', 26, 'SafeMath: division by zero', msg.value, cd[36], address(cd[4]), 224, (32 * ('cd', 68).length) + 256, uint32(('cd', 68).length), mem[452 len 60], ('cd', 68).length, mem[544 len 416]
    emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[544 len (32 * ('cd', 68).length) + 864]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
}

function swapETHForExactTokens(address arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor3 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor3:
        revert with 'NH{q', 18
    if not msg.value / stor3:
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        mem[224] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[228] = arg2
        mem[260] = 128
        mem[356] = arg3.length
        idx = 0
        s = arg3 + 36
        t = 388
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = arg4
        mem[324] = arg5
        call arg1.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=mem[388 len 32 * arg3.length]), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _83 = mem[224 len 4], Mask(224, 32, arg2) >> 32
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
        _85 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        require _83 + (32 * _85) + 32 <= return_data.size
        idx = _83 + 256
        s = ceil32(return_data.size) + 256
        while idx < _83 + (32 * _85) + 256:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64]] = msg.value
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = 224
        mem[mem[64] + 224] = arg3.length
        idx = 0
        s = arg3 + 36
        t = mem[64] + 256
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * arg3.length) + 256
        _277 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * arg3.length) + 288 len 32 * _277] = mem[ceil32(return_data.size) + 256 len 32 * _277]
        mem[mem[64] + 160] = arg4
        mem[mem[64] + 192] = arg5
        emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _277) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
        if 0 >= mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _373 = mem[ceil32(return_data.size) + 256]
        mem[mem[64]] = 26
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if stor3 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor3:
            revert with 'NH{q', 18
        if not _373 / stor3:
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < 0:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if _373 / stor3 and stor2 > -1 / _373 / stor3:
                revert with 'NH{q', 17
            if not _373 / stor3:
                revert with 'NH{q', 18
            if _373 / stor3 * stor2 / _373 / stor3 != stor2:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if _373 / stor3 * stor2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < _373 / stor3 * stor2:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value - (_373 / stor3 * stor2):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value - (_373 / stor3 * stor2) < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - (_373 / stor3 * stor2) - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - (_373 / stor3 * stor2) - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value / stor3 and stor2 > -1 / msg.value / stor3:
            revert with 'NH{q', 17
        if not msg.value / stor3:
            revert with 'NH{q', 18
        if msg.value / stor3 * stor2 / msg.value / stor3 != stor2:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if msg.value / stor3 * stor2 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor3 * stor2:
            revert with 'NH{q', 17
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor3 * stor2:
            revert with 0, 'C98Swap: Fee not enough'
        mem[224] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[228] = arg2
        mem[260] = 128
        mem[356] = arg3.length
        idx = 0
        s = arg3 + 36
        t = 388
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = arg4
        mem[324] = arg5
        call arg1.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value / stor3 * stor2) wei
             gas gas_remaining wei
            args arg2, Array(len=arg3.length, data=mem[388 len 32 * arg3.length]), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _82 = mem[224 len 4], Mask(224, 32, arg2) >> 32
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 255 < return_data.size + 224
        _84 = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
        require _82 + (32 * _84) + 32 <= return_data.size
        idx = _82 + 256
        s = ceil32(return_data.size) + 256
        while idx < _82 + (32 * _84) + 256:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64]] = msg.value
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = 224
        mem[mem[64] + 224] = arg3.length
        idx = 0
        s = arg3 + 36
        t = mem[64] + 256
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * arg3.length) + 256
        _276 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * arg3.length) + 288 len 32 * _276] = mem[ceil32(return_data.size) + 256 len 32 * _276]
        mem[mem[64] + 160] = arg4
        mem[mem[64] + 192] = arg5
        emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _276) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
        if 0 >= mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _372 = mem[ceil32(return_data.size) + 256]
        mem[mem[64]] = 26
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if stor3 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor3:
            revert with 'NH{q', 18
        if not _372 / stor3:
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if 0 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < 0:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if _372 / stor3 and stor2 > -1 / _372 / stor3:
                revert with 'NH{q', 17
            if not _372 / stor3:
                revert with 'NH{q', 18
            if _372 / stor3 * stor2 / _372 / stor3 != stor2:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if _372 / stor3 * stor2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < _372 / stor3 * stor2:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value - (_372 / stor3 * stor2):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value - (_372 / stor3 * stor2) < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - (_372 / stor3 * stor2) - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - (_372 / stor3 * stor2) - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function swapExactETHForTokens(address arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor3 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor3:
        revert with 'NH{q', 18
    if not msg.value / stor3:
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if not msg.value:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[292] = 0 / msg.value
            mem[324] = 128
            mem[420] = arg3.length
            idx = 0
            s = arg3 + 36
            t = 452
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[356] = arg4
            mem[388] = arg5
            call arg1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=arg3.length, data=mem[452 len 32 * arg3.length]), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _127 = mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 319 < return_data.size + 288
            _131 = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            require _127 + (32 * _131) + 32 <= return_data.size
            idx = _127 + 320
            s = ceil32(return_data.size) + 320
            while idx < _127 + (32 * _131) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64]] = msg.value
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = arg3.length
            idx = 0
            s = arg3 + 36
            t = mem[64] + 256
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * arg3.length) + 256
            _179 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 288 len 32 * _179] = mem[ceil32(return_data.size) + 320 len 32 * _179]
            emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _179) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
        else:
            if msg.value and arg2 > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * arg2 / msg.value != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[292] = msg.value * arg2 / msg.value
            mem[324] = 128
            mem[420] = arg3.length
            idx = 0
            s = arg3 + 36
            t = 452
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[356] = arg4
            mem[388] = arg5
            call arg1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.value * arg2 / msg.value, Array(len=arg3.length, data=mem[452 len 32 * arg3.length]), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _126 = mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 319 < return_data.size + 288
            _130 = mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.value * arg2 / msg.value) >> 32 + 288]
            require _126 + (32 * _130) + 32 <= return_data.size
            idx = _126 + 320
            s = ceil32(return_data.size) + 320
            while idx < _126 + (32 * _130) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64]] = msg.value
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = arg3.length
            idx = 0
            s = arg3 + 36
            t = mem[64] + 256
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * arg3.length) + 256
            _178 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 288 len 32 * _178] = mem[ceil32(return_data.size) + 320 len 32 * _178]
            emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _178) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
    else:
        if msg.value / stor3 and stor2 > -1 / msg.value / stor3:
            revert with 'NH{q', 17
        if not msg.value / stor3:
            revert with 'NH{q', 18
        if msg.value / stor3 * stor2 / msg.value / stor3 != stor2:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor3 * stor2:
            revert with 0, 'C98Swap: Fee not enough'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if msg.value / stor3 * stor2 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor3 * stor2:
            revert with 'NH{q', 17
        if not msg.value - (msg.value / stor3 * stor2):
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[292] = 0 / msg.value
            mem[324] = 128
            mem[420] = arg3.length
            idx = 0
            s = arg3 + 36
            t = 452
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[356] = arg4
            mem[388] = arg5
            call arg1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor3 * stor2) wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=arg3.length, data=mem[452 len 32 * arg3.length]), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _125 = mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 319 < return_data.size + 288
            _129 = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            require _125 + (32 * _129) + 32 <= return_data.size
            idx = _125 + 320
            s = ceil32(return_data.size) + 320
            while idx < _125 + (32 * _129) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64]] = msg.value
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = arg3.length
            idx = 0
            s = arg3 + 36
            t = mem[64] + 256
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * arg3.length) + 256
            _177 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 288 len 32 * _177] = mem[ceil32(return_data.size) + 320 len 32 * _177]
            emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _177) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
        else:
            if msg.value - (msg.value / stor3 * stor2) and arg2 > -1 / msg.value - (msg.value / stor3 * stor2):
                revert with 'NH{q', 17
            if not msg.value - (msg.value / stor3 * stor2):
                revert with 'NH{q', 18
            if (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value - (msg.value / stor3 * stor2) != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[292] = (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value
            mem[324] = 128
            mem[420] = arg3.length
            idx = 0
            s = arg3 + 36
            t = 452
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[356] = arg4
            mem[388] = arg5
            call arg1.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor3 * stor2) wei
                 gas gas_remaining wei
                args (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value, Array(len=arg3.length, data=mem[452 len 32 * arg3.length]), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _124 = mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 319 < return_data.size + 288
            _128 = mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, (msg.value * arg2) - (msg.value / stor3 * stor2 * arg2) / msg.value) >> 32 + 288]
            require _124 + (32 * _128) + 32 <= return_data.size
            idx = _124 + 320
            s = ceil32(return_data.size) + 320
            while idx < _124 + (32 * _128) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64]] = msg.value
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = arg3.length
            idx = 0
            s = arg3 + 36
            t = mem[64] + 256
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * arg3.length) + 256
            _176 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * arg3.length) + 288 len 32 * _176] = mem[ceil32(return_data.size) + 320 len 32 * _176]
            emit 0xf604614f: msg.value, arg2, address(arg1), Array(len=arg3.length, data=mem[mem[64] + 256 len (32 * arg3.length) + (32 * _176) + 32]), (32 * arg3.length) + 256, address(arg4), arg5
}



}
