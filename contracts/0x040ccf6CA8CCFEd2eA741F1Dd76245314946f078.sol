contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address balanceAddress;
address priceFeedAddress;
mapping of uint256 sub_355d2797;

function sub_355d2797(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_355d2797[arg1]
}

function paused() {
    return bool(stor0)
}

function priceFeed() {
    return priceFeedAddress
}

function owner() {
    return owner
}

function balance() {
    return balanceAddress
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

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function changePriceFeed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceFeedAddress = arg1
    emit PriceFeedChanged(arg1);
}

function changeProduct(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_355d2797[arg1 << 248] = arg2
    emit ProductChanged(arg2, arg1);
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

function price(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Store: invalid price'
    if sub_355d2797[arg1 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (10^18 * sub_355d2797[arg1 << 248] / ext_call.return_data[32])
}

function buy(uint8 arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg4 < block.timestamp:
        revert with 0, 'Store: expired'
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Store: invalid price'
    if sub_355d2797[arg1 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if 10^18 * sub_355d2797[arg1 << 248] / ext_call.return_data[32] <= 0:
        revert with 0, 'Store: negative or zero price'
    if 10^18 * sub_355d2797[arg1 << 248] / ext_call.return_data[32] > arg3:
        revert with 0, 'Store: excessive price'
    require ext_code.size(balanceAddress)
    call balanceAddress.0xe578a225 with:
         gas gas_remaining wei
        args msg.sender, 0, 10^18 * sub_355d2797[arg1 << 248] / ext_call.return_data[32], 128, 9, 'STORE_BUY' << 184
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Buy(arg1, arg2);
}



}
