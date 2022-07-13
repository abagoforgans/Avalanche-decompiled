contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e298ea2(?)
#
const sub_44c4aea9(?) = 'ER20PoolReward', 0


uint8 stor0; offset 160
address owner;
address stakingContractAddress;
address tokenAddress;
uint256 totalAmount;
uint256 startDate;
uint256 endDate;
mapping of struct stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function startDate() payable {
    return startDate
}

function totalAmount() payable {
    return totalAmount
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function endDate() payable {
    return endDate
}

function stakingContract() payable {
    return stakingContractAddress
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0x7e298ea200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function rescueFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function distribute(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalAmount:
        revert with 0, 'Only once'
    if arg2 <= 0:
        revert with 0, 'Invalid amount'
    if arg4 <= arg3:
        revert with 0, 'End < Start'
    if block.timestamp > arg3:
        revert with 0, 'Now > Start'
    tokenAddress = arg1
    totalAmount = arg2
    startDate = arg3
    endDate = arg4
    if arg4 < arg3:
        revert with 'NH{q', 17
    if totalAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not arg4 - arg3:
        revert with 'NH{q', 18
    stor9 = 10^18 * totalAmount / arg4 - arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Distribute(address(arg1), arg2, arg3, arg4);
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0xf4396e2a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < startDate:
        if 0 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if -stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if -stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (-stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    if not startDate:
        if 0 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if -stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if -stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (-stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    if block.timestamp > endDate:
        if 0 == stor8:
            if startDate >= endDate:
                if stor7 and ext_call.return_data[0] > -1 / stor7:
                    revert with 'NH{q', 17
                if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                    revert with 'NH{q', 17
                if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                    revert with 'NH{q', 17
                return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.0x96c82e57 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if stor7 and ext_call.return_data[0] > -1 / stor7:
                    revert with 'NH{q', 17
                if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                    revert with 'NH{q', 17
                if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                    revert with 'NH{q', 17
                return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
            if endDate < startDate:
                revert with 'NH{q', 17
            if stor9 and endDate - startDate > -1 / stor9:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if stor7 > !((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if stor7 + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(arg1)].field_0:
                revert with 'NH{q', 17
            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                revert with 'NH{q', 17
            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                revert with 'NH{q', 17
            return (((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
        if stor8 >= endDate:
            if stor7 and ext_call.return_data[0] > -1 / stor7:
                revert with 'NH{q', 17
            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.0x96c82e57 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor7 and ext_call.return_data[0] > -1 / stor7:
                revert with 'NH{q', 17
            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
        if endDate < stor8:
            revert with 'NH{q', 17
        if stor9 and endDate - stor8 > -1 / stor9:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor7 > !((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if stor7 + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    if 0 == stor8:
        if startDate >= block.timestamp:
            if stor7 and ext_call.return_data[0] > -1 / stor7:
                revert with 'NH{q', 17
            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.0x96c82e57 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if stor7 and ext_call.return_data[0] > -1 / stor7:
                revert with 'NH{q', 17
            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
                revert with 'NH{q', 17
            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
                revert with 'NH{q', 17
            return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
        if block.timestamp < startDate:
            revert with 'NH{q', 17
        if stor9 and block.timestamp - startDate > -1 / stor9:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if stor7 > !((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if stor7 + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    if stor8 >= block.timestamp:
        if stor7 and ext_call.return_data[0] > -1 / stor7:
            revert with 'NH{q', 17
        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x96c82e57 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor7 and ext_call.return_data[0] > -1 / stor7:
            revert with 'NH{q', 17
        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
            revert with 'NH{q', 17
        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
    if block.timestamp < stor8:
        revert with 'NH{q', 17
    if stor9 and block.timestamp - stor8 > -1 / stor9:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if stor7 > !((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if stor7 + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(arg1)].field_0:
        revert with 'NH{q', 17
    if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 > !stor6[address(arg1)].field_256:
        revert with 'NH{q', 17
    if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 < stor6[address(arg1)].field_512:
        revert with 'NH{q', 17
    return (((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(arg1)].field_0 + stor6[address(arg1)].field_256 - stor6[address(arg1)].field_512)
}

function claim() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0xf4396e2a with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < startDate:
        if 0 < stor6[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if -stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor6[msg.sender].field_512 > !(-stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                revert with 'NH{q', 17
            stor6[msg.sender].field_512 = stor6[msg.sender].field_512 - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
        emit Claimed(msg.sender, -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
    else:
        if not startDate:
            if 0 < stor6[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if -stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if stor6[msg.sender].field_512 > !(-stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                    revert with 'NH{q', 17
                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
            emit Claimed(msg.sender, -stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
        else:
            if block.timestamp > endDate:
                if 0 == stor8:
                    if startDate >= endDate:
                        if stor7 and ext_call.return_data[0] > -1 / stor7:
                            revert with 'NH{q', 17
                        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                revert with 'NH{q', 17
                            stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                        emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                    else:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.0x96c82e57 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor7 and ext_call.return_data[0] > -1 / stor7:
                                revert with 'NH{q', 17
                            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                        else:
                            if endDate < startDate:
                                revert with 'NH{q', 17
                            if stor9 and endDate - startDate > -1 / stor9:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor7 > !((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if stor7 + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !(((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                else:
                    if stor8 >= endDate:
                        if stor7 and ext_call.return_data[0] > -1 / stor7:
                            revert with 'NH{q', 17
                        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                revert with 'NH{q', 17
                            stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                        emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                    else:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.0x96c82e57 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor7 and ext_call.return_data[0] > -1 / stor7:
                                revert with 'NH{q', 17
                            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                        else:
                            if endDate < stor8:
                                revert with 'NH{q', 17
                            if stor9 and endDate - stor8 > -1 / stor9:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor7 > !((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if stor7 + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !(((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, ((stor7 * ext_call.return_data[0]) + ((endDate * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
            else:
                if 0 == stor8:
                    if startDate >= block.timestamp:
                        if stor7 and ext_call.return_data[0] > -1 / stor7:
                            revert with 'NH{q', 17
                        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                revert with 'NH{q', 17
                            stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                        emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                    else:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.0x96c82e57 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor7 and ext_call.return_data[0] > -1 / stor7:
                                revert with 'NH{q', 17
                            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                        else:
                            if block.timestamp < startDate:
                                revert with 'NH{q', 17
                            if stor9 and block.timestamp - startDate > -1 / stor9:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor7 > !((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if stor7 + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !(((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (startDate * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                else:
                    if stor8 >= block.timestamp:
                        if stor7 and ext_call.return_data[0] > -1 / stor7:
                            revert with 'NH{q', 17
                        if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                            revert with 'NH{q', 17
                        if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                revert with 'NH{q', 17
                            stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                        emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                    else:
                        require ext_code.size(stakingContractAddress)
                        staticcall stakingContractAddress.0x96c82e57 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor7 and ext_call.return_data[0] > -1 / stor7:
                                revert with 'NH{q', 17
                            if stor7 * ext_call.return_data[0] / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !((stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, (stor7 * ext_call.return_data[0] / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
                        else:
                            if block.timestamp < stor8:
                                revert with 'NH{q', 17
                            if stor9 and block.timestamp - stor8 > -1 / stor9:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if stor7 > !((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if stor7 + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / stor7 + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if (stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < stor6[address(msg.sender)].field_0:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 > !stor6[address(msg.sender)].field_256:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 < stor6[address(msg.sender)].field_512:
                                revert with 'NH{q', 17
                            if ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if stor6[msg.sender].field_512 > !(((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512):
                                    revert with 'NH{q', 17
                                stor6[msg.sender].field_512 = stor6[msg.sender].field_512 + ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512
                            emit Claimed(msg.sender, ((stor7 * ext_call.return_data[0]) + ((block.timestamp * stor9) - (stor8 * stor9) / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - stor6[address(msg.sender)].field_0 + stor6[address(msg.sender)].field_256 - stor6[address(msg.sender)].field_512);
}



}
