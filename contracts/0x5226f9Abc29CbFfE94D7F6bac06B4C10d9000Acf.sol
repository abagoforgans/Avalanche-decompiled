contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - sub_0fb5112d(?)
#  - sub_1b198757(?)
#  - sub_1b48304f(?)
#  - swapTokensForExactTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address arg5, uint256 arg6)
#  - sub_b1ca4936(?)
#
address owner;
mapping of uint8 stor2;
uint256 stor3;
uint256 stor4;

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
    stor3 = arg1
}

function setWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
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

function sub_ffce5a7b(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    require stor2[address(cd[4])]
    if stor4 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor4:
        revert with 'NH{q', 18
    if not msg.value / stor4:
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
            call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
            call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.value * cd[36] / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
    else:
        if msg.value / stor4 and stor3 > -1 / msg.value / stor4:
            revert with 'NH{q', 17
        if not msg.value / stor4:
            revert with 'NH{q', 18
        if msg.value / stor4 * stor3 / msg.value / stor4 != stor3:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor4 * stor3:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value / stor4 * stor3 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor4 * stor3:
            revert with 'NH{q', 17
        if not msg.value - (msg.value / stor4 * stor3):
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
            call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor4 * stor3) wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
        else:
            if msg.value - (msg.value / stor4 * stor3) and cd[36] > -1 / msg.value - (msg.value / stor4 * stor3):
                revert with 'NH{q', 17
            if not msg.value - (msg.value / stor4 * stor3):
                revert with 'NH{q', 18
            if (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value - (msg.value / stor4 * stor3) != cd[36]:
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
            call address(cd[4]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor4 * stor3) wei
                 gas gas_remaining wei
                args (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
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

function sub_42011206(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    mem[0] = address(cd[4])
    mem[32] = 2
    require stor2[address(cd[4])]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor4 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor4:
        revert with 'NH{q', 18
    if not msg.value / stor4:
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < 0:
            revert with 'NH{q', 17
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        mem[224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[228] = cd[36]
        mem[260] = 128
        mem[356] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = 388
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(cd[100])
        mem[324] = cd[132]
        call address(cd[4]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args cd[36], Array(len=('cd', 68).length, data=mem[388 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _83 = mem[224 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[224 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 255 < return_data.size + 224
        _85 = mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]
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
        mem[mem[64] + 32] = cd[36]
        mem[mem[64] + 64] = address(cd[4])
        mem[mem[64] + 96] = 224
        mem[mem[64] + 224] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + 256
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
        _277 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _277] = mem[ceil32(return_data.size) + 256 len 32 * _277]
        mem[mem[64] + 160] = address(cd[100])
        mem[mem[64] + 192] = cd[132]
        emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _277) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
        if 0 >= mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _373 = mem[ceil32(return_data.size) + 256]
        mem[mem[64]] = 26
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor4:
            revert with 'NH{q', 18
        if not _373 / stor4:
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
            if _373 / stor4 and stor3 > -1 / _373 / stor4:
                revert with 'NH{q', 17
            if not _373 / stor4:
                revert with 'NH{q', 18
            if _373 / stor4 * stor3 / _373 / stor4 != stor3:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if _373 / stor4 * stor3 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < _373 / stor4 * stor3:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value - (_373 / stor4 * stor3):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value - (_373 / stor4 * stor3) < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - (_373 / stor4 * stor3) - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - (_373 / stor4 * stor3) - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value / stor4 and stor3 > -1 / msg.value / stor4:
            revert with 'NH{q', 17
        if not msg.value / stor4:
            revert with 'NH{q', 18
        if msg.value / stor4 * stor3 / msg.value / stor4 != stor3:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if msg.value / stor4 * stor3 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor4 * stor3:
            revert with 'NH{q', 17
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor4 * stor3:
            revert with 0, 'C98Swap: Fee not enough'
        mem[224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[228] = cd[36]
        mem[260] = 128
        mem[356] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = 388
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = address(cd[100])
        mem[324] = cd[132]
        call address(cd[4]).swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value / stor4 * stor3) wei
             gas gas_remaining wei
            args cd[36], Array(len=('cd', 68).length, data=mem[388 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _82 = mem[224 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[224 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 255 < return_data.size + 224
        _84 = mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]
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
        mem[mem[64] + 32] = cd[36]
        mem[mem[64] + 64] = address(cd[4])
        mem[mem[64] + 96] = 224
        mem[mem[64] + 224] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + 256
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
        _276 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _276] = mem[ceil32(return_data.size) + 256 len 32 * _276]
        mem[mem[64] + 160] = address(cd[100])
        mem[mem[64] + 192] = cd[132]
        emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _276) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
        if 0 >= mem[ceil32(return_data.size) + 224]:
            revert with 'NH{q', 50
        _372 = mem[ceil32(return_data.size) + 256]
        mem[mem[64]] = 26
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if stor4 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor4:
            revert with 'NH{q', 18
        if not _372 / stor4:
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
            if _372 / stor4 and stor3 > -1 / _372 / stor4:
                revert with 'NH{q', 17
            if not _372 / stor4:
                revert with 'NH{q', 18
            if _372 / stor4 * stor3 / _372 / stor4 != stor3:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 >= mem[ceil32(return_data.size) + 224]:
                revert with 'NH{q', 50
            if _372 / stor4 * stor3 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value < _372 / stor4 * stor3:
                revert with 'NH{q', 17
            if mem[ceil32(return_data.size) + 256] > msg.value - (_372 / stor4 * stor3):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if msg.value - (_372 / stor4 * stor3) < mem[ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            if msg.value - (_372 / stor4 * stor3) - mem[ceil32(return_data.size) + 256] > 0:
                call msg.sender with:
                   value msg.value - (_372 / stor4 * stor3) - mem[ceil32(return_data.size) + 256] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a3a5fd5(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    mem[0] = address(cd[4])
    mem[32] = 2
    require stor2[address(cd[4])]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if stor4 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor4:
        revert with 'NH{q', 18
    if not msg.value / stor4:
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
            mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[292] = 0 / msg.value
            mem[324] = 128
            mem[420] = ('cd', 68).length
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
            mem[356] = address(cd[100])
            mem[388] = cd[132]
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _128 = mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 319 < return_data.size + 288
            _132 = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            require _128 + (32 * _132) + 32 <= return_data.size
            idx = _128 + 320
            s = ceil32(return_data.size) + 320
            while idx < _128 + (32 * _132) + 320:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64]] = msg.value
            mem[mem[64] + 32] = cd[36]
            mem[mem[64] + 64] = address(cd[4])
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 256
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
            _180 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _180] = mem[ceil32(return_data.size) + 320 len 32 * _180]
            emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _180) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
        else:
            if msg.value and cd[36] > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * cd[36] / msg.value != cd[36]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[292] = msg.value * cd[36] / msg.value
            mem[324] = 128
            mem[420] = ('cd', 68).length
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
            mem[356] = address(cd[100])
            mem[388] = cd[132]
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args msg.value * cd[36] / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _127 = mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 319 < return_data.size + 288
            _131 = mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, msg.value * cd[36] / msg.value) >> 32 + 288]
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
            mem[mem[64] + 32] = cd[36]
            mem[mem[64] + 64] = address(cd[4])
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 256
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
            _179 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _179] = mem[ceil32(return_data.size) + 320 len 32 * _179]
            emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _179) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
    else:
        if msg.value / stor4 and stor3 > -1 / msg.value / stor4:
            revert with 'NH{q', 17
        if not msg.value / stor4:
            revert with 'NH{q', 18
        if msg.value / stor4 * stor3 / msg.value / stor4 != stor3:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value <= 0:
            revert with 0, 'C98Swap: Fee not enough'
        if msg.value <= msg.value / stor4 * stor3:
            revert with 0, 'C98Swap: Fee not enough'
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if msg.value / stor4 * stor3 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if msg.value < msg.value / stor4 * stor3:
            revert with 'NH{q', 17
        if not msg.value - (msg.value / stor4 * stor3):
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[292] = 0 / msg.value
            mem[324] = 128
            mem[420] = ('cd', 68).length
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
            mem[356] = address(cd[100])
            mem[388] = cd[132]
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor4 * stor3) wei
                 gas gas_remaining wei
                args 0 / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _126 = mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 319 < return_data.size + 288
            _130 = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, 0 / msg.value) >> 32 + 288]
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
            mem[mem[64] + 32] = cd[36]
            mem[mem[64] + 64] = address(cd[4])
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 256
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
            _178 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _178] = mem[ceil32(return_data.size) + 320 len 32 * _178]
            emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _178) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
        else:
            if msg.value - (msg.value / stor4 * stor3) and cd[36] > -1 / msg.value - (msg.value / stor4 * stor3):
                revert with 'NH{q', 17
            if not msg.value - (msg.value / stor4 * stor3):
                revert with 'NH{q', 18
            if (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value - (msg.value / stor4 * stor3) != cd[36]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if msg.value <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.value:
                revert with 'NH{q', 18
            mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[292] = (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value
            mem[324] = 128
            mem[420] = ('cd', 68).length
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
            mem[356] = address(cd[100])
            mem[388] = cd[132]
            call address(cd[4]).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value / stor4 * stor3) wei
                 gas gas_remaining wei
                args (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value, Array(len=('cd', 68).length, data=mem[452 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _125 = mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32
            require mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 319 < return_data.size + 288
            _129 = mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, (msg.value * cd[36]) - (msg.value / stor4 * stor3 * cd[36]) / msg.value) >> 32 + 288]
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
            mem[mem[64] + 32] = cd[36]
            mem[mem[64] + 64] = address(cd[4])
            mem[mem[64] + 96] = 224
            mem[mem[64] + 224] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = mem[64] + 256
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * ('cd', 68).length) + 256
            _177 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 256] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + (32 * ('cd', 68).length) + 288 len 32 * _177] = mem[ceil32(return_data.size) + 320 len 32 * _177]
            emit 0xf604614f: msg.value, cd[36], address(cd[4]), Array(len=('cd', 68).length, data=mem[mem[64] + 256 len (32 * ('cd', 68).length) + (32 * _177) + 32]), (32 * ('cd', 68).length) + 256, address(cd[100]), cd[132]
}



}
