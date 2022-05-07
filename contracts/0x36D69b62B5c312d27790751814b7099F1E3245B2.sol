contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
address sub_2e3fe7d4Address;
address communityAddress;
uint256 stor6;
mapping of struct tokenId;

function sub_042a6185(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return bool(tokenId[arg1].field_2304)
}

function getTokenId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_512
}

function getRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return bool(tokenId[arg1].field_2312)
}

function sub_1b2a20f5(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_2048
}

function sub_2e3fe7d4(?) {
    return sub_2e3fe7d4Address
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenId[arg1].field_0, 
           tokenId[arg1].field_256,
           tokenId[arg1].field_512,
           tokenId[arg1].field_768,
           tokenId[arg1].field_1024,
           tokenId[arg1].field_1280,
           tokenId[arg1].field_1536,
           tokenId[arg1].field_1792,
           tokenId[arg1].field_2048,
           bool(tokenId[arg1].field_2304),
           bool(tokenId[arg1].field_2312)
}

function getTokenAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_256
}

function owner() {
    return owner
}

function getHighestBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_1024
}

function getEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_1280
}

function getClaimTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_1792
}

function getHighestBidder(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_768
}

function getSeller(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1].field_0
}

function community() {
    return communityAddress
}

function getBid(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    return tokenId[arg1][10][address(arg2)].field_0
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
    emit 0xd7d8a202: address(arg1)
}

function sub_49ae73d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e3fe7d4Address = address(arg1)
    emit 0x1f630f16: address(arg1)
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if msg.sender == tokenId[arg1].field_768:
        revert with 0, 'Highest bidder can't withdraw'
    if tokenId[arg1][10][msg.sender].field_0:
        tokenId[arg1][10][msg.sender].field_0 = 0
        call msg.sender with:
           value tokenId[arg1][10][msg.sender].field_0 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Payment failed'
        emit BidWithdrawn(msg.sender, arg1);
    stor2 = 1
    return 1
}

function claimNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_0 != msg.sender:
        revert with 0, 'Only seller can claim token back'
    if block.timestamp < tokenId[arg1].field_1792:
        revert with 0, 'Claim time not started yet'
    require ext_code.size(tokenId[arg1].field_256)
    call tokenId[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tokenId[arg1].field_0, tokenId[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NFTClaimed(arg1);
    stor2 = 1
}

function sub_8052427a(?) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_768 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only highest bidder can claim funds back'
    if block.timestamp < tokenId[arg1].field_1792:
        revert with 0, 'Claim time not started yet'
    if tokenId[arg1][10][tokenId[arg1].field_768].field_0:
        tokenId[arg1][10][tokenId[arg1].field_768].field_0 = 0
        call tokenId[arg1].field_768 with:
           value tokenId[arg1][10][tokenId[arg1].field_768].field_0 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Payment failed'
        emit 0xe5a4c2b8: arg1
    stor2 = 1
}

