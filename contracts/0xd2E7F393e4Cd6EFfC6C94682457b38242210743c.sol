contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address sub_bbffe43eAddress;
address sub_94b338d5Address;
uint256 amountToken;
uint256 sub_794f7e24;
uint256 liquidity;
uint256 sub_48de0f40;

function amountToken() {
    return amountToken
}

function liquidity() {
    return liquidity
}

function sub_48de0f40(?) {
    return sub_48de0f40
}

function sub_794f7e24(?) {
    return sub_794f7e24
}

function owner() {
    return owner
}

function sub_94b338d5(?) {
    return sub_94b338d5Address
}

function sub_bbffe43e(?) {
    return address(sub_bbffe43eAddress)
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

function sub_026b49a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94b338d5Address = address(arg1)
}

function sub_24c0b4f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(sub_bbffe43eAddress) = address(arg1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity is still locked, you can't withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Lock Time must be in the future'
    if arg1 <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can only increase the lock time, not decrease it.'
    sub_48de0f40 = arg1
}

function withdrawLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity is still locked, you can't withdraw'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, liquidity
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_602c4cd7(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) / 10 and 9 > -1 / eth.balance(this.address) / 10:
        revert with 'NH{q', 17
    call msg.sender with:
       value 9 * eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) / 10 and 1 > -1 / eth.balance(this.address) / 10:
        revert with 'NH{q', 17
    if block.timestamp > -1001:
        revert with 'NH{q', 17
    require ext_code.size(sub_94b338d5Address)
    call sub_94b338d5Address.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) / 10 wei
         gas gas_remaining wei
        args 0, uint32(stor1), 5000000 * 10^18, 0, 0, address(this.address), block.timestamp + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if amountToken > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    amountToken += ext_call.return_data[0]
    if sub_794f7e24 > -ext_call.return_data[32] - 1:
        revert with 'NH{q', 17
    sub_794f7e24 += ext_call.return_data[32]
    if liquidity > -ext_call.return_data[64] - 1:
        revert with 'NH{q', 17
    liquidity += ext_call.return_data[64]
}



}
