contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address mcAddress;
uint256 pid;
uint8 stor4; offset 160
uint128 stor4; offset 160
address tokenAddress;
uint256 stor5;
address feeAddress;
mapping of struct users;

function feeAddress() payable {
    return feeAddress
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256
}

function mc() payable {
    return mcAddress
}

function pid() payable {
    return pid
}

function token() payable {
    return tokenAddress
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

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 < users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if stor5 - users[address(arg1)].field_256 and users[address(arg1)].field_0 > -1 / stor5 - users[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((stor5 * users[address(arg1)].field_0) - (users[address(arg1)].field_256 * users[address(arg1)].field_0) / 10^18)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor4.field_160):
        revert with 0, 'already paused'
    Mask(96, 0, stor4.field_160) = 1
    require ext_code.size(mcAddress)
    call mcAddress.0x5312ea8e with:
         gas gas_remaining wei
        args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 < users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if stor5 - users[address(arg1)].field_256 and users[address(arg1)].field_0 > -1 / stor5 - users[address(arg1)].field_256:
        revert with 'NH{q', 17
    if users[address(arg1)].field_0 > -((stor5 * users[address(arg1)].field_0) - (users[address(arg1)].field_256 * users[address(arg1)].field_0) / 10^18) - 1:
        revert with 'NH{q', 17
    return (users[address(arg1)].field_0 + ((stor5 * users[address(arg1)].field_0) - (users[address(arg1)].field_256 * users[address(arg1)].field_0) / 10^18))
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor4.field_160):
        revert with 0, 'not paused'
    Mask(96, 0, stor4.field_160) = 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(mcAddress)
    call mcAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function emergencyWithdraw() payable {
    if not uint8(stor4.field_160):
        revert with 0, 'not paused'
    users[address(msg.sender)].field_0 = 0
    users[address(msg.sender)].field_256 = stor5
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    if users[address(msg.sender)].field_0 <= ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, users[address(msg.sender)].field_0
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'safeTokenTransfer: transfer failed'
}

function compound() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(mcAddress)
    call mcAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 980 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(mcAddress)
    staticcall mcAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] < 980 * ext_call.return_data[0] / 1000:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000) <= ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args feeAddress, ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000)
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args feeAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'safeTokenTransfer: transfer failed'
    if 980 * ext_call.return_data[0] / 1000 and 10^18 > -1 / 980 * ext_call.return_data[0] / 1000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if stor5 > -(10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    stor5 += 10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor4.field_160):
        revert with 0, 'Paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor5 < users[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if stor5 - users[address(msg.sender)].field_256 and users[address(msg.sender)].field_0 > -1 / stor5 - users[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    if arg1 > 0:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(mcAddress)
    call mcAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 980 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(mcAddress)
    staticcall mcAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[0] < 980 * ext_call.return_data[0] / 1000:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000) <= ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args feeAddress, ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000)
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args feeAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'safeTokenTransfer: transfer failed'
    if 980 * ext_call.return_data[0] / 1000 and 10^18 > -1 / 980 * ext_call.return_data[0] / 1000:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if stor5 > -(10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    stor5 += 10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]
    if users[address(msg.sender)].field_0 > -((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18) - 1:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_0 + ((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18) > -arg1 - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_0 = users[address(msg.sender)].field_0 + ((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18) + arg1
    users[address(msg.sender)].field_256 = stor5
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor4.field_160):
        revert with 0, 'Paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > users[address(msg.sender)].field_0:
        revert with 0, 'withdraw: nope'
    if arg1 > 0:
        require ext_code.size(mcAddress)
        staticcall mcAddress.pendingToken(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(mcAddress)
        call mcAddress.0x441a3e70 with:
             gas gas_remaining wei
            args pid, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] and 980 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(mcAddress)
        staticcall mcAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ext_call.return_data[0] < 980 * ext_call.return_data[0] / 1000:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        if ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000) <= ext_call.return_data[0]:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeAddress, ext_call.return_data[0] - (980 * ext_call.return_data[0] / 1000)
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'safeTokenTransfer: transfer failed'
        if 980 * ext_call.return_data[0] / 1000 and 10^18 > -1 / 980 * ext_call.return_data[0] / 1000:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor5 > -(10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        stor5 += 10^18 * 980 * ext_call.return_data[0] / 1000 / ext_call.return_data[0]
        if stor5 < users[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if stor5 - users[address(msg.sender)].field_256 and users[address(msg.sender)].field_0 > -1 / stor5 - users[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if arg1 <= (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18:
            if users[address(msg.sender)].field_0 < 0:
                revert with 'NH{q', 17
            users[address(msg.sender)].field_256 = stor5
            if (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18 > -1:
                revert with 'NH{q', 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            if (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if arg1 < (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18:
                revert with 'NH{q', 17
            if users[address(msg.sender)].field_0 < arg1 - ((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18):
                revert with 'NH{q', 17
            users[address(msg.sender)].field_0 = users[address(msg.sender)].field_0 - arg1 + ((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18)
            users[address(msg.sender)].field_256 = stor5
            if (stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18 > -arg1 + ((stor5 * users[address(msg.sender)].field_0) - (users[address(msg.sender)].field_256 * users[address(msg.sender)].field_0) / 10^18) - 1:
                revert with 'NH{q', 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            if arg1 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'safeTokenTransfer: transfer failed'
    stor1 = 1
}



}