function cancel(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_0 != msg.sender:
        revert with 0, 'Only seller can cancel auction'
    if tokenId[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only cancel auctions with no bids'
    if tokenId[arg1].field_2304:
        revert with 0, 'Auction already ended'
    tokenId[arg1].field_2304 = 1
    require ext_code.size(tokenId[arg1].field_256)
    call tokenId[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tokenId[arg1].field_0, tokenId[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit AuctionCancelled(arg1);
    stor2 = 1
}

function sub_baeff08d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 352:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    _8 = mem[288]
    mem[ceil32(ceil32(arg1.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg1.length)) + 149] = _4
    mem[ceil32(ceil32(arg1.length)) + 181] = _5
    mem[ceil32(ceil32(arg1.length)) + 213] = _6
    mem[ceil32(ceil32(arg1.length)) + 245] = _7
    mem[ceil32(ceil32(arg1.length)) + 277] = address(_8)
    mem[ceil32(ceil32(arg1.length)) + 97] = 168
    if arg1.length < 321:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg1.length)) + 298 len 96] = mem[353 len 96]
    if mem[ceil32(ceil32(arg1.length)) + 361] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length != 352:
        revert with 0, 'Invalid size'
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    _8 = mem[288]
    mem[ceil32(ceil32(arg4.length)) + 129] = address(mem[128])
    mem[ceil32(ceil32(arg4.length)) + 149] = _4
    mem[ceil32(ceil32(arg4.length)) + 181] = _5
    mem[ceil32(ceil32(arg4.length)) + 213] = _6
    mem[ceil32(ceil32(arg4.length)) + 245] = _7
    mem[ceil32(ceil32(arg4.length)) + 277] = address(_8)
    mem[ceil32(ceil32(arg4.length)) + 97] = 168
    if arg4.length < 321:
        revert with 0, 'slice_outOfBounds'
    mem[ceil32(ceil32(arg4.length)) + 298 len 96] = mem[353 len 96]
    if mem[ceil32(ceil32(arg4.length)) + 361] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if tokenId[arg1].field_2304:
        revert with 0, 'Auction is not active'
    if block.timestamp > tokenId[arg1].field_1280:
        revert with 0, 'Bidding is ended'
    if msg.value <= 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too small, it should be at least 0.01'
    if tokenId[arg1][10][msg.sender].field_0 > !msg.value:
        revert with 0, 17
    if tokenId[arg1][10][msg.sender].field_0 + msg.value <= tokenId[arg1].field_1024:
        revert with 0, 'There is already a higher bid'
    if tokenId[arg1][10][msg.sender].field_0 + msg.value < tokenId[arg1].field_2048:
        revert with 0, 'Starting price is higher'
    if msg.sender == tokenId[arg1].field_0:
        revert with 0, 'Seller can't bid'
    tokenId[arg1][10][msg.sender].field_0 += msg.value
    tokenId[arg1].field_768 = msg.sender or Mask(96, 160, tokenId[arg1].field_768)
    tokenId[arg1].field_1024 = tokenId[arg1][10][msg.sender].field_0 + msg.value
    if tokenId[arg1].field_1280 < block.timestamp:
        revert with 0, 17
    if tokenId[arg1].field_1280 - block.timestamp < 300:
        if tokenId[arg1].field_1280 > -301:
            revert with 0, 17
        tokenId[arg1].field_1280 += 300
        if tokenId[arg1].field_1792 > -301:
            revert with 0, 17
        tokenId[arg1].field_1792 += 300
    emit 0x463a70fb: address(msg.sender), tokenId[arg1][10][msg.sender].field_0 + msg.value, tokenId[arg1].field_1280, tokenId[arg1].field_1792, arg1
}

