contract main {




// =====================  Runtime code  =====================


address owner;
uint8 sub_31fdbd24; offset 160
uint128 stor1; offset 160
address sub_1a5fa74dAddress;
uint256 sub_6a166964;
uint256 minPrice;
array of struct tokenOfOwnerByIndex;
mapping of uint256 sub_ad0c6142;
array of struct sub_429e852a;
mapping of uint256 sub_eb762378;
array of struct sub_47cf86c3;
array of struct sub_3834dda4;

function sub_1a5fa74d(?) {
    return sub_1a5fa74dAddress
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 0, 'owner index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0, 
           tokenOfOwnerByIndex[address(arg1)][arg2].field_256,
           tokenOfOwnerByIndex[address(arg1)][arg2].field_512,
           tokenOfOwnerByIndex[address(arg1)][arg2].field_768,
           bool(tokenOfOwnerByIndex[address(arg1)][arg2].field_928),
           tokenOfOwnerByIndex[address(arg1)][arg2].field_1024,
           tokenOfOwnerByIndex[address(arg1)][arg2].field_1280
}

function sub_31fdbd24(?) {
    return bool(sub_31fdbd24)
}

function sub_3834dda4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_3834dda4[arg1].field_0
    return sub_3834dda4[arg1][arg2].field_0, 
           sub_3834dda4[arg1][arg2].field_256,
           sub_3834dda4[arg1][arg2].field_512,
           sub_3834dda4[arg1][arg2].field_768,
           bool(sub_3834dda4[arg1][arg2].field_928),
           sub_3834dda4[arg1][arg2].field_1024,
           sub_3834dda4[arg1][arg2].field_1280
}

function sub_429e852a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_429e852a.length:
        revert with 0, 'global index out of bounds'
    return sub_429e852a[arg1].field_0, 
           sub_429e852a[arg1].field_256,
           sub_429e852a[arg1].field_512,
           sub_429e852a[arg1].field_768,
           bool(sub_429e852a[arg1].field_928),
           sub_429e852a[arg1].field_1024,
           sub_429e852a[arg1].field_1280
}

function sub_47cf86c3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_47cf86c3[arg1].field_0
    return sub_47cf86c3[arg1][arg2].field_0, 
           sub_47cf86c3[arg1][arg2].field_256,
           sub_47cf86c3[arg1][arg2].field_512,
           sub_47cf86c3[arg1][arg2].field_768,
           bool(sub_47cf86c3[arg1][arg2].field_928),
           sub_47cf86c3[arg1][arg2].field_1024,
           sub_47cf86c3[arg1][arg2].field_1280
}

function sub_6a166964(?) {
    return sub_6a166964
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function owner() {
    return owner
}

function sub_8f98cf57(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3834dda4[address(arg1)].field_0
}

function totalOffers() {
    return sub_429e852a.length
}

function sub_ad0c6142(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_ad0c6142[arg1][arg2]
}

function sub_b85d8e43(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47cf86c3[address(arg1)].field_0
}

function minPrice() {
    return minPrice
}

function sub_eb762378(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_eb762378[arg1]
}

function _fallback() payable {
    revert
}

function closeMarketplace() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c5b49a73(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_1a5fa74dAddress:
        revert with 0, 'Contract address is not set'
    stor1 = 1
}

function sub_82a1cb24(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Contract address cannot be null'
    sub_1a5fa74dAddress = address(arg1)
}

function withdrawFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(sub_31fdbd24) != 1:
        revert with 0, 'Marketplace is closed'
    require ext_code.size(sub_1a5fa74dAddress)
    staticcall sub_1a5fa74dAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender does not own this item'
    if arg2 < minPrice:
        revert with 0, 'Price is too low'
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_256 = arg2
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_512 = msg.sender
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_768 = 0
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_1024 = 0
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_928 = 1
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_1024 = sub_429e852a.length
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_1280 = 0
    sub_ad0c6142[address(msg.sender)][stor6.length] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    sub_eb762378[stor6.length] = sub_429e852a.length
    sub_429e852a.length++
    sub_429e852a[sub_429e852a.length].field_0 = arg1
    sub_429e852a[sub_429e852a.length].field_256 = arg2
    sub_429e852a[sub_429e852a.length].field_512 = msg.sender
    sub_429e852a[sub_429e852a.length].field_768 = 0
    sub_429e852a[sub_429e852a.length].field_1024 = 0
    sub_429e852a[sub_429e852a.length].field_928 = 1
    sub_429e852a[sub_429e852a.length].field_1024 = sub_429e852a.length
    sub_429e852a[sub_429e852a.length].field_1280 = 0
}

