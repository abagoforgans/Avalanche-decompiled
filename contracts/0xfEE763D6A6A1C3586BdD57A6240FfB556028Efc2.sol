contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
mapping of struct sub_a1c3b053;
mapping of struct sub_cc9adee7;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint256 pendingWithdrawals;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function owner() {
    return owner
}

function sub_a1c3b053(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(sub_a1c3b053[arg1].field_0)), 
           sub_a1c3b053[arg1].field_256,
           address(sub_a1c3b053[arg1].field_512),
           sub_a1c3b053[arg1].field_768,
           address(sub_a1c3b053[arg1].field_1024)
}

function sub_cc9adee7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(sub_cc9adee7[arg1].field_0)), 
           sub_cc9adee7[arg1].field_256,
           address(sub_cc9adee7[arg1].field_512),
           sub_cc9adee7[arg1].field_768
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pendingWithdrawals[arg1]
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

function withdrawSales() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_71185521(?) {
    if stor5.length:
        mem[128] = uint256(stor5.field_0)
        idx = 128
        s = 0
        while (32 * stor5.length) + 96 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor5.length, data=mem[128 len 32 * stor5.length])
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len 32 * stor5.length] = mem[128 len 32 * stor5.length]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function sub_554f8989(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvaxBlobMarket: Donations to blob holders must be more then 0'
    if reflectionBalance > -msg.value - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / ext_call.return_data[0]
    stor1 = 1
}