function close(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if arg1 >= stor6:
        revert with 0, 'invalid position'
    if block.timestamp <= tokenId[arg1].field_1280:
        revert with 0, 'Auction is not ended yet'
    if block.timestamp >= tokenId[arg1].field_1792:
        revert with 0, 'Close window ended'
    if tokenId[arg1].field_2304:
        revert with 0, 'Auction is already closed'
    tokenId[arg1].field_2304 = 1
    if not tokenId[arg1].field_1024:
        require ext_code.size(tokenId[arg1].field_256)
        call tokenId[arg1].field_256.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), tokenId[arg1].field_0, tokenId[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xcb6595ee: tokenId[arg1].field_0, 0, 0, 0, arg1
    else:
        if not tokenId[arg1][10][tokenId[arg1].field_768].field_0:
            require ext_code.size(tokenId[arg1].field_256)
            call tokenId[arg1].field_256.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), tokenId[arg1].field_0, tokenId[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xcb6595ee: tokenId[arg1].field_0, 0, 0, 0, arg1
        else:
            tokenId[arg1][10][tokenId[arg1].field_768].field_0 = 0
            if not tokenId[arg1].field_2312:
                if tokenId[arg1].field_1024 > 0x1111111111111111111111111111111111111111111111111111111111111111:
                    revert with 0, 17
                call sub_2e3fe7d4Address with:
                   value 15 * tokenId[arg1].field_1024 / 800 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if tokenId[arg1].field_1024 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                call communityAddress with:
                   value 5 * tokenId[arg1].field_1024 / 800 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenId[arg1].field_256)
                call tokenId[arg1].field_256.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                    revert with 0, 17
                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 0:
                    revert with 0, 17
                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 5 * tokenId[arg1].field_1024 / 800:
                    revert with 0, 17
                call tokenId[arg1].field_0 with:
                   value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Payment failed'
                emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 0, arg1
            else:
                staticcall tokenId[arg1].field_256.royaltyInfo(uint256 arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args tokenId[arg1].field_512, tokenId[arg1].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if tokenId[arg1].field_1024 > 0x6c19c2234266d2802889a8cd38e68ef00f339f4cf556759a05b35bbcdc006:
                    revert with 0, 17
                if tokenId[arg1].field_1024 > 0x1111111111111111111111111111111111111111111111111111111111111111:
                    revert with 0, 17
                call sub_2e3fe7d4Address with:
                   value 15 * tokenId[arg1].field_1024 / 800 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if tokenId[arg1].field_1024 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                    revert with 0, 17
                call communityAddress with:
                   value 5 * tokenId[arg1].field_1024 / 800 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[32] <= 9700 * tokenId[arg1].field_1024 / 10000:
                    if not tokenId[arg1].field_2312:
                        require ext_code.size(tokenId[arg1].field_256)
                        call tokenId[arg1].field_256.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                            revert with 0, 17
                        if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < ext_call.return_data[32]:
                            revert with 0, 17
                        if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] < 5 * tokenId[arg1].field_1024 / 800:
                            revert with 0, 17
                        call tokenId[arg1].field_0 with:
                           value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Payment failed'
                        emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, ext_call.return_data[32], arg1
                    else:
                        if ext_call.return_data[32] <= 0:
                            require ext_code.size(tokenId[arg1].field_256)
                            call tokenId[arg1].field_256.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < ext_call.return_data[32]:
                                revert with 0, 17
                            if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] < 5 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            call tokenId[arg1].field_0 with:
                               value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Payment failed'
                            emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, ext_call.return_data[32], arg1
                        else:
                            call ext_call.return_data[12 len 20] with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            require ext_code.size(tokenId[arg1].field_256)
                            call tokenId[arg1].field_256.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            if ext_call.success:
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < ext_call.return_data[32]:
                                    revert with 0, 17
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] < 5 * tokenId[arg1].field_1024 / 800:
                                    revert with 0, 17
                                call tokenId[arg1].field_0 with:
                                   value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Payment failed'
                                emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - ext_call.return_data[32] - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, ext_call.return_data[32], arg1
                            else:
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 0:
                                    revert with 0, 17
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 5 * tokenId[arg1].field_1024 / 800:
                                    revert with 0, 17
                                call tokenId[arg1].field_0 with:
                                   value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Payment failed'
                                emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 0, arg1
                else:
                    if not tokenId[arg1].field_2312:
                        require ext_code.size(tokenId[arg1].field_256)
                        call tokenId[arg1].field_256.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                            revert with 0, 17
                        if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 9700 * tokenId[arg1].field_1024 / 10000:
                            revert with 0, 17
                        if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) < 5 * tokenId[arg1].field_1024 / 800:
                            revert with 0, 17
                        call tokenId[arg1].field_0 with:
                           value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Payment failed'
                        emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 9700 * tokenId[arg1].field_1024 / 10000, arg1
                    else:
                        if 9700 * tokenId[arg1].field_1024 / 10000 <= 0:
                            require ext_code.size(tokenId[arg1].field_256)
                            call tokenId[arg1].field_256.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 9700 * tokenId[arg1].field_1024 / 10000:
                                revert with 0, 17
                            if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) < 5 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            call tokenId[arg1].field_0 with:
                               value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Payment failed'
                            emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 9700 * tokenId[arg1].field_1024 / 10000, arg1
                        else:
                            call ext_call.return_data[12 len 20] with:
                               value 9700 * tokenId[arg1].field_1024 / 10000 wei
                                 gas gas_remaining wei
                            require ext_code.size(tokenId[arg1].field_256)
                            call tokenId[arg1].field_256.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), tokenId[arg1].field_768, tokenId[arg1].field_512
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if tokenId[arg1].field_1024 < 15 * tokenId[arg1].field_1024 / 800:
                                revert with 0, 17
                            if ext_call.success:
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 9700 * tokenId[arg1].field_1024 / 10000:
                                    revert with 0, 17
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) < 5 * tokenId[arg1].field_1024 / 800:
                                    revert with 0, 17
                                call tokenId[arg1].field_0 with:
                                   value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Payment failed'
                                emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (9700 * tokenId[arg1].field_1024 / 10000) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 9700 * tokenId[arg1].field_1024 / 10000, arg1
                            else:
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 0:
                                    revert with 0, 17
                                if tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) < 5 * tokenId[arg1].field_1024 / 800:
                                    revert with 0, 17
                                call tokenId[arg1].field_0 with:
                                   value tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Payment failed'
                                emit 0xcb6595ee: tokenId[arg1].field_768, tokenId[arg1].field_1024 - (15 * tokenId[arg1].field_1024 / 800) - (5 * tokenId[arg1].field_1024 / 800), 15 * tokenId[arg1].field_1024 / 800, 0, arg1
    stor2 = 1
}



}
