contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of struct itemsForSale;
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of address stor6;
address owner;
address stor8;

function itemsForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < itemsForSale.length
    return itemsForSale[arg1].field_0, 
           itemsForSale[arg1].field_256,
           itemsForSale[arg1].field_512,
           itemsForSale[arg1].field_768,
           itemsForSale[arg1].field_1024
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setFeesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner can set fees address'
    if not arg1:
        revert with 0, 'Tried to set 0 address'
    stor8 = arg1
    stor0 = 1
}

function setRoyalties(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner can set royalties'
    if stor4[address(arg1)]:
        stor5[address(arg1)] = 0
        stor6[address(arg1)] = 0
    stor4[address(arg1)] = 1
    stor5[address(arg1)] = arg3
    stor6[address(arg1)] = arg2
    stor0 = 1
}

function delistToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 >= itemsForSale.length:
        revert with 0, 'Could not find item'
    if itemsForSale[arg1].field_0 != arg1:
        revert with 0, 'Could not find item'
    if arg1 >= itemsForSale.length:
        revert with 'NH{q', 50
    if not stor3[stor1[arg1].field_256][stor1[arg1].field_512]:
        revert with 0, 'Item is already sold!'
    if arg1 >= itemsForSale.length:
        revert with 'NH{q', 50
    if itemsForSale[arg1].field_768 != msg.sender:
        revert with 0, 'Only NFT seller can delist token'
    if arg1 >= itemsForSale.length:
        revert with 'NH{q', 50
    stor3[stor1[arg1].field_256][stor1[arg1].field_512] = 0
    stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
    itemsForSale[arg1].field_0 = 0
    itemsForSale[arg1].field_256 = 0
    itemsForSale[arg1].field_512 = 0
    itemsForSale[arg1].field_768 = 0
    itemsForSale[arg1].field_1024 = 0
    emit 0x8360513b: arg1
    stor0 = 1
}

function sub_4fde5c0d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor2[address(arg1)][arg2] >= itemsForSale.length:
        revert with 'NH{q', 50
    if itemsForSale[stor2[address(arg1)][arg2]].field_768 != ext_call.return_data[12 len 20]:
        stor3[address(arg1)][arg2] = 0
        stor2[address(arg1)][arg2] = 0
        if stor2[address(arg1)][arg2] >= itemsForSale.length:
            revert with 'NH{q', 50
        itemsForSale[stor2[address(arg1)][arg2]].field_0 = 0
        itemsForSale[stor2[address(arg1)][arg2]].field_256 = 0
        itemsForSale[stor2[address(arg1)][arg2]].field_512 = 0
        itemsForSale[stor2[address(arg1)][arg2]].field_768 = 0
        itemsForSale[stor2[address(arg1)][arg2]].field_1024 = 0
        emit 0x8360513b: stor2[address(arg1)][arg2]
}

function addItemToMarket(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    staticcall arg2.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg2)
    staticcall arg2.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Item not approved for transfer'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor3[address(arg2)][arg1]:
        if stor2[address(arg2)][arg1] >= itemsForSale.length:
            revert with 'NH{q', 50
        require ext_code.size(arg2)
        staticcall arg2.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == itemsForSale[stor2[address(arg2)][arg1]].field_768:
            revert with 0, 'Item is already up for sale!'
    if stor3[address(arg2)][arg1]:
        if stor2[address(arg2)][arg1] >= itemsForSale.length:
            revert with 'NH{q', 50
        itemsForSale[stor2[address(arg2)][arg1]].field_768 = msg.sender
        if stor2[address(arg2)][arg1] >= itemsForSale.length:
            revert with 'NH{q', 50
        itemsForSale[stor2[address(arg2)][arg1]].field_1024 = arg3
        if stor2[address(arg2)][arg1] >= itemsForSale.length:
            revert with 'NH{q', 50
        if itemsForSale[stor2[address(arg2)][arg1]].field_0 != stor2[address(arg2)][arg1]:
            revert with 'NH{q', 1
        emit 0x42982e45: stor2[address(arg2)][arg1], arg1, address(arg2), arg3, msg.sender
        stor0 = 1
        return stor2[address(arg2)][arg1]
    stor2[address(arg2)][arg1] = itemsForSale.length
    itemsForSale.length++
    itemsForSale[itemsForSale.length].field_0 = itemsForSale.length
    itemsForSale[itemsForSale.length].field_256 = arg2
    itemsForSale[itemsForSale.length].field_512 = arg1
    itemsForSale[itemsForSale.length].field_768 = msg.sender
    itemsForSale[itemsForSale.length].field_1024 = arg3
    stor3[address(arg2)][arg1] = 1
    if itemsForSale.length >= itemsForSale.length:
        revert with 'NH{q', 50
    if itemsForSale[itemsForSale.length].field_0 != itemsForSale.length:
        revert with 'NH{q', 1
    emit 0x42982e45: itemsForSale.length, arg1, address(arg2), arg3, msg.sender
    stor0 = 1
    return itemsForSale.length
}

function buyItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= itemsForSale.length:
        revert with 'NH{q', 50
    stor3[stor1[arg1].field_256][stor1[arg1].field_512] = 0
    stor2[stor1[arg1].field_256][stor1[arg1].field_512] = 0
    itemsForSale[arg1].field_0 = 0
    itemsForSale[arg1].field_256 = 0
    itemsForSale[arg1].field_512 = 0
    itemsForSale[arg1].field_768 = 0
    itemsForSale[arg1].field_1024 = 0
    if not stor4[stor1[arg1].field_256]:
        if msg.value and 25 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value and 975 > -1 / msg.value:
            revert with 'NH{q', 17
        if 25 * msg.value / 1000 > -(975 * msg.value / 1000) - 1:
            revert with 'NH{q', 17
        if msg.value < (25 * msg.value / 1000) + (975 * msg.value / 1000):
            revert with 'NH{q', 17
        if msg.value - (25 * msg.value / 1000) - (975 * msg.value / 1000) <= 0:
            call stor8 with:
               value 25 * msg.value / 1000 wei
                 gas gas_remaining wei
        else:
            if 25 * msg.value / 1000 > -(975 * msg.value / 1000) - 1:
                revert with 'NH{q', 17
            if msg.value < (25 * msg.value / 1000) + (975 * msg.value / 1000):
                revert with 'NH{q', 17
            if 25 * msg.value / 1000 > -msg.value + (25 * msg.value / 1000) + (975 * msg.value / 1000) - 1:
                revert with 'NH{q', 17
            call stor8 with:
               value msg.value - (975 * msg.value / 1000) wei
                 gas gas_remaining wei
        call itemsForSale[arg1].field_768 with:
           value 975 * msg.value / 1000 wei
             gas gas_remaining wei
    else:
        if msg.value and stor5[stor1[arg1].field_256] > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value and 25 > -1 / msg.value:
            revert with 'NH{q', 17
        if 975 < stor5[stor1[arg1].field_256]:
            revert with 'NH{q', 17
        if msg.value and -stor5[stor1[arg1].field_256] + 975 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value * stor5[stor1[arg1].field_256] / 1000 > -(25 * msg.value / 1000) - 1:
            revert with 'NH{q', 17
        if (msg.value * stor5[stor1[arg1].field_256] / 1000) + (25 * msg.value / 1000) > -((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000) - 1:
            revert with 'NH{q', 17
        if msg.value < (msg.value * stor5[stor1[arg1].field_256] / 1000) + (25 * msg.value / 1000) + ((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000):
            revert with 'NH{q', 17
        if msg.value - (msg.value * stor5[stor1[arg1].field_256] / 1000) - (25 * msg.value / 1000) - ((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000) <= 0:
            call stor8 with:
               value 25 * msg.value / 1000 wei
                 gas gas_remaining wei
        else:
            if msg.value * stor5[stor1[arg1].field_256] / 1000 > -(25 * msg.value / 1000) - 1:
                revert with 'NH{q', 17
            if (msg.value * stor5[stor1[arg1].field_256] / 1000) + (25 * msg.value / 1000) > -((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000) - 1:
                revert with 'NH{q', 17
            if msg.value < (msg.value * stor5[stor1[arg1].field_256] / 1000) + (25 * msg.value / 1000) + ((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000):
                revert with 'NH{q', 17
            if 25 * msg.value / 1000 > -msg.value + (msg.value * stor5[stor1[arg1].field_256] / 1000) + (25 * msg.value / 1000) + ((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000) - 1:
                revert with 'NH{q', 17
            call stor8 with:
               value msg.value - (msg.value * stor5[stor1[arg1].field_256] / 1000) - ((975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000) wei
                 gas gas_remaining wei
        call itemsForSale[arg1].field_768 with:
           value (975 * msg.value) - (stor5[stor1[arg1].field_256] * msg.value) / 1000 wei
             gas gas_remaining wei
        call stor6[stor1[arg1].field_256] with:
           value msg.value * stor5[stor1[arg1].field_256] / 1000 wei
             gas gas_remaining wei
    require ext_code.size(itemsForSale[arg1].field_256)
    call itemsForSale[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args itemsForSale[arg1].field_768, msg.sender, itemsForSale[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit itemSold(arg1, msg.sender, itemsForSale[arg1].field_1024);
}



}