function sub_356d4e01(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvaxBlobMarket: You are not the AVAXBLOB contract so can not execute this'
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    if totalDividend - lastDividendAt[arg1] > 0:
        lastDividendAt[arg1] = totalDividend
        require ext_code.size(stor2)
        staticcall stor2.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value totalDividend - lastDividendAt[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawBidForBlob(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'AvaxBlobMarket: Can not withdraw bid from blob you own'
    if address(sub_cc9adee7[arg1].field_512) != msg.sender:
        revert with 0, 'AvaxBlobMarket: You have no bids active'
    uint8(sub_cc9adee7[arg1].field_0) = 0
    sub_cc9adee7[arg1].field_256 = arg1
    address(sub_cc9adee7[arg1].field_512) = 0
    sub_cc9adee7[arg1].field_768 % 1 = 0
    sub_cc9adee7[arg1].field_768 = 0
    call msg.sender with:
       value sub_cc9adee7[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BlobBidWithdrawn(sub_cc9adee7[arg1].field_768, arg1, msg.sender);
    stor1 = 1
}

function enterBidForBlob(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'AvaxBlobMarket: You own the blob already'
    if msg.value <= 0:
        revert with 0, 'AvaxBlobMarket: Bids must be higher then 0'
    if msg.value < sub_cc9adee7[arg1].field_768:
        revert with 0, 'AvaxBlobMarket: Blob has already got a higher bid'
    if sub_cc9adee7[arg1].field_768 > 0:
        if pendingWithdrawals[address(stor4[arg1].field_512)] > -sub_cc9adee7[arg1].field_768 - 1:
            revert with 'NH{q', 17
        pendingWithdrawals[address(stor4[arg1].field_512)] += sub_cc9adee7[arg1].field_768
    uint8(sub_cc9adee7[arg1].field_0) = 1
    sub_cc9adee7[arg1].field_256 = arg1
    address(sub_cc9adee7[arg1].field_512) = msg.sender
    sub_cc9adee7[arg1].field_768 = msg.value
    emit BlobBidEntered(msg.value, arg1, msg.sender);
    stor1 = 1
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobMarket: You do not own blob to claim reward'
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    if totalDividend - lastDividendAt[arg1] > 0:
        lastDividendAt[arg1] = totalDividend
        require ext_code.size(stor2)
        staticcall stor2.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value totalDividend - lastDividendAt[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function blobNoLongerForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'AvaxBlobMarket: You can not delist the blob'
    if uint8(sub_a1c3b053[arg1].field_0):
        if stor5.length < 1:
            revert with 'NH{q', 17
        if stor5.length - 1 >= stor5.length:
            revert with 'NH{q', 50
        if stor6[arg1] >= stor5.length:
            revert with 'NH{q', 50
        stor5[stor6[arg1]].field_0 = stor5[stor5.length].field_0
        stor6[stor5[stor5.length].field_0] = stor6[arg1]
        stor6[arg1] = 0
        if not stor5.length:
            revert with 'NH{q', 49
        stor5[stor5.length].field_0 = 0
        stor5.length--
        uint8(sub_a1c3b053[arg1].field_0) = 0
        sub_a1c3b053[arg1].field_256 = arg1
        address(sub_a1c3b053[arg1].field_512) = 0
        sub_a1c3b053[arg1].field_768 % 1 = 0
        sub_a1c3b053[arg1].field_768 = 0
        address(sub_a1c3b053[arg1].field_1024) = 0
        sub_a1c3b053[arg1].field_1280 % 1 = 0
    emit BlobNoLongerForSale(arg1);
}

function offerBlobForSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobMarket: Not owner'
    require ext_code.size(stor2)
    staticcall stor2.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AvaxBlobMarket: Have not approved use for marketplace'
    if uint8(sub_a1c3b053[arg1].field_0):
        revert with 0, 'AvaxBlobMarket: Blob already for sale'
    uint8(sub_a1c3b053[arg1].field_0) = 1
    sub_a1c3b053[arg1].field_256 = arg1
    address(sub_a1c3b053[arg1].field_512) = msg.sender
    sub_a1c3b053[arg1].field_768 = arg2
    address(sub_a1c3b053[arg1].field_1024) = 0
    sub_a1c3b053[arg1].field_1280 % 1 = 0
    stor6[arg1] = stor5.length
    stor5.length++
    stor5[stor5.length].field_0 = arg1
    emit BlobOffered(arg2, arg1, 0);
}

function offerBlobForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobMarket: Not owner'
    require ext_code.size(stor2)
    staticcall stor2.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AvaxBlobMarket: Have not approved use for marketplace'
    if uint8(sub_a1c3b053[arg1].field_0):
        revert with 0, 'AvaxBlobMarket: Blob already for sale'
    uint8(sub_a1c3b053[arg1].field_0) = 1
    sub_a1c3b053[arg1].field_256 = arg1
    address(sub_a1c3b053[arg1].field_512) = msg.sender
    sub_a1c3b053[arg1].field_768 = arg2
    address(sub_a1c3b053[arg1].field_1024) = arg3
    stor6[arg1] = stor5.length
    stor5.length++
    stor5[stor5.length].field_0 = arg1
    emit BlobOffered(arg2, arg1, arg3);
}

function acceptBidForBlob(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobMarket: Not owner'
    require ext_code.size(stor2)
    staticcall stor2.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'AvaxBlobMarket: Have not approved use for marketplace'
    if sub_cc9adee7[arg1].field_768 <= 0:
        revert with 0, 'AvaxBlobMarket: Can not accept bids for 0'
    if sub_cc9adee7[arg1].field_768 < arg2:
        revert with 0, 'AvaxBlobMarket: Can not accept bids for lower then min price'
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(sub_cc9adee7[arg1].field_512), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(sub_cc9adee7[arg1].field_0) = 0
    sub_cc9adee7[arg1].field_256 = arg1
    address(sub_cc9adee7[arg1].field_512) = 0
    sub_cc9adee7[arg1].field_768 % 1 = 0
    sub_cc9adee7[arg1].field_768 = 0
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    lastDividendAt[ext_call.return_data[0]] = totalDividend
    if sub_cc9adee7[arg1].field_768 < sub_cc9adee7[arg1].field_768 / 20:
        revert with 'NH{q', 17
    if reflectionBalance > -(sub_cc9adee7[arg1].field_768 / 20) - 1:
        revert with 'NH{q', 17
    reflectionBalance += sub_cc9adee7[arg1].field_768 / 20
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if totalDividend > -(sub_cc9adee7[arg1].field_768 / 20 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalDividend += sub_cc9adee7[arg1].field_768 / 20 / ext_call.return_data[0]
    if pendingWithdrawals[address(msg.sender)] > -sub_cc9adee7[arg1].field_768 + (sub_cc9adee7[arg1].field_768 / 20) - 1:
        revert with 'NH{q', 17
    pendingWithdrawals[address(msg.sender)] = pendingWithdrawals[address(msg.sender)] + sub_cc9adee7[arg1].field_768 - (sub_cc9adee7[arg1].field_768 / 20)
    emit BlobBought(sub_cc9adee7[arg1].field_768, arg1, msg.sender, address(sub_cc9adee7[arg1].field_512));
    stor1 = 1
}

function buyBlob(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'AvaxBlobMarket: Blob does not exist'
    if not uint8(sub_a1c3b053[arg1].field_0):
        revert with 0, 'AvaxBlobMarket: Blob is not for sale'
    if address(sub_a1c3b053[arg1].field_1024):
        if address(sub_a1c3b053[arg1].field_1024) != msg.sender:
            revert with 0, 'AvaxBlobMarket: Blob can not be sold to you'
    if msg.value < sub_a1c3b053[arg1].field_768:
        revert with 0, 'AvaxBlobMarket: Blob min value has not been reached'
    require ext_code.size(stor2)
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(sub_a1c3b053[arg1].field_512) != ext_call.return_data[12 len 20]:
        revert with 0, 'AvaxBlobMarket: Seller does not own the blob anymore'
    if address(sub_cc9adee7[arg1].field_512) == msg.sender:
        if pendingWithdrawals[address(msg.sender)] > -sub_cc9adee7[arg1].field_768 - 1:
            revert with 'NH{q', 17
        pendingWithdrawals[address(msg.sender)] += sub_cc9adee7[arg1].field_768
        uint8(sub_cc9adee7[arg1].field_0) = 0
        sub_cc9adee7[arg1].field_256 = arg1
        address(sub_cc9adee7[arg1].field_512) = 0
        sub_cc9adee7[arg1].field_768 % 1 = 0
        sub_cc9adee7[arg1].field_768 = 0
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args address(sub_a1c3b053[arg1].field_512), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    lastDividendAt[ext_call.return_data[0]] = totalDividend
    if msg.value < msg.value / 20:
        revert with 'NH{q', 17
    if reflectionBalance > -(msg.value / 20) - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value / 20
    require ext_code.size(stor2)
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / 20 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / 20 / ext_call.return_data[0]
    if pendingWithdrawals[address(stor3[arg1].field_512)] > -msg.value + (msg.value / 20) - 1:
        revert with 'NH{q', 17
    pendingWithdrawals[address(stor3[arg1].field_512)] = pendingWithdrawals[address(stor3[arg1].field_512)] + msg.value - (msg.value / 20)
    emit BlobBought(msg.value, arg1, address(sub_a1c3b053[arg1].field_512), msg.sender);
    stor1 = 1
}

function claimRewards() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6377a51f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x6377a51f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _11
    require _10 + (32 * _11) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _10 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _11:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        _36 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[32] = 10
        _37 = sha3(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128], 10)
        if totalDividend < lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        if totalDividend - lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] > 0:
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[32] = 10
            lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = totalDividend
            mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(stor2)
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args _36
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == mem[_41 + 12 len 20]
            call mem[_41 + 12 len 20] with:
               value totalDividend - stor[_37] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor1 = 1
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6377a51f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6377a51f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        if idx >= _9:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[32] = 10
        if totalDividend < lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}



}
