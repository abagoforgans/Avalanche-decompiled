contract main {




// =====================  Runtime code  =====================


const name = 'AvaxCoin Marketplace', 0


address owner;
uint256 feePercent;
address treasuryAddress;
array of struct tokens;
mapping of uint256 tokenMap;
array of struct listings;
mapping of uint256 tokenListing;
uint8 stor7;
uint256 stor7;

function tokenMap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenMap[arg1]
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tokens.length
    return tokens[arg1].field_0, tokens[arg1].field_256
}

function paused() {
    return bool(uint8(stor7))
}

function treasury() {
    return treasuryAddress
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function getTokenListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenListing[address(arg1)][arg2] >= listings.length:
        revert with 'NH{q', 50
    return listings[stor6[address(arg1)][arg2]].field_0, 
           listings[stor6[address(arg1)][arg2]].field_256,
           listings[stor6[address(arg1)][arg2]].field_512,
           listings[stor6[address(arg1)][arg2]].field_768,
           listings[stor6[address(arg1)][arg2]].field_1024,
           listings[stor6[address(arg1)][arg2]].field_1280
}

function totalListings() {
    return listings.length
}

function listings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < listings.length
    return listings[arg1].field_0, 
           listings[arg1].field_256,
           listings[arg1].field_512,
           listings[arg1].field_768,
           listings[arg1].field_1024,
           listings[arg1].field_1280
}

function _fallback() payable {
    revert
}

function flipPause() {
    uint256(stor7) = not bool(uint8(stor7)) or Mask(248, 8, uint256(stor7))
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

function addToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenMap[address(arg1)]:
        revert with 0, 'Token Exists'
    tokens.length++
    tokens[tokens.length].field_0 = arg1
    tokens[tokens.length].field_256 = arg2
    tokenMap[address(arg1)] = tokens.length
    emit TokenAdded(address(arg1), arg2);
}

function updatePrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= listings.length:
        revert with 0, 'Listing Invalid'
    if listings[arg1].field_256 != msg.sender:
        revert with 0, 'Permission Denied'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    listings[arg1].field_1280 = arg2
    emit 0xc7570597: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280
}

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listings.length:
        revert with 0, 'Listing Invalid'
    if listings[arg1].field_256 != msg.sender:
        revert with 0, 'Permission Denied'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    if listings[arg1].field_1024 <= 0:
        revert with 0, 'Amount Insufficient'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    listings[arg1].field_1024 = 0
    require ext_code.size(listings[arg1].field_512)
    call listings[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, listings[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    emit 0xb37ed1ff: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280
}

function list(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor7):
        revert with 0, 'Sale Paused'
    if arg1 >= tokens.length:
        revert with 'NH{q', 50
    require ext_code.size(tokens[arg1].field_0)
    call tokens[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= tokens.length:
        revert with 'NH{q', 50
    listings.length++
    listings[listings.length].field_0 = listings.length
    listings[listings.length].field_256 = msg.sender
    listings[listings.length].field_512 = tokens[arg1].field_0
    listings[listings.length].field_768 = arg2
    listings[listings.length].field_1024 = 1
    listings[listings.length].field_1280 = arg3
    tokenListing[stor3[arg1].field_0][arg2] = listings.length
    emit 0xac0c434f: listings.length, msg.sender, tokens[arg1].field_0, arg2, 1, arg3
}

function fulfill(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listings.length:
        revert with 0, 'Listing Invalid'
    if listings[arg1].field_256 == msg.sender:
        revert with 0, 'Self Fulfillment'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    if msg.value < listings[arg1].field_1280:
        revert with 0, 'Value Insufficient'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    if listings[arg1].field_1024 <= 0:
        revert with 0, 'Amount Insufficient'
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    listings[arg1].field_1024 = 0
    if msg.value and feePercent > -1 / msg.value:
        revert with 'NH{q', 17
    call treasuryAddress with:
       value msg.value * feePercent / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    if tokenMap[stor5[arg1].field_512] < 1:
        revert with 'NH{q', 17
    if tokenMap[stor5[arg1].field_512] - 1 >= tokens.length:
        revert with 'NH{q', 50
    if msg.value and tokens[stor4[stor5[arg1].field_512] - 1].field_256 > -1 / msg.value:
        revert with 'NH{q', 17
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    require ext_code.size(listings[arg1].field_512)
    call listings[arg1].field_512.raiseReflection() with:
       value msg.value * tokens[stor4[stor5[arg1].field_512] - 1].field_256 / 10000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    if msg.value < msg.value * feePercent / 10000:
        revert with 'NH{q', 17
    if msg.value - (msg.value * feePercent / 10000) < msg.value * tokens[stor4[stor5[arg1].field_512] - 1].field_256 / 10000:
        revert with 'NH{q', 17
    call listings[arg1].field_256 with:
       value msg.value - (msg.value * feePercent / 10000) - (msg.value * tokens[stor4[stor5[arg1].field_512] - 1].field_256 / 10000) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    require ext_code.size(listings[arg1].field_512)
    call listings[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, listings[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= listings.length:
        revert with 'NH{q', 50
    emit 0x5ac32e88: listings[arg1].field_0, listings[arg1].field_256, listings[arg1].field_512, listings[arg1].field_768, listings[arg1].field_1024, listings[arg1].field_1280
}



}