function removeOffer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(sub_31fdbd24) != 1:
        revert with 0, 'Marketplace is closed'
    if arg1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_429e852a[arg1].field_512 != arg2:
        revert with 0, 'Sender does not own this item'
    if not sub_429e852a[arg1].field_928:
        revert with 0, 'Offer is closed'
    if sub_429e852a.length < 1:
        revert with 'NH{q', 17
    if sub_429e852a.length - 1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_eb762378[arg1] >= sub_429e852a.length:
        revert with 'NH{q', 50
    if tokenOfOwnerByIndex[address(arg2)].field_0 < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[address(arg2)].field_0 - 1 >= tokenOfOwnerByIndex[address(arg2)].field_0:
        revert with 'NH{q', 50
    if sub_ad0c6142[address(arg2)][arg1] >= tokenOfOwnerByIndex[address(arg2)].field_0:
        revert with 'NH{q', 50
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_0 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_256 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_512 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_768 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_928 = Mask(96, 0, bool(tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0))
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_1024 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_1280 = tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0
    if sub_ad0c6142[address(arg2)][arg1] >= tokenOfOwnerByIndex[address(arg2)].field_0:
        revert with 'NH{q', 50
    tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)][arg1]].field_1024 = arg1
    sub_ad0c6142[address(arg2)][stor4[address(arg2)][stor4[address(arg2)].field_0].field_0] = 0
    if not tokenOfOwnerByIndex[address(arg2)].field_0:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = 0
    tokenOfOwnerByIndex[address(arg2)].field_0--
    if sub_429e852a[sub_429e852a.length].field_0 != sub_429e852a[stor7[arg1]].field_512:
        if tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0 - 1 >= tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor6[stor6.length].field_0][tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0].field_0 = arg1
    if sub_429e852a.length < 1:
        revert with 'NH{q', 17
    if sub_429e852a.length - 1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_eb762378[arg1] >= sub_429e852a.length:
        revert with 'NH{q', 50
    sub_429e852a[stor7[arg1]].field_0 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_256 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_512 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_768 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_928 = Mask(96, 0, bool(sub_429e852a[sub_429e852a.length].field_0))
    sub_429e852a[stor7[arg1]].field_1024 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_1280 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_1024 = arg1
    sub_eb762378[stor6.length - 1] = 0
    if not sub_429e852a.length:
        revert with 'NH{q', 49
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a.length--
}

function buyItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(sub_31fdbd24) != 1:
        revert with 0, 'Marketplace is closed'
    if arg1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    require ext_code.size(sub_1a5fa74dAddress)
    staticcall sub_1a5fa74dAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args sub_429e852a[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'The sender already owns this item'
    if sub_429e852a[arg1].field_256 != msg.value:
        revert with 0, 'The sent amount is too low'
    if not sub_429e852a[arg1].field_928:
        revert with 0, 'Offer is closed'
    require ext_code.size(sub_1a5fa74dAddress)
    call sub_1a5fa74dAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sub_429e852a[arg1].field_512, msg.sender, sub_429e852a[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_47cf86c3[address(msg.sender)].field_0++
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_0 = sub_429e852a[arg1].field_0
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_256 = sub_429e852a[arg1].field_256
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_512 = sub_429e852a[arg1].field_512
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_768 = msg.sender
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_928 = Mask(96, 0, bool(sub_429e852a[arg1].field_928))
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_1024 = sub_429e852a[arg1].field_1024
    sub_47cf86c3[address(msg.sender)][sub_47cf86c3[address(msg.sender)].field_0].field_1280 = block.timestamp
    sub_3834dda4[stor6[arg1].field_512].field_0++
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_0 = sub_429e852a[arg1].field_0
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_256 = sub_429e852a[arg1].field_256
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_512 = sub_429e852a[arg1].field_512
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_768 = msg.sender
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_928 = Mask(96, 0, bool(sub_429e852a[arg1].field_928))
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_1024 = sub_429e852a[arg1].field_1024
    sub_3834dda4[stor6[arg1].field_512][sub_3834dda4[stor6[arg1].field_512].field_0].field_1280 = block.timestamp
    if sub_429e852a[arg1].field_256 and sub_6a166964 > -1 / sub_429e852a[arg1].field_256:
        revert with 'NH{q', 17
    if sub_429e852a[arg1].field_256 < sub_429e852a[arg1].field_256 * sub_6a166964 / 100 / 100:
        revert with 'NH{q', 17
    if bool(sub_31fdbd24) != 1:
        revert with 0, 'Marketplace is closed'
    if arg1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_429e852a[arg1].field_512 != sub_429e852a[arg1].field_512:
        revert with 0, 'Sender does not own this item'
    if not sub_429e852a[arg1].field_928:
        revert with 0, 'Offer is closed'
    if sub_429e852a.length < 1:
        revert with 'NH{q', 17
    if sub_429e852a.length - 1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_eb762378[arg1] >= sub_429e852a.length:
        revert with 'NH{q', 50
    if tokenOfOwnerByIndex[stor6[arg1].field_512].field_0 < 1:
        revert with 'NH{q', 17
    if tokenOfOwnerByIndex[stor6[arg1].field_512].field_0 - 1 >= tokenOfOwnerByIndex[stor6[arg1].field_512].field_0:
        revert with 'NH{q', 50
    if sub_ad0c6142[stor6[arg1].field_512][arg1] >= tokenOfOwnerByIndex[stor6[arg1].field_512].field_0:
        revert with 'NH{q', 50
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_0 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_256 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_512 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_768 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_928 = Mask(96, 0, bool(tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0))
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_1024 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_1280 = tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0
    if sub_ad0c6142[stor6[arg1].field_512][arg1] >= tokenOfOwnerByIndex[stor6[arg1].field_512].field_0:
        revert with 'NH{q', 50
    tokenOfOwnerByIndex[stor6[arg1].field_512][stor5[stor6[arg1].field_512][arg1]].field_1024 = arg1
    sub_ad0c6142[stor6[arg1].field_512][stor4[stor6[arg1].field_512][stor4[stor6[arg1].field_512].field_0].field_0] = 0
    if not tokenOfOwnerByIndex[stor6[arg1].field_512].field_0:
        revert with 'NH{q', 49
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512][tokenOfOwnerByIndex[stor6[arg1].field_512].field_0].field_0 = 0
    tokenOfOwnerByIndex[stor6[arg1].field_512].field_0--
    if sub_429e852a[sub_429e852a.length].field_0 != sub_429e852a[stor7[arg1]].field_512:
        if tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0 < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0 - 1 >= tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor6[stor6.length].field_0][tokenOfOwnerByIndex[stor6[stor6.length].field_0].field_0].field_0 = arg1
    if sub_429e852a.length < 1:
        revert with 'NH{q', 17
    if sub_429e852a.length - 1 >= sub_429e852a.length:
        revert with 'NH{q', 50
    if sub_eb762378[arg1] >= sub_429e852a.length:
        revert with 'NH{q', 50
    sub_429e852a[stor7[arg1]].field_0 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_256 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_512 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_768 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_928 = Mask(96, 0, bool(sub_429e852a[sub_429e852a.length].field_0))
    sub_429e852a[stor7[arg1]].field_1024 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_1280 = sub_429e852a[sub_429e852a.length].field_0
    sub_429e852a[stor7[arg1]].field_1024 = arg1
    sub_eb762378[stor6.length - 1] = 0
    if not sub_429e852a.length:
        revert with 'NH{q', 49
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a[sub_429e852a.length].field_0 = 0
    sub_429e852a.length--
    call sub_429e852a[arg1].field_512 with:
       value sub_429e852a[arg1].field_256 - (sub_429e852a[arg1].field_256 * sub_6a166964 / 100 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
