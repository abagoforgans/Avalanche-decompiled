contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct tokenIdToAuction;
uint256 sub_28f6aa7b;
uint8 sub_e10fe958;
uint8 sub_87824609; offset 168
uint128 stor6; offset 168
address owner; offset 8

function sub_28f6aa7b(?) {
    return sub_28f6aa7b
}

function getAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tokenIdToAuction[arg1].field_384 > 0
    return tokenIdToAuction[arg1].field_0, tokenIdToAuction[arg1].field_256, tokenIdToAuction[arg1].field_384
}

function ownerCut() {
    return ownerCut
}

function sub_87824609(?) {
    return bool(sub_87824609)
}

function owner() {
    return owner
}

function sub_ac0de66f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_384
}

function getCurrentPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require tokenIdToAuction[arg1].field_384 > 0
    return tokenIdToAuction[arg1].field_256
}

function getSeller(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_0
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function sub_e10fe958(?) {
    return bool(sub_e10fe958)
}

function tokenIdToAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenIdToAuction[arg1].field_0, tokenIdToAuction[arg1].field_256, tokenIdToAuction[arg1].field_384
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_5b601bf8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 > 1
    stor1 = arg1
}

function sub_7d99ace8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 > 0
    stor0 = arg1
}

function setPauseStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor6 = Mask(88, 0, arg1)
}

function withdrawBalance() {
    require msg.sender == owner
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function setOwnerCut(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require 0 < arg1
    require arg1 < 10000
    ownerCut = arg1
}

function sub_687a4d19(?) {
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_28f6aa7b > test266151307():
        revert with 'NH{q', 65
    # nil
}

function sub_9b888124(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    # nil
}

function sub_c657e299(?) {
    require msg.sender == owner
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_28f6aa7b > test266151307():
        revert with 'NH{q', 65
    # nil
}

function sub_2c37efa9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 <= 10000
    ownerCut = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).supportsInterface(bytes4 rg1) with:
            gas gas_remaining wei
           args 0x9a20483d00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    nonFungibleContractAddress = address(arg1)
}

function cancelAuctionWhenPaused(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require bool(sub_87824609) == 1
    require tokenIdToAuction[arg1].field_384 > 0
    if tokenIdToAuction[arg1].field_0 != msg.sender:
        if owner != msg.sender:
            require msg.sender == this.address
    tokenIdToAuction[arg1].field_0 = 0
    tokenIdToAuction[arg1].field_256 = 0
    tokenIdToAuction[arg1].field_384 = 0
    if not sub_28f6aa7b:
        revert with 'NH{q', 17
    sub_28f6aa7b--
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args tokenIdToAuction[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
}

function cancelAuction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenIdToAuction[arg1].field_384 > 0:
        if tokenIdToAuction[arg1].field_0 != msg.sender:
            if owner != msg.sender:
                require msg.sender == this.address
        tokenIdToAuction[arg1].field_0 = 0
        tokenIdToAuction[arg1].field_256 = 0
        tokenIdToAuction[arg1].field_384 = 0
        if not sub_28f6aa7b:
            revert with 'NH{q', 17
        sub_28f6aa7b--
        require ext_code.size(nonFungibleContractAddress)
        call nonFungibleContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args tokenIdToAuction[arg1].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AuctionCancelled(arg1);
}

function sub_3b358bf3(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require not sub_87824609
    require arg2 == uint128(arg2)
    require ext_code.size(nonFungibleContractAddress)
    staticcall nonFungibleContractAddress.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == address(arg3)
    require sub_28f6aa7b < stor1
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    tokenIdToAuction[arg1].field_0 = address(arg3)
    tokenIdToAuction[arg1].field_256 = uint128(arg2)
    tokenIdToAuction[arg1].field_384 = uint64(block.timestamp)
    if sub_28f6aa7b == -1:
        revert with 'NH{q', 17
    sub_28f6aa7b++
    emit AuctionCreated(arg1, arg2 << 128, uint64(block.timestamp));
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not sub_87824609
    require tokenIdToAuction[arg1].field_384 > 0
    require msg.value >= tokenIdToAuction[arg1].field_256
    require uint128(msg.value - tokenIdToAuction[arg1].field_256) == msg.value - tokenIdToAuction[arg1].field_256
    tokenIdToAuction[arg1].field_0 = 0
    tokenIdToAuction[arg1].field_256 = 0
    tokenIdToAuction[arg1].field_384 = 0
    if not sub_28f6aa7b:
        revert with 'NH{q', 17
    sub_28f6aa7b--
    if tokenIdToAuction[arg1].field_256 <= 0:
        emit AuctionSuccessful(arg1, tokenIdToAuction[arg1].field_256, msg.sender);
        call msg.sender with:
           value msg.value - tokenIdToAuction[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if tokenIdToAuction[arg1].field_256 and ownerCut > -1 / tokenIdToAuction[arg1].field_256:
            revert with 'NH{q', 17
        if tokenIdToAuction[arg1].field_256 < tokenIdToAuction[arg1].field_256 * ownerCut / 10000:
            revert with 'NH{q', 17
        call tokenIdToAuction[arg1].field_0 with:
           value tokenIdToAuction[arg1].field_256 - (tokenIdToAuction[arg1].field_256 * ownerCut / 10000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit AuctionSuccessful(arg1, tokenIdToAuction[arg1].field_256, msg.sender);
        call msg.sender with:
           value msg.value - tokenIdToAuction[arg1].field_256 wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
