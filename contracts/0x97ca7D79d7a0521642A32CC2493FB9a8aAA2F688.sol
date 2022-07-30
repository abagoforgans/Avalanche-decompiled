contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor101;
address stor102;
uint256 sub_6aa8ec1e;
uint256 sub_b3c68ee7;
uint256 stor105;
uint256 period;
mapping of uint256 stakeBalanceOf;
mapping of uint256 sub_e3ba4d42;
mapping of uint256 stor109;
mapping of uint8 stor110;

function getPeriod() payable {
    return period
}

function sub_6aa8ec1e(?) payable {
    return sub_6aa8ec1e
}

function owner() payable {
    return owner
}

function sub_b3c68ee7(?) payable {
    return sub_b3c68ee7
}

function sub_e3ba4d42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e3ba4d42[address(arg1)]
}

function getStakeBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeBalanceOf[address(arg1)]
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

function sub_0d246650(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b3c68ee7 = arg1
}

function sub_b68399e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6aa8ec1e = arg1
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
    if sub_b3c68ee7 > -period - 1:
        revert with 'NH{q', 17
    stor105 = sub_b3c68ee7 + period
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

function sub_a94477b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor109[address(arg1)] >= block.timestamp:
        return 0
    if block.timestamp < stor109[address(arg1)]:
        revert with 'NH{q', 17
    if stakeBalanceOf[address(arg1)] and block.timestamp - stor109[address(arg1)] > -1 / stakeBalanceOf[address(arg1)]:
        revert with 'NH{q', 17
    if (block.timestamp * stakeBalanceOf[address(arg1)]) - (stor109[address(arg1)] * stakeBalanceOf[address(arg1)]) and sub_6aa8ec1e > -1 / (block.timestamp * stakeBalanceOf[address(arg1)]) - (stor109[address(arg1)] * stakeBalanceOf[address(arg1)]):
        revert with 'NH{q', 17
    return ((block.timestamp * stakeBalanceOf[address(arg1)] * sub_6aa8ec1e) - (stor109[address(arg1)] * stakeBalanceOf[address(arg1)] * sub_6aa8ec1e) / 1000)
}

function subscribe(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not stor110[address(msg.sender)]
    stor110[address(msg.sender)] = 1
    if block.timestamp >= sub_b3c68ee7:
        revert with 0, 'Stake is not allowed'
    require ext_code.size(stor101)
    call stor101.0x31c9c40b with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stakeBalanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakeBalanceOf[address(msg.sender)] += arg1
    stor109[address(msg.sender)] = sub_b3c68ee7
    emit 0xc66747d5: msg.sender, arg1
    stor110[address(msg.sender)] = 0
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = arg1
    stor102 = arg2
    sub_6aa8ec1e = arg3
    sub_b3c68ee7 = arg4
    period = 8760 * 24 * 3600
    if sub_b3c68ee7 > -period - 1:
        revert with 'NH{q', 17
    stor105 = sub_b3c68ee7 + period
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function claim() payable {
    require not stor110[address(msg.sender)]
    stor110[address(msg.sender)] = 1
    if block.timestamp <= sub_b3c68ee7:
        revert with 0, 'Claim is not allowed'
    if stakeBalanceOf[address(msg.sender)] <= 0:
        revert with 0, 'Account unsubscribed'
    if stor109[address(msg.sender)] < block.timestamp:
        if block.timestamp < stor109[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeBalanceOf[address(msg.sender)] and block.timestamp - stor109[address(msg.sender)] > -1 / stakeBalanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        if (block.timestamp * stakeBalanceOf[address(msg.sender)]) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)]) and sub_6aa8ec1e > -1 / (block.timestamp * stakeBalanceOf[address(msg.sender)]) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)]):
            revert with 'NH{q', 17
        if (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000 > 0:
            stor109[address(msg.sender)] = block.timestamp
            if sub_e3ba4d42[address(msg.sender)] > -((block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000) - 1:
                revert with 'NH{q', 17
            sub_e3ba4d42[address(msg.sender)] += (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000
            require ext_code.size(stor102)
            call stor102.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit LogClaim(msg.sender, (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000);
    stor110[address(msg.sender)] = 0
}

function unsubscribe() payable {
    require not stor110[address(msg.sender)]
    stor110[address(msg.sender)] = 1
    if block.timestamp <= stor105:
        revert with 0, 'Unsubscribe is not allowed'
    if stakeBalanceOf[address(msg.sender)] <= 0:
        revert with 0, 'Account unsubscribed'
    if stor109[address(msg.sender)] < block.timestamp:
        if block.timestamp < stor109[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeBalanceOf[address(msg.sender)] and block.timestamp - stor109[address(msg.sender)] > -1 / stakeBalanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        if (block.timestamp * stakeBalanceOf[address(msg.sender)]) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)]) and sub_6aa8ec1e > -1 / (block.timestamp * stakeBalanceOf[address(msg.sender)]) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)]):
            revert with 'NH{q', 17
        if (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000 > 0:
            stor109[address(msg.sender)] = block.timestamp
            if sub_e3ba4d42[address(msg.sender)] > -((block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000) - 1:
                revert with 'NH{q', 17
            sub_e3ba4d42[address(msg.sender)] += (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000
            require ext_code.size(stor102)
            call stor102.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit LogClaim(msg.sender, (block.timestamp * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) - (stor109[address(msg.sender)] * stakeBalanceOf[address(msg.sender)] * sub_6aa8ec1e) / 1000);
    stakeBalanceOf[address(msg.sender)] = 0
    require ext_code.size(stor101)
    call stor101.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stakeBalanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x6f10dcb8: msg.sender
    stor110[address(msg.sender)] = 0
}



}
