contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint16 stor2; offset 8
address paymentTokenAddress; offset 24
address sub_215eef21Address;
mapping of struct sellOrders;
uint256 currentOrderId;
uint256 tradingFeePercent;
address feeAddress;

function sub_215eef21(?) {
    return sub_215eef21Address
}

function tradingFeePercent() {
    return tradingFeePercent
}

function paymentToken() {
    return paymentTokenAddress
}

function feeAddress() {
    return feeAddress
}

function sellOrders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sellOrders[arg1].field_0, sellOrders[arg1].field_256, sellOrders[arg1].field_512
}

function paused() {
    return bool(uint8(stor2.field_0))
}

function owner() {
    return owner
}

function currentOrderId() {
    return currentOrderId
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

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingFeePercent = arg1
    emit ChangeFee(arg1);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
    emit ChangeFeeAddress(arg1);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function makeSellOrder(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_215eef21Address)
    call sub_215eef21Address.0xb88d4fde with:
         gas gas_remaining wei
        args address(msg.sender), address(this.address), arg1, 128, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function cancelSellOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if sellOrders[arg1].field_0 != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(sub_215eef21Address)
    call sub_215eef21Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, sellOrders[arg1].field_256, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sellOrders[arg1].field_0 = 0
    sellOrders[arg1].field_256 = 0
    sellOrders[arg1].field_512 = 0
    emit 0x2fff7574: arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_215eef21Address != msg.sender:
        revert with 0, 'Accept CRABADA only'
    require arg4.length >= 32
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    sellOrders[stor5].field_0 = arg2
    sellOrders[stor5].field_256 = arg3
    sellOrders[stor5].field_512 = cd[(arg4 + 36)]
    emit 0xaa3a54b9: cd[(arg4 + 36)], currentOrderId, arg2, arg3
    if currentOrderId == -1:
        revert with 0, 17
    currentOrderId++
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor2.field_16):
        paymentTokenAddress = arg1
        sub_215eef21Address = arg2
        tradingFeePercent = arg3
        feeAddress = arg4
        owner = arg5
        emit OwnershipTransferred(owner, arg5);
    else:
        if uint8(stor2.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor2.field_16):
            paymentTokenAddress = arg1
            sub_215eef21Address = arg2
            tradingFeePercent = arg3
            feeAddress = arg4
            owner = arg5
            emit OwnershipTransferred(owner, arg5);
        else:
            uint16(stor2.field_8) = 257
            paymentTokenAddress = arg1
            sub_215eef21Address = arg2
            tradingFeePercent = arg3
            feeAddress = arg4
            owner = arg5
            emit OwnershipTransferred(owner, arg5);
            uint8(stor2.field_16) = 0
}

function buyCard(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not sellOrders[arg1].field_0:
        revert with 0, 'Invalid order'
    sellOrders[arg1].field_0 = 0
    require ext_code.size(sub_215eef21Address)
    call sub_215eef21Address.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, sellOrders[arg1].field_256, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not paymentTokenAddress:
        if sellOrders[arg1].field_512 != msg.value:
            revert with 0, 'INVALID VALUE'
    if not tradingFeePercent:
        if not paymentTokenAddress:
            call sellOrders[arg1].field_0 with:
               value sellOrders[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(paymentTokenAddress)
            call paymentTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sellOrders[arg1].field_0, sellOrders[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sellOrders[arg1].field_512 and tradingFeePercent > -1 / sellOrders[arg1].field_512:
            revert with 0, 17
        if sellOrders[arg1].field_512 < sellOrders[arg1].field_512 * tradingFeePercent / 10000:
            revert with 0, 17
        if not paymentTokenAddress:
            call feeAddress with:
               value sellOrders[arg1].field_512 * tradingFeePercent / 10000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(paymentTokenAddress)
            call paymentTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feeAddress, sellOrders[arg1].field_512 * tradingFeePercent / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not paymentTokenAddress:
            call sellOrders[arg1].field_0 with:
               value sellOrders[arg1].field_512 - (sellOrders[arg1].field_512 * tradingFeePercent / 10000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(paymentTokenAddress)
            call paymentTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sellOrders[arg1].field_0, sellOrders[arg1].field_512 - (sellOrders[arg1].field_512 * tradingFeePercent / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x4d3b1cf9: sellOrders[arg1].field_256, sellOrders[arg1].field_512, arg1, msg.sender, sellOrders[arg1].field_0
    sellOrders[arg1].field_0 = 0
    sellOrders[arg1].field_256 = 0
    sellOrders[arg1].field_512 = 0
    stor1 = 1
}



}
