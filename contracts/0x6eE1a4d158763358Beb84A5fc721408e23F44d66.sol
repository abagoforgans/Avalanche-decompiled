contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_f661628dAddress;
address stor3;
uint256 orders;
uint256 sub_913e0a48;
uint256 collectedFees;
uint256 marketFee;
mapping of struct orderDetails;
array of uint256 ordersBySeller;
mapping of uint256 sub_b664d83e;
mapping of struct sub_e597675c;

function marketFee() {
    return marketFee
}

function orders() {
    return orders
}

function owner() {
    return owner
}

function collectedFees() {
    return collectedFees
}

function sub_913e0a48(?) {
    return sub_913e0a48
}

function sub_94f80d1d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e597675c[arg1].field_0, sub_e597675c[arg1].field_256, sub_e597675c[arg1].field_512
}

function sub_b664d83e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b664d83e[arg1]
}

function sub_cd029c43(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return orderDetails[arg1].field_0, orderDetails[arg1].field_256, orderDetails[arg1].field_512, orderDetails[arg1].field_768
}

function ordersBySeller(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < ordersBySeller[arg1]
    return ordersBySeller[arg1][arg2]
}

function sub_e597675c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_e597675c[arg1].field_0, sub_e597675c[arg1].field_256, sub_e597675c[arg1].field_512
}

function getOrderDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return orderDetails[arg1].field_0, orderDetails[arg1].field_768, orderDetails[arg1].field_512
}

function sub_f661628d(?) {
    return sub_f661628dAddress
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

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketFee = arg1
}

function changeDividendContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Need to set a valid address'
    stor3 = arg1
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

