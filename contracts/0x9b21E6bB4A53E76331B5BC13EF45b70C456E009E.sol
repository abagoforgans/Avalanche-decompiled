contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
mapping of uint256 sub_77b7dc5f;
mapping of uint256 sub_60a6e624;
mapping of uint256 sub_f9f5cc73;
mapping of uint8 stor8;

function sub_2478239a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function sub_60a6e624(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_60a6e624[arg1]
}

function sub_77b7dc5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_77b7dc5f[arg1]
}

function owner() payable {
    return owner
}

function sub_f9f5cc73(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f9f5cc73[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_65d097a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function _approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function depositDAI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor2, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor2, msg.sender);
    if sub_77b7dc5f[msg.sender] > !arg1:
        revert with 0, 17
    sub_77b7dc5f[msg.sender] += arg1
}

function depositUSDT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor3, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor3, msg.sender);
    if sub_60a6e624[msg.sender] > !arg1:
        revert with 0, 17
    sub_60a6e624[msg.sender] += arg1
}

function depositUSDC(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    call stor4.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens'
    require ext_code.size(stor1)
    call stor1.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args stor4, arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, stor4, msg.sender);
    if sub_f9f5cc73[msg.sender] > !arg1:
        revert with 0, 17
    sub_f9f5cc73[msg.sender] += arg1
}

function sub_ca69282f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg1 > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if arg1 * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((arg1 * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_93362eee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_77b7dc5f[address(arg1)]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_77b7dc5f[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_77b7dc5f[address(arg1)] and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(arg1)]:
        revert with 0, 17
    if sub_77b7dc5f[address(arg1)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_77b7dc5f[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_a330530a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_60a6e624[address(arg1)]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_60a6e624[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_60a6e624[address(arg1)] and ext_call.return_data[0] > -1 / sub_60a6e624[address(arg1)]:
        revert with 0, 17
    if sub_60a6e624[address(arg1)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_60a6e624[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function sub_eb47ea66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_f9f5cc73[address(arg1)]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_f9f5cc73[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
        revert with 0, '', 0
    if sub_f9f5cc73[address(arg1)] and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(arg1)]:
        revert with 0, 17
    if sub_f9f5cc73[address(arg1)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
        revert with 0, 17
    return ((sub_f9f5cc73[address(arg1)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function withdrawDAI(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor8[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_77b7dc5f[msg.sender]:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_77b7dc5f[address(msg.sender)]:
        sub_77b7dc5f[msg.sender] = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor2, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
            revert with 0, 17
        if ext_call.return_data[0] * arg2 / 100:
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor2, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_77b7dc5f[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor2, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
                revert with 0, 17
            if ext_call.return_data[0] * arg2 / 100:
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor2, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_77b7dc5f[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_77b7dc5f[address(msg.sender)] and ext_call.return_data[0] > -1 / sub_77b7dc5f[address(msg.sender)]:
                revert with 0, 17
            if sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_77b7dc5f[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor2, (sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) and arg2 > -1 / ext_call.return_data[0] - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18):
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100):
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor2, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - ((sub_77b7dc5f[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100, msg.sender);
}

function withdrawUSDT(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor8[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_60a6e624[msg.sender]:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_60a6e624[address(msg.sender)]:
        sub_60a6e624[msg.sender] = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor3, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
            revert with 0, 17
        if ext_call.return_data[0] * arg2 / 100:
            call stor3.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
            call stor3.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor3, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_60a6e624[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor3, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
                revert with 0, 17
            if ext_call.return_data[0] * arg2 / 100:
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor3, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_60a6e624[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_60a6e624[address(msg.sender)] and ext_call.return_data[0] > -1 / sub_60a6e624[address(msg.sender)]:
                revert with 0, 17
            if sub_60a6e624[address(msg.sender)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_60a6e624[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor3, (sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) and arg2 > -1 / ext_call.return_data[0] - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18):
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100):
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor3, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - ((sub_60a6e624[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100, msg.sender);
}

function withdrawUSDC(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor8[address(arg1)]:
        revert with 0, 'Invalid charity'
    if arg2 >= 100:
        revert with 0, 'Invalid percentage'
    if not sub_f9f5cc73[msg.sender]:
        revert with 0, 'Nothing to withdraw'
    staticcall stor1.getReserveNormalizedIncome(address arg1) with:
            gas gas_remaining wei
           args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_f9f5cc73[address(msg.sender)]:
        sub_f9f5cc73[msg.sender] = 0
        call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args stor4, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
            revert with 0, 17
        if ext_call.return_data[0] * arg2 / 100:
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0] * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
            call stor4.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Could not transfer tokens'
        emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
    else:
        if not ext_call.return_data[0]:
            sub_f9f5cc73[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor4, 0, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0] * arg2 / 100:
                revert with 0, 17
            if ext_call.return_data[0] * arg2 / 100:
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0] * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100):
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal(0, stor4, address(arg1), arg2, ext_call.return_data[0], ext_call.return_data[0] * arg2 / 100, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_f9f5cc73[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff / ext_call.return_data[0]:
                revert with 0, '', 0
            if sub_f9f5cc73[address(msg.sender)] and ext_call.return_data[0] > -1 / sub_f9f5cc73[address(msg.sender)]:
                revert with 0, 17
            if sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0] > 0xfffffffffffffffffffffffffffffffffffffffffe6268e1b017bfe18bffffff:
                revert with 0, 17
            sub_f9f5cc73[msg.sender] = 0
            call stor1.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor4, (sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 17
            if ext_call.return_data[0] - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) and arg2 > -1 / ext_call.return_data[0] - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18):
                revert with 0, 17
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                revert with 0, 17
            if (ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100:
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            if ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100):
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] - ((ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens'
            emit Withdrawal((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18, stor4, address(arg1), arg2, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - ((sub_f9f5cc73[address(msg.sender)] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg2) / 100, msg.sender);
}



}
