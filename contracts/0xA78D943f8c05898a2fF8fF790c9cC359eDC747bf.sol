contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 _decimals;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _fee;
array of struct stor10;
array of struct stor11;
uint256 stor12;
uint8 stor13;

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function owner() payable {
    return owner
}

function _fee() payable {
    return _fee
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function symbol() payable {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'IERC20: transfer to the zero address'
    staticcall stor1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall stor1.0x73b295c2 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 != ext_call.return_data[12 len 20]:
        staticcall stor1.factory() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall stor1.0x73b295c2 with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 100] = this.address
        mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 != ext_call.return_data[12 len 20]:
            if stor5[address(arg1)]:
                if stor12 >= arg3:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(msg.sender)]:
                        if arg2 != arg1:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[address(this.address)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3
                            if not this.address:
                                revert with 0, 'IERC20: approve from the zero address'
                            if not stor1:
                                revert with 0, 'IERC20: approve to the zero address'
                            allowance[address(this.address)][stor1] = arg3
                            emit Approval(arg3, this.address, stor1);
                            mem[(8 * ceil32(return_data.size)) + 128] = this.address
                            staticcall stor1.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            stor13 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 196] = arg3
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 0
                    else:
                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 180
                                t = (10 * ceil32(return_data.size)) + 440
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
            else:
                if stor5[address(arg2)]:
                    if stor12 >= arg3:
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(msg.sender)]:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 128
                                t = (10 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                else:
                    if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if stor12 >= arg3:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(msg.sender)]:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 232
                                        t = (10 * ceil32(return_data.size)) + 492
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                    else:
                        if arg2 == this.address:
                            if stor12 >= arg3:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 232
                                            t = (10 * ceil32(return_data.size)) + 492
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                        else:
                            if arg1 == address(ext_call.return_data[0]):
                                if stor12 >= arg3:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(msg.sender)]:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 180
                                            t = (10 * ceil32(return_data.size)) + 440
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                                    else:
                                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 232
                                                t = (10 * ceil32(return_data.size)) + 492
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                            else:
                                if stor13:
                                    if stor12 >= arg3:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                else:
                                    if arg3 and _fee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor12 >= arg3:
                                        if arg3 < arg3 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _fee / 100
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                        if arg3 * _fee / 100 > 0:
                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
        else:
            if stor5[address(arg1)]:
                if stor12 >= arg3:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(msg.sender)]:
                        if arg2 != arg1:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[address(this.address)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3
                            if not this.address:
                                revert with 0, 'IERC20: approve from the zero address'
                            if not stor1:
                                revert with 0, 'IERC20: approve to the zero address'
                            allowance[address(this.address)][stor1] = arg3
                            emit Approval(arg3, this.address, stor1);
                            mem[(8 * ceil32(return_data.size)) + 128] = this.address
                            staticcall stor1.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            stor13 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 196] = arg3
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 128
                            t = (10 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 0
                    else:
                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 180
                                t = (10 * ceil32(return_data.size)) + 440
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
            else:
                if stor5[address(arg2)]:
                    if stor12 >= arg3:
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(msg.sender)]:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 128
                                t = (10 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                else:
                    if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if stor12 >= arg3:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(msg.sender)]:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 232
                                        t = (10 * ceil32(return_data.size)) + 492
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                    else:
                        if arg2 == this.address:
                            if stor12 >= arg3:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 232
                                            t = (10 * ceil32(return_data.size)) + 492
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                        else:
                            if stor5[address(arg2)]:
                                if stor12 >= arg3:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(msg.sender)]:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 180
                                            t = (10 * ceil32(return_data.size)) + 440
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                                    else:
                                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 232
                                                t = (10 * ceil32(return_data.size)) + 492
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                            else:
                                if stor13:
                                    if stor12 >= arg3:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                else:
                                    if arg3 and _fee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor12 >= arg3:
                                        if arg3 < arg3 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _fee / 100
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                        if arg3 * _fee / 100 > 0:
                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
    else:
        if stor5[address(arg1)]:
            if stor5[address(arg1)]:
                if stor12 >= arg3:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if balanceOf[0] > -1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(msg.sender)]:
                        if arg2 != arg1:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if balanceOf[address(this.address)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3
                            if not this.address:
                                revert with 0, 'IERC20: approve from the zero address'
                            if not stor1:
                                revert with 0, 'IERC20: approve to the zero address'
                            allowance[address(this.address)][stor1] = arg3
                            emit Approval(arg3, this.address, stor1);
                            mem[(4 * ceil32(return_data.size)) + 128] = this.address
                            staticcall stor1.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            stor13 = 1
                            if block.timestamp > -21:
                                revert with 'NH{q', 17
                            mem[(6 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(6 * ceil32(return_data.size)) + 196] = arg3
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = (6 * ceil32(return_data.size)) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor1)
                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor13 = 0
                    else:
                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 180
                                t = (6 * ceil32(return_data.size)) + 440
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
            else:
                if stor5[address(arg2)]:
                    if stor12 >= arg3:
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(msg.sender)]:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(4 * ceil32(return_data.size)) + 128] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(6 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 128
                                t = (6 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 180
                                    t = (6 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                else:
                    if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                        if stor12 >= arg3:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(msg.sender)]:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 180
                                    t = (6 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(4 * ceil32(return_data.size)) + 232] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(6 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 300] = arg3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 232
                                        t = (6 * ceil32(return_data.size)) + 492
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 492 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                    else:
                        if arg2 == this.address:
                            if stor12 >= arg3:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 180
                                        t = (6 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(4 * ceil32(return_data.size)) + 232] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(6 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 300] = arg3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 232
                                            t = (6 * ceil32(return_data.size)) + 492
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 492 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                        else:
                            if stor5[address(arg1)]:
                                if stor12 >= arg3:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(msg.sender)]:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 180
                                            t = (6 * ceil32(return_data.size)) + 440
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                                    else:
                                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(4 * ceil32(return_data.size)) + 232] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(6 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 300] = arg3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 232
                                                t = (6 * ceil32(return_data.size)) + 492
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 492 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                            else:
                                if stor13:
                                    if stor12 >= arg3:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 180
                                                t = (6 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(4 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(6 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(6 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (4 * ceil32(return_data.size)) + 232
                                                    t = (6 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                else:
                                    if arg3 and _fee > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if stor12 >= arg3:
                                        if arg3 < arg3 * _fee / 100:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[0] += arg3 * _fee / 100
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                        if arg3 * _fee / 100 > 0:
                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(4 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(4 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(4 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(6 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(6 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 180
                                                t = (6 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < arg3 * _fee / 100:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[0] += arg3 * _fee / 100
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                if arg3 * _fee / 100 > 0:
                                                    emit Transfer((arg3 * _fee / 100), arg1, 0);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(4 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(6 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(6 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (4 * ceil32(return_data.size)) + 232
                                                    t = (6 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(6 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
        else:
            staticcall stor1.factory() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall stor1.0x73b295c2 with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg1 != ext_call.return_data[12 len 20]:
                if stor5[address(arg1)]:
                    if stor12 >= arg3:
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(msg.sender)]:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 128
                                t = (10 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                else:
                    if stor5[address(arg2)]:
                        if stor12 >= arg3:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(msg.sender)]:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 128
                                    t = (10 * ceil32(return_data.size)) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                    else:
                        if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if stor12 >= arg3:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 232
                                            t = (10 * ceil32(return_data.size)) + 492
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                        else:
                            if arg2 == this.address:
                                if stor12 >= arg3:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(msg.sender)]:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 180
                                            t = (10 * ceil32(return_data.size)) + 440
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                                    else:
                                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 232
                                                t = (10 * ceil32(return_data.size)) + 492
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                            else:
                                if arg1 == address(ext_call.return_data[0]):
                                    if stor12 >= arg3:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                else:
                                    if stor13:
                                        if stor12 >= arg3:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor5[address(msg.sender)]:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 180
                                                    t = (10 * ceil32(return_data.size)) + 440
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                            else:
                                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg2 != arg1:
                                                        if arg3 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg3
                                                        if not this.address:
                                                            revert with 0, 'IERC20: approve from the zero address'
                                                        if not stor1:
                                                            revert with 0, 'IERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor1] = arg3
                                                        emit Approval(arg3, this.address, stor1);
                                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                        staticcall stor1.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                        stor13 = 1
                                                        if block.timestamp > -21:
                                                            revert with 'NH{q', 17
                                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                        idx = 0
                                                        s = (8 * ceil32(return_data.size)) + 232
                                                        t = (10 * ceil32(return_data.size)) + 492
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor1)
                                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor13 = 0
                                    else:
                                        if arg3 and _fee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor12 >= arg3:
                                            if arg3 < arg3 * _fee / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[0] += arg3 * _fee / 100
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                            emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                            if arg3 * _fee / 100 > 0:
                                                emit Transfer((arg3 * _fee / 100), arg1, 0);
                                        else:
                                            if stor5[address(msg.sender)]:
                                                if arg2 != arg1:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 180
                                                    t = (10 * ceil32(return_data.size)) + 440
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                            else:
                                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if arg2 != arg1:
                                                        if arg3 < arg3 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg3 * _fee / 100
                                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                        if arg3 * _fee / 100 > 0:
                                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                    else:
                                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg3
                                                        if not this.address:
                                                            revert with 0, 'IERC20: approve from the zero address'
                                                        if not stor1:
                                                            revert with 0, 'IERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor1] = arg3
                                                        emit Approval(arg3, this.address, stor1);
                                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                        staticcall stor1.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                        stor13 = 1
                                                        if block.timestamp > -21:
                                                            revert with 'NH{q', 17
                                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                        idx = 0
                                                        s = (8 * ceil32(return_data.size)) + 232
                                                        t = (10 * ceil32(return_data.size)) + 492
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor1)
                                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor13 = 0
            else:
                if stor5[address(arg1)]:
                    if stor12 >= arg3:
                        if arg3 < 0:
                            revert with 'NH{q', 17
                        if balanceOf[0] > -1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(msg.sender)]:
                            if arg2 != arg1:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if balanceOf[address(this.address)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3
                                if not this.address:
                                    revert with 0, 'IERC20: approve from the zero address'
                                if not stor1:
                                    revert with 0, 'IERC20: approve to the zero address'
                                allowance[address(this.address)][stor1] = arg3
                                emit Approval(arg3, this.address, stor1);
                                mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                staticcall stor1.0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                stor13 = 1
                                if block.timestamp > -21:
                                    revert with 'NH{q', 17
                                mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 128
                                t = (10 * ceil32(return_data.size)) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor1)
                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor13 = 0
                        else:
                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 180
                                    t = (10 * ceil32(return_data.size)) + 440
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                else:
                    if stor5[address(arg2)]:
                        if stor12 >= arg3:
                            if arg3 < 0:
                                revert with 'NH{q', 17
                            if balanceOf[0] > -1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(msg.sender)]:
                                if arg2 != arg1:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3
                                    if not this.address:
                                        revert with 0, 'IERC20: approve from the zero address'
                                    if not stor1:
                                        revert with 0, 'IERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1] = arg3
                                    emit Approval(arg3, this.address, stor1);
                                    mem[(8 * ceil32(return_data.size)) + 128] = this.address
                                    staticcall stor1.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                    stor13 = 1
                                    if block.timestamp > -21:
                                        revert with 'NH{q', 17
                                    mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 196] = arg3
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 128
                                    t = (10 * ceil32(return_data.size)) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor1)
                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor13 = 0
                            else:
                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                    else:
                        if sha3(arg2) == 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                            if stor12 >= arg3:
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if balanceOf[0] > -1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(msg.sender)]:
                                    if arg2 != arg1:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3
                                        if not this.address:
                                            revert with 0, 'IERC20: approve from the zero address'
                                        if not stor1:
                                            revert with 0, 'IERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1] = arg3
                                        emit Approval(arg3, this.address, stor1);
                                        mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                        staticcall stor1.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                        stor13 = 1
                                        if block.timestamp > -21:
                                            revert with 'NH{q', 17
                                        mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                        idx = 0
                                        s = (8 * ceil32(return_data.size)) + 180
                                        t = (10 * ceil32(return_data.size)) + 440
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor1)
                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor13 = 0
                                else:
                                    if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 232
                                            t = (10 * ceil32(return_data.size)) + 492
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                        else:
                            if arg2 == this.address:
                                if stor12 >= arg3:
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[0] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(msg.sender)]:
                                        if arg2 != arg1:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if balanceOf[address(this.address)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3
                                            if not this.address:
                                                revert with 0, 'IERC20: approve from the zero address'
                                            if not stor1:
                                                revert with 0, 'IERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1] = arg3
                                            emit Approval(arg3, this.address, stor1);
                                            mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                            staticcall stor1.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                            stor13 = 1
                                            if block.timestamp > -21:
                                                revert with 'NH{q', 17
                                            mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                            idx = 0
                                            s = (8 * ceil32(return_data.size)) + 180
                                            t = (10 * ceil32(return_data.size)) + 440
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor13 = 0
                                    else:
                                        if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 232
                                                t = (10 * ceil32(return_data.size)) + 492
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                            else:
                                if stor5[address(arg2)]:
                                    if stor12 >= arg3:
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if balanceOf[0] > -1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor5[address(msg.sender)]:
                                            if arg2 != arg1:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if balanceOf[address(this.address)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3
                                                if not this.address:
                                                    revert with 0, 'IERC20: approve from the zero address'
                                                if not stor1:
                                                    revert with 0, 'IERC20: approve to the zero address'
                                                allowance[address(this.address)][stor1] = arg3
                                                emit Approval(arg3, this.address, stor1);
                                                mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                staticcall stor1.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                stor13 = 1
                                                if block.timestamp > -21:
                                                    revert with 'NH{q', 17
                                                mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                idx = 0
                                                s = (8 * ceil32(return_data.size)) + 180
                                                t = (10 * ceil32(return_data.size)) + 440
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor1)
                                                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor13 = 0
                                        else:
                                            if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if balanceOf[0] > -1:
                                                    revert with 'NH{q', 17
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 232
                                                    t = (10 * ceil32(return_data.size)) + 492
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                else:
                                    if stor13:
                                        if stor12 >= arg3:
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -1:
                                                revert with 'NH{q', 17
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor5[address(msg.sender)]:
                                                if arg2 != arg1:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 180
                                                    t = (10 * ceil32(return_data.size)) + 440
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                            else:
                                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -1:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg2 != arg1:
                                                        if arg3 < 0:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -1:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                    else:
                                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg3
                                                        if not this.address:
                                                            revert with 0, 'IERC20: approve from the zero address'
                                                        if not stor1:
                                                            revert with 0, 'IERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor1] = arg3
                                                        emit Approval(arg3, this.address, stor1);
                                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                        staticcall stor1.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                        stor13 = 1
                                                        if block.timestamp > -21:
                                                            revert with 'NH{q', 17
                                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                        idx = 0
                                                        s = (8 * ceil32(return_data.size)) + 232
                                                        t = (10 * ceil32(return_data.size)) + 492
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor1)
                                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor13 = 0
                                    else:
                                        if arg3 and _fee > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if stor12 >= arg3:
                                            if arg3 < arg3 * _fee / 100:
                                                revert with 'NH{q', 17
                                            if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[0] += arg3 * _fee / 100
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                            emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                            if arg3 * _fee / 100 > 0:
                                                emit Transfer((arg3 * _fee / 100), arg1, 0);
                                        else:
                                            if stor5[address(msg.sender)]:
                                                if arg2 != arg1:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if balanceOf[address(this.address)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3
                                                    if not this.address:
                                                        revert with 0, 'IERC20: approve from the zero address'
                                                    if not stor1:
                                                        revert with 0, 'IERC20: approve to the zero address'
                                                    allowance[address(this.address)][stor1] = arg3
                                                    emit Approval(arg3, this.address, stor1);
                                                    mem[(8 * ceil32(return_data.size)) + 180] = this.address
                                                    staticcall stor1.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[(8 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[(8 * ceil32(return_data.size)) + 212] = ext_call.return_data[12 len 20]
                                                    stor13 = 1
                                                    if block.timestamp > -21:
                                                        revert with 'NH{q', 17
                                                    mem[(10 * ceil32(return_data.size)) + 244] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[(10 * ceil32(return_data.size)) + 248] = arg3
                                                    idx = 0
                                                    s = (8 * ceil32(return_data.size)) + 180
                                                    t = (10 * ceil32(return_data.size)) + 440
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 440 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor13 = 0
                                            else:
                                                if sha3(arg2) != 0x4342ccd4d128d764dd8019fa67e2a1577991c665a74d1acfdc2ccdcae89bd2ba:
                                                    if arg3 < arg3 * _fee / 100:
                                                        revert with 'NH{q', 17
                                                    if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[0] += arg3 * _fee / 100
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                    emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                    if arg3 * _fee / 100 > 0:
                                                        emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                else:
                                                    if arg2 != arg1:
                                                        if arg3 < arg3 * _fee / 100:
                                                            revert with 'NH{q', 17
                                                        if balanceOf[0] > -(arg3 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[0] += arg3 * _fee / 100
                                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * _fee / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _fee / 100)
                                                        emit Transfer((arg3 - (arg3 * _fee / 100)), arg1, arg2);
                                                        if arg3 * _fee / 100 > 0:
                                                            emit Transfer((arg3 * _fee / 100), arg1, 0);
                                                    else:
                                                        if balanceOf[address(this.address)] > -arg3 - 1:
                                                            revert with 'NH{q', 17
                                                        balanceOf[address(this.address)] += arg3
                                                        if not this.address:
                                                            revert with 0, 'IERC20: approve from the zero address'
                                                        if not stor1:
                                                            revert with 0, 'IERC20: approve to the zero address'
                                                        allowance[address(this.address)][stor1] = arg3
                                                        emit Approval(arg3, this.address, stor1);
                                                        mem[(8 * ceil32(return_data.size)) + 232] = this.address
                                                        staticcall stor1.0x73b295c2 with:
                                                                gas gas_remaining wei
                                                        mem[(8 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(8 * ceil32(return_data.size)) + 264] = ext_call.return_data[12 len 20]
                                                        stor13 = 1
                                                        if block.timestamp > -21:
                                                            revert with 'NH{q', 17
                                                        mem[(10 * ceil32(return_data.size)) + 296] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                        mem[(10 * ceil32(return_data.size)) + 300] = arg3
                                                        idx = 0
                                                        s = (8 * ceil32(return_data.size)) + 232
                                                        t = (10 * ceil32(return_data.size)) + 492
                                                        while idx < 2:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor1)
                                                        call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args arg3, 0, 160, address(arg2), block.timestamp + 20, 2, mem[(10 * ceil32(return_data.size)) + 492 len 64]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor13 = 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'IERC20: transfer amount exceeds allowance'
    return 1
}



}