function updateOrder(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if orderDetails[arg1].field_0 != msg.sender:
        revert with 0, 'Marketplace: sender not allowed'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: Price should be bigger than 0'
    orderDetails[arg1].field_768 = arg2
    emit OrderUpdated(arg1, arg2);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function cancelBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_e597675c[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: Only bidder can cancel the bid'
    sub_e597675c[arg1].field_0 = 0
    sub_e597675c[arg1].field_256 = 0
    sub_e597675c[arg1].field_512 = 0
    call sub_e597675c[arg1].field_0 with:
       value sub_e597675c[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfa4e4e21: arg1, sub_e597675c[arg1].field_0
    stor1 = 1
}

function sub_56f14ba0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ordersBySeller[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if ordersBySeller[address(arg1)]:
        mem[128 len 32 * ordersBySeller[address(arg1)]] = call.data[calldata.size len 32 * ordersBySeller[address(arg1)]]
    idx = 0
    while idx < ordersBySeller[address(arg1)]:
        mem[32] = 9
        if idx >= ordersBySeller[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 9)
        if idx >= ordersBySeller[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = ordersBySeller[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=ordersBySeller[address(arg1)], data=mem[128 len 32 * ordersBySeller[address(arg1)]])
}

function createOrder(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: Price should be bigger than 0'
    orderDetails[arg1].field_0 = msg.sender
    orderDetails[arg1].field_256 = arg1
    orderDetails[arg1].field_512 = block.timestamp
    orderDetails[arg1].field_768 = arg2
    sub_b664d83e[arg1] = ordersBySeller[address(msg.sender)]
    ordersBySeller[address(msg.sender)]++
    ordersBySeller[address(msg.sender)][ordersBySeller[address(msg.sender)]] = arg1
    require ext_code.size(sub_f661628dAddress)
    call sub_f661628dAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if orders == -1:
        revert with 'NH{q', 17
    orders++
    emit OrderCreated(arg1, block.timestamp, arg2, msg.sender);
}

function placeBid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_e597675c[arg1].field_256 >= msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Marketplace: Bid needs to be bigger than current bid'
    if sub_e597675c[arg1].field_256 > 0:
        sub_e597675c[arg1].field_0 = 0
        sub_e597675c[arg1].field_256 = 0
        sub_e597675c[arg1].field_512 = 0
        call sub_e597675c[arg1].field_0 with:
           value sub_e597675c[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xfa4e4e21: arg1, sub_e597675c[arg1].field_0
    sub_e597675c[arg1].field_0 = msg.sender
    sub_e597675c[arg1].field_256 = msg.value
    sub_e597675c[arg1].field_512 = block.timestamp
    emit 0xda6c0fbe: arg1, msg.value, msg.sender, block.timestamp
    stor1 = 1
}

function cancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if orderDetails[arg1].field_0 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Marketplace: unauthorized sender'
    if ordersBySeller[stor8[arg1].field_0] < 1:
        revert with 'NH{q', 17
    if ordersBySeller[stor8[arg1].field_0] - 1 >= ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 50
    if sub_b664d83e[arg1] >= ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 50
    ordersBySeller[stor8[arg1].field_0][stor10[arg1]] = ordersBySeller[stor8[arg1].field_0][ordersBySeller[stor8[arg1].field_0]]
    sub_b664d83e[stor9[stor8[arg1].field_0][stor9[stor8[arg1].field_0]]] = sub_b664d83e[arg1]
    if not ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 49
    ordersBySeller[stor8[arg1].field_0][ordersBySeller[stor8[arg1].field_0]] = 0
    ordersBySeller[stor8[arg1].field_0]--
    orderDetails[arg1].field_0 = 0
    orderDetails[arg1].field_256 = 0
    orderDetails[arg1].field_512 = 0
    orderDetails[arg1].field_768 = 0
    require ext_code.size(sub_f661628dAddress)
    call sub_f661628dAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), orderDetails[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc0362da6: arg1, orderDetails[arg1].field_0
}

function acceptBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_e597675c[arg1].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: No bids for this item'
    if orderDetails[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace: Only seller can accept bid'
    if marketFee <= 0:
        if sub_e597675c[arg1].field_256 < 0:
            revert with 'NH{q', 17
        require ext_code.size(sub_f661628dAddress)
        call sub_f661628dAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), sub_e597675c[arg1].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_e597675c[arg1].field_256 < 0:
            revert with 'NH{q', 17
        call msg.sender with:
           value sub_e597675c[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.distributeDividends() with:
             gas gas_remaining wei
    else:
        if sub_e597675c[arg1].field_256 and marketFee > -1 / sub_e597675c[arg1].field_256:
            revert with 'NH{q', 17
        if collectedFees > -(sub_e597675c[arg1].field_256 * marketFee / 10000) - 1:
            revert with 'NH{q', 17
        collectedFees += sub_e597675c[arg1].field_256 * marketFee / 10000
        if sub_e597675c[arg1].field_256 < sub_e597675c[arg1].field_256 * marketFee / 10000:
            revert with 'NH{q', 17
        require ext_code.size(sub_f661628dAddress)
        call sub_f661628dAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), sub_e597675c[arg1].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_e597675c[arg1].field_256 - (sub_e597675c[arg1].field_256 * marketFee / 10000) < sub_e597675c[arg1].field_256 * marketFee / 10000:
            revert with 'NH{q', 17
        call msg.sender with:
           value sub_e597675c[arg1].field_256 - (2 * sub_e597675c[arg1].field_256 * marketFee / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.distributeDividends() with:
           value sub_e597675c[arg1].field_256 * marketFee / 10000 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ordersBySeller[address(msg.sender)] < 1:
        revert with 'NH{q', 17
    if ordersBySeller[address(msg.sender)] - 1 >= ordersBySeller[address(msg.sender)]:
        revert with 'NH{q', 50
    if sub_b664d83e[arg1] >= ordersBySeller[address(msg.sender)]:
        revert with 'NH{q', 50
    ordersBySeller[address(msg.sender)][stor10[arg1]] = ordersBySeller[address(msg.sender)][ordersBySeller[address(msg.sender)]]
    sub_b664d83e[stor9[address(msg.sender)][stor9[address(msg.sender)]]] = sub_b664d83e[arg1]
    if not ordersBySeller[address(msg.sender)]:
        revert with 'NH{q', 49
    ordersBySeller[address(msg.sender)][ordersBySeller[address(msg.sender)]] = 0
    ordersBySeller[address(msg.sender)]--
    orderDetails[arg1].field_0 = 0
    orderDetails[arg1].field_256 = 0
    orderDetails[arg1].field_512 = 0
    orderDetails[arg1].field_768 = 0
    if sub_913e0a48 == -1:
        revert with 'NH{q', 17
    sub_913e0a48++
    sub_e597675c[arg1].field_0 = 0
    sub_e597675c[arg1].field_256 = 0
    sub_e597675c[arg1].field_512 = 0
    emit 0x5960dd9f: arg1, sub_e597675c[arg1].field_256, msg.sender
    stor1 = 1
}

function executeOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if orderDetails[arg1].field_768 != msg.value:
        revert with 0, 'Marketplace: Invalid paid value'
    if marketFee <= 0:
        if sub_e597675c[arg1].field_256 > 0:
            sub_e597675c[arg1].field_0 = 0
            sub_e597675c[arg1].field_256 = 0
            sub_e597675c[arg1].field_512 = 0
            call sub_e597675c[arg1].field_0 with:
               value sub_e597675c[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xfa4e4e21: arg1, sub_e597675c[arg1].field_0
        if orderDetails[arg1].field_768 < 0:
            revert with 'NH{q', 17
        require ext_code.size(sub_f661628dAddress)
        call sub_f661628dAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if orderDetails[arg1].field_768 < 0:
            revert with 'NH{q', 17
        call orderDetails[arg1].field_0 with:
           value orderDetails[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.distributeDividends() with:
             gas gas_remaining wei
    else:
        if orderDetails[arg1].field_768 and marketFee > -1 / orderDetails[arg1].field_768:
            revert with 'NH{q', 17
        if collectedFees > -(orderDetails[arg1].field_768 * marketFee / 10000) - 1:
            revert with 'NH{q', 17
        collectedFees += orderDetails[arg1].field_768 * marketFee / 10000
        if sub_e597675c[arg1].field_256 > 0:
            sub_e597675c[arg1].field_0 = 0
            sub_e597675c[arg1].field_256 = 0
            sub_e597675c[arg1].field_512 = 0
            call sub_e597675c[arg1].field_0 with:
               value sub_e597675c[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xfa4e4e21: arg1, sub_e597675c[arg1].field_0
        if orderDetails[arg1].field_768 < orderDetails[arg1].field_768 * marketFee / 10000:
            revert with 'NH{q', 17
        require ext_code.size(sub_f661628dAddress)
        call sub_f661628dAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if orderDetails[arg1].field_768 - (orderDetails[arg1].field_768 * marketFee / 10000) < orderDetails[arg1].field_768 * marketFee / 10000:
            revert with 'NH{q', 17
        call orderDetails[arg1].field_0 with:
           value orderDetails[arg1].field_768 - (2 * orderDetails[arg1].field_768 * marketFee / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor3)
        call stor3.distributeDividends() with:
           value orderDetails[arg1].field_768 * marketFee / 10000 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ordersBySeller[stor8[arg1].field_0] < 1:
        revert with 'NH{q', 17
    if ordersBySeller[stor8[arg1].field_0] - 1 >= ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 50
    if sub_b664d83e[arg1] >= ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 50
    ordersBySeller[stor8[arg1].field_0][stor10[arg1]] = ordersBySeller[stor8[arg1].field_0][ordersBySeller[stor8[arg1].field_0]]
    sub_b664d83e[stor9[stor8[arg1].field_0][stor9[stor8[arg1].field_0]]] = sub_b664d83e[arg1]
    if not ordersBySeller[stor8[arg1].field_0]:
        revert with 'NH{q', 49
    ordersBySeller[stor8[arg1].field_0][ordersBySeller[stor8[arg1].field_0]] = 0
    ordersBySeller[stor8[arg1].field_0]--
    orderDetails[arg1].field_0 = 0
    orderDetails[arg1].field_256 = 0
    orderDetails[arg1].field_512 = 0
    orderDetails[arg1].field_768 = 0
    if sub_913e0a48 == -1:
        revert with 'NH{q', 17
    sub_913e0a48++
    emit 0x75136125: arg1, orderDetails[arg1].field_768, msg.sender
    stor1 = 1
}



}
