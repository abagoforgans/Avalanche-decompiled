contract main {




// =====================  Runtime code  =====================


mapping of address stor2;
uint256 stor8;
mapping of struct marketData;
address feeReceiverAddress;
uint256 feePercentage;
uint32 stor19; offset 32
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor24;
uint256 stor25;
address storC8FC;

function getFeePercentage() {
    return feePercentage
}

function getMarketData(uint256 arg1) {
    require calldata.size - 4 >= 32
    if marketData[arg1].field_256 > 3:
        revert with 0, 33
    if marketData[arg1].field_256 >= 4:
        revert with 0, 33
    return marketData[arg1].field_0, marketData[arg1].field_256
}

function getFeeReceiver() {
    return feeReceiverAddress
}

function _fallback() payable {
    revert
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and feePercentage > -1 / arg2:
        revert with 0, 17
    return feeReceiverAddress, arg2 * feePercentage / 1000
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if not arg1:
        revert with 0, 'No zero address'
    feeReceiverAddress = arg1
}

function setFeePercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    if arg1 > 150:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It will never be more than 15 percentage'
    feePercentage = arg1
}

function cancelTokenSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor19 != 1:
        revert with 0, 'Market has not started'
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor2[arg1] != msg.sender:
        revert with 0, 'Only owners can do'
    marketData[arg1].field_0 = 0
    marketData[arg1].field_256 = 3
    emit CancelSale(arg1);
}

function setTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor19 != 1:
        revert with 0, 'Market has not started'
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor2[arg1] != msg.sender:
        revert with 0, 'Only owners can do'
    marketData[arg1].field_0 = arg2
    marketData[arg1].field_256 = 1
    emit ForSale(arg2, arg1);
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor20 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor20 = 2
    if stor19 != 1:
        revert with 0, 'Market has not started'
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if marketData[arg1].field_256 > 3:
        revert with 0, 33
    if marketData[arg1].field_256 != 1:
        revert with 0, 'Token is not for sale'
    if msg.value < marketData[arg1].field_0:
        revert with 0, 'AVAX value is not enough'
    if not stor2[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ext_code.size(this.address)
    call this.address.0x42842e0e with:
         gas gas_remaining wei
        args stor2[arg1], msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    marketData[arg1].field_256 = 2
    if not feePercentage:
        call stor2[arg1] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.value and feePercentage > -1 / msg.value:
            revert with 0, 17
        if msg.value * feePercentage / 1000 and stor24 > -1 / msg.value * feePercentage / 1000:
            revert with 0, 17
        if stor25 > !(msg.value * feePercentage / 1000 * stor24 / 1000):
            revert with 0, 17
        stor25 += msg.value * feePercentage / 1000 * stor24 / 1000
        if stor21 > !(msg.value * feePercentage / 1000 * stor24 / 1000):
            revert with 0, 17
        stor21 += msg.value * feePercentage / 1000 * stor24 / 1000
        if not stor8:
            revert with 0, 18
        if stor22 > !(msg.value * feePercentage / 1000 * stor24 / 1000 / stor8):
            revert with 0, 17
        stor22 += msg.value * feePercentage / 1000 * stor24 / 1000 / stor8
        if msg.value and feePercentage > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * feePercentage / 1000:
            revert with 0, 17
        call stor2[arg1] with:
           value msg.value - (msg.value * feePercentage / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value * feePercentage / 1000 < msg.value * feePercentage / 1000 * stor24 / 1000:
            revert with 0, 17
        call feeReceiverAddress with:
           value (msg.value * feePercentage / 1000) - (msg.value * feePercentage / 1000 * stor24 / 1000) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bought(msg.value, arg1);
    stor20 = 1
}



}
