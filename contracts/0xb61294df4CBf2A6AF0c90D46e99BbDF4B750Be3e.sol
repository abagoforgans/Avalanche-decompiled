contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct tokenId;
address sub_2e3fe7d4Address;
address communityAddress;

function sub_042a6185(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return bool(tokenId[arg1].field_1032)
}

function getTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_512
}

function getRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return bool(tokenId[arg1].field_1024)
}

function sub_2e3fe7d4(?) {
    return sub_2e3fe7d4Address
}

function getTokenAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_256
}

function getTotal() {
    return tokenId.length
}

function owner() {
    return owner
}

function sales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tokenId.length
    return tokenId[arg1].field_0, 
           tokenId[arg1].field_256,
           tokenId[arg1].field_512,
           tokenId[arg1].field_768,
           bool(tokenId[arg1].field_1024),
           bool(tokenId[arg1].field_1032)
}

function getSeller(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_0
}

function community() {
    return communityAddress
}

function getPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_768
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

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    emit SignerChanged(arg1);
}

function sub_c5ee9636(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    communityAddress = address(arg1)
    emit 0xd7d8a202: communityAddress
}

function sub_49ae73d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e3fe7d4Address = address(arg1)
    emit 0x1f630f16: sub_2e3fe7d4Address
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

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_1032:
        revert with 0, 'sale already ended'
    if arg1 >= tokenId.length:
        revert with 'NH{q', 50
    if tokenId[arg1].field_0 != msg.sender:
        revert with 0, 'only seller can cancel'
    if arg1 >= tokenId.length:
        revert with 'NH{q', 50
    tokenId[arg1].field_1032 = 1
    require ext_code.size(tokenId[arg1].field_256)
    call tokenId[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, tokenId[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SaleCancelled(arg1);
}

function sub_baeff08d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 320:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    mem[ceil32(ceil32(arg1.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg1.length)) + 149] = _4
    mem[ceil32(ceil32(arg1.length)) + 181] = _5
    mem[ceil32(ceil32(arg1.length)) + 213] = _6
    mem[ceil32(ceil32(arg1.length)) + 245] = _7
    mem[ceil32(ceil32(arg1.length)) + 97] = 148
    if arg1.length < 289:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 278 len 96] = mem[321 len 96]
    if mem[ceil32(ceil32(arg1.length)) + 341] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
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
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length != 320:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    mem[ceil32(ceil32(arg4.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg4.length)) + 149] = _4
    mem[ceil32(ceil32(arg4.length)) + 181] = _5
    mem[ceil32(ceil32(arg4.length)) + 213] = _6
    mem[ceil32(ceil32(arg4.length)) + 245] = _7
    mem[ceil32(ceil32(arg4.length)) + 97] = 148
    if arg4.length < 289:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg4.length)) + 278 len 96] = mem[321 len 96]
    if mem[ceil32(ceil32(arg4.length)) + 341] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function buyNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenId.length:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_1032:
        revert with 0, 'sale already ended'
    if arg1 >= tokenId.length:
        revert with 'NH{q', 50
    if tokenId[arg1].field_768 != msg.value:
        revert with 0, 'amount not equal to price'
    if arg1 >= tokenId.length:
        revert with 'NH{q', 50
    tokenId[arg1].field_1032 = 1
    if arg1 >= tokenId.length:
        revert with 'NH{q', 50
    if not tokenId[arg1].field_1024:
        if tokenId[arg1].field_768 / 800 > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 'NH{q', 17
        call sub_2e3fe7d4Address with:
           value 15 * tokenId[arg1].field_768 / 800 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if tokenId[arg1].field_768 / 800 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 'NH{q', 17
        call communityAddress with:
           value 5 * tokenId[arg1].field_768 / 800 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        if tokenId[arg1].field_1024:
            call 0x0 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        if tokenId[arg1].field_768 < 15 * tokenId[arg1].field_768 / 800:
            revert with 'NH{q', 17
        if tokenId[arg1].field_768 - (15 * tokenId[arg1].field_768 / 800) < 5 * tokenId[arg1].field_768 / 800:
            revert with 'NH{q', 17
        if tokenId[arg1].field_768 - (20 * tokenId[arg1].field_768 / 800) < 0:
            revert with 'NH{q', 17
        call tokenId[arg1].field_0 with:
           value tokenId[arg1].field_768 - (20 * tokenId[arg1].field_768 / 800) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        require ext_code.size(tokenId[arg1].field_256)
        call tokenId[arg1].field_256.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, tokenId[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x410787fe: arg1, msg.sender, 0
    else:
        require ext_code.size(tokenId[arg1].field_256)
        staticcall tokenId[arg1].field_256.royaltyInfo(uint256 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args tokenId[arg1].field_512, tokenId[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        if tokenId[arg1].field_768 / 800 > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 'NH{q', 17
        call sub_2e3fe7d4Address with:
           value 15 * tokenId[arg1].field_768 / 800 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if tokenId[arg1].field_768 / 800 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 'NH{q', 17
        call communityAddress with:
           value 5 * tokenId[arg1].field_768 / 800 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        if tokenId[arg1].field_1024:
            call ext_call.return_data[12 len 20] with:
               value ext_call.return_data[32] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        if tokenId[arg1].field_768 < 15 * tokenId[arg1].field_768 / 800:
            revert with 'NH{q', 17
        if tokenId[arg1].field_768 - (15 * tokenId[arg1].field_768 / 800) < 5 * tokenId[arg1].field_768 / 800:
            revert with 'NH{q', 17
        if tokenId[arg1].field_768 - (20 * tokenId[arg1].field_768 / 800) < ext_call.return_data[32]:
            revert with 'NH{q', 17
        call tokenId[arg1].field_0 with:
           value tokenId[arg1].field_768 - (20 * tokenId[arg1].field_768 / 800) - ext_call.return_data[32] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 >= tokenId.length:
            revert with 'NH{q', 50
        require ext_code.size(tokenId[arg1].field_256)
        call tokenId[arg1].field_256.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, tokenId[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x410787fe: arg1, msg.sender, ext_call.return_data[32]
}



}
