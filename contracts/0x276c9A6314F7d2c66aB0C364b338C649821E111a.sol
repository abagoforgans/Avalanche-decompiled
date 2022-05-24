contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 totalLiquidity;
address stor4;
address stor5;

function totalLiquidity() {
    return totalLiquidity
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_64bc5c59(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function price(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function init(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalLiquidity:
        revert with 0, 'DEX already has liquidity'
    totalLiquidity = eth.balance(this.address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bda204bb(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor5 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function tokenToEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 and eth.balance(this.address) > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[0] > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[0]) + (997 * arg1):
        revert with 'NH{q', 18
    call msg.sender with:
       value 997 * arg1 * eth.balance(this.address) / (1000 * ext_call.return_data[0]) + (997 * arg1) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function ethToToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0, 'not allowed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    if msg.value and 997 > -1 / msg.value:
        revert with 'NH{q', 17
    if 997 * msg.value and ext_call.return_data[0] > -1 / 997 * msg.value:
        revert with 'NH{q', 17
    if eth.balance(this.address) - msg.value and 1000 > -1 / eth.balance(this.address) - msg.value:
        revert with 'NH{q', 17
    if (1000 * eth.balance(this.address)) - (1000 * msg.value) > (-997 * msg.value) - 1:
        revert with 'NH{q', 17
    if not (1000 * eth.balance(this.address)) - (3 * msg.value):
        revert with 'NH{q', 18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 997 * msg.value * ext_call.return_data[0] / (1000 * eth.balance(this.address)) - (3 * msg.value)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit() payable {
    if eth.balance(this.address) < msg.value:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if msg.value and ext_call.return_data[0] > -1 / msg.value:
        revert with 'NH{q', 17
    if not eth.balance(this.address) - msg.value:
        revert with 'NH{q', 18
    if msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value > -2:
        revert with 'NH{q', 17
    if msg.value and totalLiquidity > -1 / msg.value:
        revert with 'NH{q', 17
    if not eth.balance(this.address) - msg.value:
        revert with 'NH{q', 18
    if totalLiquidity > -(msg.value * totalLiquidity / eth.balance(this.address) - msg.value) - 1:
        revert with 'NH{q', 17
    totalLiquidity += msg.value * totalLiquidity / eth.balance(this.address) - msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (msg.value * ext_call.return_data[0] / eth.balance(this.address) - msg.value) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
