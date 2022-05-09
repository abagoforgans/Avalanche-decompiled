contract main {




// =====================  Runtime code  =====================


const sub_27e013a6(?) = (24 * 3600)

const sub_2df84bd4(?) = (8760 * 24 * 3600)


address owner;
uint256 flatFee;
uint256 sub_b15ab0d4;
uint256 sub_a0678396;
address feeRecipientAddress;
mapping of struct lockedTokens;
uint256 sub_9b10b6f5;

function feeRecipient() {
    return feeRecipientAddress
}

function owner() {
    return owner
}

function sub_9b10b6f5(?) {
    return sub_9b10b6f5
}

function sub_a0678396(?) {
    return sub_a0678396
}

function sub_b15ab0d4(?) {
    return sub_b15ab0d4
}

function flatFee() {
    return flatFee
}

function lockedTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockedTokens[arg1].field_0, 
           lockedTokens[arg1].field_256,
           lockedTokens[arg1].field_512,
           lockedTokens[arg1].field_768,
           lockedTokens[arg1].field_1024,
           lockedTokens[arg1].field_1280,
           lockedTokens[arg1].field_1536,
           bool(lockedTokens[arg1].field_1792)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c4c8f06d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b15ab0d4 = arg1
    sub_a0678396 = arg2
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Value cannot be the zero address'
    feeRecipientAddress = arg1
}

function sub_09630831(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call feeRecipientAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFlatFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value cannot be less than 0.001 ether'
    flatFee = arg1
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

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not lockedTokens[arg1].field_1792:
        revert with 0, 'Lock does not exist'
    if lockedTokens[arg1].field_512 != msg.sender:
        revert with 0, 'Not the lock owner'
    if block.timestamp < lockedTokens[arg1].field_1536:
        revert with 0, 'Too early to withdraw tokens'
    if lockedTokens[arg1].field_768 < lockedTokens[arg1].field_1024:
        revert with 'NH{q', 17
    if arg2 > lockedTokens[arg1].field_768 - lockedTokens[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Attempting to withdraw too many tokens'
    if lockedTokens[arg1].field_1024 > -arg2 - 1:
        revert with 'NH{q', 17
    lockedTokens[arg1].field_1024 += arg2
    call lockedTokens[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    emit TokensWithdrawn(lockedTokens[arg1].field_0, arg2);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if flatFee != msg.value:
        revert with 0, 'Incorrect value sent'
    if not lockedTokens[arg1].field_1792:
        revert with 0, 'Lock does not exist'
    if lockedTokens[arg1].field_512 != msg.sender:
        revert with 0, 'Not the lock owner'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token transfer amount must be greater than zero'
    staticcall lockedTokens[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call lockedTokens[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer from failed'
    staticcall lockedTokens[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg2 != 0:
        revert with 0, 'Received less than the transferred amount, please exclude the locker from fees'
    if msg.value > 0:
        call feeRecipientAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2 and sub_b15ab0d4 > -1 / arg2:
        revert with 'NH{q', 17
    if not sub_a0678396:
        revert with 'NH{q', 18
    if arg2 * sub_b15ab0d4 / sub_a0678396 > 0:
        call lockedTokens[arg1].field_256.0xa9059cbb with:
             gas gas_remaining wei
            args feeRecipientAddress, arg2 * sub_b15ab0d4 / sub_a0678396
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Scaling fee transfer failed'
    if arg2 < arg2 * sub_b15ab0d4 / sub_a0678396:
        revert with 'NH{q', 17
    if lockedTokens[arg1].field_768 > -arg2 + (arg2 * sub_b15ab0d4 / sub_a0678396) - 1:
        revert with 'NH{q', 17
    lockedTokens[arg1].field_768 = lockedTokens[arg1].field_768 + arg2 - (arg2 * sub_b15ab0d4 / sub_a0678396)
    emit TokensDeposited(lockedTokens[arg1].field_0, arg2 - (arg2 * sub_b15ab0d4 / sub_a0678396));
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if flatFee != msg.value:
        revert with 0, 'Incorrect value sent'
    if block.timestamp > -86401:
        revert with 'NH{q', 17
    if arg3 < block.timestamp + (24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens must unlock after the current time'
    if block.timestamp > -31536001:
        revert with 'NH{q', 17
    if arg3 > block.timestamp + (8760 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens must unlock a year or less in advance'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token transfer amount must be greater than zero'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer from failed'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg2 != 0:
        revert with 0, 'Received less than the transferred amount, please exclude the locker from fees'
    if msg.value > 0:
        call feeRecipientAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2 and sub_b15ab0d4 > -1 / arg2:
        revert with 'NH{q', 17
    if not sub_a0678396:
        revert with 'NH{q', 18
    if arg2 * sub_b15ab0d4 / sub_a0678396 > 0:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args feeRecipientAddress, arg2 * sub_b15ab0d4 / sub_a0678396
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Scaling fee transfer failed'
    if arg2 < arg2 * sub_b15ab0d4 / sub_a0678396:
        revert with 'NH{q', 17
    if sub_9b10b6f5 == -1:
        revert with 'NH{q', 17
    sub_9b10b6f5++
    lockedTokens[stor6].field_0 = sub_9b10b6f5
    lockedTokens[stor6].field_256 = arg1
    lockedTokens[stor6].field_512 = msg.sender
    lockedTokens[stor6].field_768 = arg2 - (arg2 * sub_b15ab0d4 / sub_a0678396)
    lockedTokens[stor6].field_1024 = 0
    lockedTokens[stor6].field_1280 = block.timestamp
    lockedTokens[stor6].field_1536 = arg3
    lockedTokens[stor6].field_1792 = 1
    emit 0x51458d41: sub_9b10b6f5
}



}
