contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
array of struct offers;
mapping of struct stor5;

function offers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < offers.length
    return offers[arg1].field_0, 
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           bool(offers[arg1].field_1280),
           bool(offers[arg1].field_1288)
}

function owner() {
    return owner
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

function removeOffer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if offers[stor5[arg1].field_768].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be the seller/owner to remove an offer'
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    offers[stor5[arg1].field_768].field_1288 = 0
    stor5[arg1].field_0 = 0
    stor5[arg1].field_256 = 0
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1288 = 0
    emit artworkRemoved(msg.sender, arg1, arg2);
}

function changePrice(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor5[arg2].field_768 >= offers.length:
        revert with 'NH{q', 50
    if offers[stor5[arg2].field_768].field_0 != msg.sender:
        revert with 0, 'Must be seller'
    if arg1 < 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Price must be greater than or equal to 1000 wei'
    if stor5[arg2].field_768 >= offers.length:
        revert with 'NH{q', 50
    if bool(offers[stor5[arg2].field_768].field_1288) != 1:
        revert with 0, 'Offer must be active'
    if stor5[arg2].field_768 >= offers.length:
        revert with 'NH{q', 50
    if offers[stor5[arg2].field_768].field_1280:
        revert with 0, 'Item already sold'
    if stor5[arg2].field_768 >= offers.length:
        revert with 'NH{q', 50
    offers[stor5[arg2].field_768].field_512 = arg1
    if stor5[arg2].field_768 >= offers.length:
        revert with 'NH{q', 50
    emit priceChanged(address(msg.sender), arg1, address(arg3), arg2, offers[stor5[arg2].field_768].field_768);
}

function setOffer(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor1)
    staticcall stor1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only the owner of the artwork is allowed to do this'
    require ext_code.size(stor1)
    staticcall stor1.0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Not approved to sell'
    if arg1 < 1000:
        revert with 0, 'Price must be greater than or equal to 1000 wei'
    if stor5[arg2].field_1288:
        revert with 0, 'Item is already on sale'
    stor5[arg2].field_0 = msg.sender
    stor5[arg2].field_256 = arg3
    stor5[arg2].field_512 = arg1
    stor5[arg2].field_768 = offers.length
    stor5[arg2].field_1024 = arg2
    stor5[arg2].field_1280 = 0
    stor5[arg2].field_1288 = 1
    offers.length++
    offers[offers.length].field_0 = msg.sender
    offers[offers.length].field_256 = arg3
    offers[offers.length].field_512 = arg1
    offers[offers.length].field_768 = offers.length
    offers[offers.length].field_1024 = arg2
    offers[offers.length].field_1280 = 0
    offers[offers.length].field_1288 = 1
    emit artworkAdded(stor1, msg.sender, arg1, arg2, offers.length, 0);
}

function buyArt(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if offers[stor5[arg1].field_768].field_512 != msg.value:
        revert with 0, 'Payment must be equal to price of the art'
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if offers[stor5[arg1].field_768].field_0 == msg.sender:
        revert with 0, 'Cannot buy your own artwork'
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if bool(offers[stor5[arg1].field_768].field_1288) != 1:
        revert with 0, 'Offer must be active'
    stor5[arg1].field_0 = 0
    stor5[arg1].field_256 = 0
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1288 = 0
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    offers[stor5[arg1].field_768].field_1280 = 1
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    offers[stor5[arg1].field_768].field_1288 = 0
    require ext_code.size(stor1)
    call stor1.0x42842e0e with:
         gas gas_remaining wei
        args stor5[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    require ext_code.size(stor1)
    staticcall stor1.0x1af9cf49 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if offers[stor5[arg1].field_768].field_512 and ext_call.return_data[31 len 1] > -1 / offers[stor5[arg1].field_768].field_512:
        revert with 'NH{q', 17
    if offers[stor5[arg1].field_768].field_512 and 2 > -1 / offers[stor5[arg1].field_768].field_512:
        revert with 'NH{q', 17
    if offers[stor5[arg1].field_768].field_512 < offers[stor5[arg1].field_768].field_512 * ext_call.return_data[31 len 1] / 100:
        revert with 'NH{q', 17
    if offers[stor5[arg1].field_768].field_512 - (offers[stor5[arg1].field_768].field_512 * ext_call.return_data[31 len 1] / 100) < 2 * offers[stor5[arg1].field_768].field_512 / 100:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0xd48e638a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor2)
    call stor2.sendPayment(address arg1) with:
       value offers[stor5[arg1].field_768].field_512 * uint8(ext_call.return_data[0]) / 100 wei
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.sendPayment(address arg1) with:
       value offers[stor5[arg1].field_768].field_512 - (offers[stor5[arg1].field_768].field_512 * uint8(ext_call.return_data[0]) / 100) - (2 * offers[stor5[arg1].field_768].field_512 / 100) wei
         gas gas_remaining wei
        args stor5[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.sendPayment(address arg1) with:
       value 2 * offers[stor5[arg1].field_768].field_512 / 100 wei
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    if stor5[arg1].field_768 >= offers.length:
        revert with 'NH{q', 50
    emit artworkSold(address(arg2), msg.sender, offers[stor5[arg1].field_768].field_512, offers[stor5[arg1].field_768].field_1024, offers[stor5[arg1].field_768].field_768);
}



}
