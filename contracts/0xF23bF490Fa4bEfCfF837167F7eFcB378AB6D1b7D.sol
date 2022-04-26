contract main {




// =====================  Runtime code  =====================


#
#  - sub_c353e5e2(?)
#
const TOTAL_SUPPLY = 206


address feeRecieverAddress;
array of uint256 sub_0aea2394;
array of uint256 tokenPrice;
uint16 sub_8b466443;
uint256 sub_df65e2fb;
array of struct stor5;
address stor6;
uint256 stor6;
uint256 stor7;
array of struct stor109;
array of struct stor110;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor114;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor160;
array of uint256 tokenByIndex;
mapping of uint256 stor162;
mapping of uint8 stor209;
uint256 stor259;
array of uint256 stor77282275189709367734651031388976690332233555452666916122967375672545332467832;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0aea2394(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0aea2394.length
    return sub_0aea2394[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_8b466443(?) {
    return sub_8b466443
}

function getTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 / 3 >= sub_0aea2394.length:
        revert with 0, 50
    if sub_0aea2394[arg1 - 1 / 3] >= tokenPrice.length:
        revert with 0, 50
    return tokenPrice[stor1[arg1 - 1 / 3]]
}

function sub_df65e2fb(?) {
    return sub_df65e2fb
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor114[address(arg1)][address(arg2)])
}

function sub_eaa2b6ed(?) {
    require calldata.size - 4 >= 32
    require arg1 < tokenPrice.length
    return tokenPrice[arg1]
}

function feeReciever() {
    return feeRecieverAddress
}

function _fallback() payable {
    revert
}

function highestBid() {
    return address(stor6), stor7
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and sub_8b466443 > -1 / arg2:
        revert with 0, 17
    return feeRecieverAddress, arg2 * sub_8b466443 / 10000
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor114[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function bid() payable {
    if block.timestamp > sub_df65e2fb:
        revert with 0, 'bid:: Auction already ended'
    if msg.value <= stor7:
        revert with 0, 'bid:: Bid not high enough'
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    stor7 = msg.value
    emit NewHighestBid(msg.sender, msg.value);
    call address(stor6) with:
       value stor7 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor209[Mask(32, 224, arg1)])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor114[stor111[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getTokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 159)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_2b34378a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if stor259 >= 1:
        revert with 0, 'upgradeToV2::Already upgraded'
    stor259 = 1
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor5.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor5[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function claim() payable {
    if block.timestamp <= sub_df65e2fb:
        revert with 0, 'claim:: Auction not yet over'
    if not address(stor6):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[205]:
        revert with 0, 'ERC721: token already minted'
    stor162[205] = tokenByIndex.length
    tokenByIndex.length++
    storAADC[stor161.length] = 205
    if address(stor6):
        if address(stor6):
            if not address(stor6):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(stor6)][stor112[address(stor6)]] = 205
            stor160[205] = balanceOf[address(stor6)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[205] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[205]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[205]
        stor162[205] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(stor6)] > -2:
        revert with 0, 17
    balanceOf[address(stor6)]++
    ownerOf[205] = address(stor6)
    emit Transfer(0, address(stor6), 205);
    if not address(stor6):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[206]:
        revert with 0, 'ERC721: token already minted'
    stor162[206] = tokenByIndex.length
    tokenByIndex.length++
    storAADC[stor161.length] = 206
    if address(stor6):
        if address(stor6):
            if not address(stor6):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(stor6)][stor112[address(stor6)]] = 206
            stor160[206] = balanceOf[address(stor6)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[206] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[206]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[206]
        stor162[206] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(stor6)] > -2:
        revert with 0, 17
    balanceOf[address(stor6)]++
    ownerOf[206] = address(stor6)
    emit Transfer(0, address(stor6), 206);
    emit AuctionClaimed(address(stor6), stor7);
    call feeRecieverAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor114[stor111[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor162[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storAADC[stor161.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor160[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor160[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1]
                stor160[stor159[address(arg1)][stor112[address(arg1)] - 1]] = stor160[arg3]
            stor160[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor112[address(arg2)]] = arg3
            stor160[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg3]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg3]
        stor162[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor114[stor111[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor162[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storAADC[stor161.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor160[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor160[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1]
                stor160[stor159[address(arg1)][stor112[address(arg1)] - 1]] = stor160[arg3]
            stor160[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor112[address(arg2)]] = arg3
            stor160[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg3]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg3]
        stor162[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function baseURI() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function name() {
    if bool(stor109.length):
        if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor109.length):
            if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor109.length):
                if 31 < uint255(stor109.length) * 0.5:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor109.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)])
                mem[128] = 256 * stor109.length.field_8
        else:
            if bool(stor109.length) == stor109.length.field_1 < 32:
                revert with 0, 34
            if stor109.length.field_1:
                if 31 < stor109.length.field_1:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while stor109.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)])
                mem[128] = 256 * stor109.length.field_8
        mem[ceil32(uint255(stor109.length) * 0.5) + 192 len ceil32(uint255(stor109.length) * 0.5)] = mem[128 len ceil32(uint255(stor109.length) * 0.5)]
        if ceil32(uint255(stor109.length) * 0.5) > uint255(stor109.length) * 0.5:
            mem[(uint255(stor109.length) * 0.5) + ceil32(uint255(stor109.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)], mem[(2 * ceil32(uint255(stor109.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor109.length) * 0.5)]), 
    if bool(stor109.length) == stor109.length.field_1 < 32:
        revert with 0, 34
    if bool(stor109.length):
        if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor109.length):
            if 31 < uint255(stor109.length) * 0.5:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while (uint255(stor109.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    else:
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 0, 34
        if stor109.length.field_1:
            if 31 < stor109.length.field_1:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while stor109.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    mem[ceil32(stor109.length.field_1) + 192 len ceil32(stor109.length.field_1)] = mem[128 len ceil32(stor109.length.field_1)]
    if ceil32(stor109.length.field_1) > stor109.length.field_1:
        mem[stor109.length.field_1 + ceil32(stor109.length.field_1) + 192] = 0
    return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)], mem[(2 * ceil32(stor109.length.field_1)) + 192 len 2 * ceil32(stor109.length.field_1)]), 
}

function symbol() {
    if bool(stor110.length):
        if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor110.length):
            if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor110.length):
                if 31 < uint255(stor110.length) * 0.5:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor110.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)])
                mem[128] = 256 * stor110.length.field_8
        else:
            if bool(stor110.length) == stor110.length.field_1 < 32:
                revert with 0, 34
            if stor110.length.field_1:
                if 31 < stor110.length.field_1:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while stor110.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)])
                mem[128] = 256 * stor110.length.field_8
        mem[ceil32(uint255(stor110.length) * 0.5) + 192 len ceil32(uint255(stor110.length) * 0.5)] = mem[128 len ceil32(uint255(stor110.length) * 0.5)]
        if ceil32(uint255(stor110.length) * 0.5) > uint255(stor110.length) * 0.5:
            mem[(uint255(stor110.length) * 0.5) + ceil32(uint255(stor110.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)], mem[(2 * ceil32(uint255(stor110.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor110.length) * 0.5)]), 
    if bool(stor110.length) == stor110.length.field_1 < 32:
        revert with 0, 34
    if bool(stor110.length):
        if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor110.length):
            if 31 < uint255(stor110.length) * 0.5:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while (uint255(stor110.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    else:
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 0, 34
        if stor110.length.field_1:
            if 31 < stor110.length.field_1:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while stor110.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    mem[ceil32(stor110.length.field_1) + 192 len ceil32(stor110.length.field_1)] = mem[128 len ceil32(stor110.length.field_1)]
    if ceil32(stor110.length.field_1) > stor110.length.field_1:
        mem[stor110.length.field_1 + ceil32(stor110.length.field_1) + 192] = 0
    return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)], mem[(2 * ceil32(stor110.length.field_1)) + 192 len 2 * ceil32(stor110.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor114[stor111[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor162[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storAADC[stor161.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor160[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor160[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1]
                stor160[stor159[address(arg1)][stor112[address(arg1)] - 1]] = stor160[arg3]
            stor160[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor112[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor112[address(arg2)]] = arg3
            stor160[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg3]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg3]
        stor162[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'mint:: Token has already been minted'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)]:
        revert with 0, 'mint:: Only one Pepe per minter'
    if arg1 % 3 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'mint:: Can only mint packaged Pepe'
    if arg1 >= 205:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'mint:: Trying to mint non-existent token'
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 / 3 >= sub_0aea2394.length:
        revert with 0, 50
    if sub_0aea2394[arg1 - 1 / 3] >= tokenPrice.length:
        revert with 0, 50
    if msg.value < tokenPrice[stor1[arg1 - 1 / 3]]:
        revert with 0, 'mint:: Not enough AVAX sent'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor162[arg1] = tokenByIndex.length
    tokenByIndex.length++
    storAADC[stor161.length] = arg1
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor112[address(msg.sender)]] = arg1
            stor160[arg1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg1]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg1]
        stor162[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(0, msg.sender, arg1);
    if 1 > !arg1:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor162[arg1 + 1] = tokenByIndex.length
    tokenByIndex.length++
    storAADC[stor161.length] = arg1 + 1
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor112[address(msg.sender)]] = arg1 + 1
            stor160[arg1 + 1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg1 + 1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg1 + 1]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg1 + 1]
        stor162[arg1 + 1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1 + 1] = msg.sender
    emit Transfer(0, msg.sender, arg1 + 1);
    if 2 > !arg1:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1 + 2]:
        revert with 0, 'ERC721: token already minted'
    stor162[arg1 + 2] = tokenByIndex.length
    tokenByIndex.length++
    storAADC[stor161.length] = arg1 + 2
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor112[address(msg.sender)]] = arg1 + 2
            stor160[arg1 + 2] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor162[arg1 + 2] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor162[arg1 + 2]] = tokenByIndex[tokenByIndex.length]
        stor162[stor161[stor161.length]] = stor162[arg1 + 2]
        stor162[arg1 + 2] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1 + 2] = msg.sender
    emit Transfer(0, msg.sender, arg1 + 2);
    emit 0xb6d48030: msg.sender, arg1
    call feeRecieverAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 206:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _182 = mem[64]
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor5.length):
                mem[mem[64] + 32] = Mask(248, 8, stor5.length)
                _186 = mem[96]
                mem[mem[64] + (uint255(stor5.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _370 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32
                    mem[mem[96] + _182 + (uint255(stor5.length) * 0.5) + 32] = 32
                    _406 = mem[_370]
                    mem[_186 + _182 + (uint255(stor5.length) * 0.5) + 64] = mem[_370]
                    mem[_186 + _182 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_406)] = mem[_370 + 32 len ceil32(_406)]
                    if ceil32(_406) > _406:
                        mem[_406 + _186 + _182 + (uint255(stor5.length) * 0.5) + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_406) + _186 + _182 + (uint255(stor5.length) * 0.5) + -mem[64] + 96
                mem[mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32] = 0
                _371 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32
                mem[mem[96] + _182 + (uint255(stor5.length) * 0.5) + 32] = 32
                _407 = mem[_371]
                mem[_186 + _182 + (uint255(stor5.length) * 0.5) + 64] = mem[_371]
                mem[_186 + _182 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_407)] = mem[_371 + 32 len ceil32(_407)]
                if ceil32(_407) > _407:
                    mem[_407 + _186 + _182 + (uint255(stor5.length) * 0.5) + 96] = 0
                return 32, mem[_186 + _182 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_407) + 32]
            if bool(stor5.length) != 1:
                _190 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_190) <= _190:
                    _372 = mem[64]
                    mem[64] = _190
                    mem[_190] = 32
                    _408 = mem[_372]
                    mem[_190 + 32] = mem[_372]
                    mem[_190 + 64 len ceil32(_408)] = mem[_372 + 32 len ceil32(_408)]
                    if ceil32(_408) > _408:
                        mem[_408 + _190 + 64] = 0
                    return 32, mem[_190 + 32 len ceil32(_408) + 32]
                mem[_190] = 0
                _373 = mem[64]
                mem[64] = _190
                mem[_190] = 32
                _409 = mem[_373]
                mem[_190 + 32] = mem[_373]
                mem[_190 + 64 len ceil32(_409)] = mem[_373 + 32 len ceil32(_409)]
                if ceil32(_409) > _409:
                    mem[_409 + _190 + 64] = 0
                return 32, mem[_190 + 32 len ceil32(_409) + 32]
            mem[0] = 5
            idx = 0
            s = 0
            while idx < uint255(stor5.length) * 0.5:
                mem[idx + _182 + 32] = stor5[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _366 = mem[96]
            mem[_182 + (uint255(stor5.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_366) <= _366:
                _542 = mem[64]
                mem[64] = _366 + _182 + (uint255(stor5.length) * 0.5) + 32
                mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 32] = 32
                _586 = mem[_542]
                mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 64] = mem[_542]
                mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_586)] = mem[_542 + 32 len ceil32(_586)]
                if ceil32(_586) > _586:
                    mem[_586 + _366 + _182 + (uint255(stor5.length) * 0.5) + 96] = 0
                return 32, mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_586) + 32]
            mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 32] = 0
            _543 = mem[64]
            mem[64] = _366 + _182 + (uint255(stor5.length) * 0.5) + 32
            mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 32] = 32
            _587 = mem[_543]
            mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 64] = mem[_543]
            mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_587)] = mem[_543 + 32 len ceil32(_587)]
            if ceil32(_587) > _587:
                mem[_587 + _366 + _182 + (uint255(stor5.length) * 0.5) + 96] = 0
            return 32, mem[_366 + _182 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_587) + 32]
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _191 = mem[96]
            mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _374 = mem[64]
                mem[64] = mem[96] + mem[64] + stor5.length.field_1 + 32
                mem[mem[96] + _182 + stor5.length.field_1 + 32] = 32
                _410 = mem[_374]
                mem[_191 + _182 + stor5.length.field_1 + 64] = mem[_374]
                mem[_191 + _182 + stor5.length.field_1 + 96 len ceil32(_410)] = mem[_374 + 32 len ceil32(_410)]
                if ceil32(_410) > _410:
                    mem[_410 + _191 + _182 + stor5.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_410) + _191 + _182 + stor5.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor5.length.field_1 + 32] = 0
            _375 = mem[64]
            mem[64] = mem[96] + mem[64] + stor5.length.field_1 + 32
            mem[mem[96] + _182 + stor5.length.field_1 + 32] = 32
            _411 = mem[_375]
            mem[_191 + _182 + stor5.length.field_1 + 64] = mem[_375]
            mem[_191 + _182 + stor5.length.field_1 + 96 len ceil32(_411)] = mem[_375 + 32 len ceil32(_411)]
            if ceil32(_411) > _411:
                mem[_411 + _191 + _182 + stor5.length.field_1 + 96] = 0
            return 32, mem[_191 + _182 + stor5.length.field_1 + 64 len ceil32(_411) + 32]
        if bool(stor5.length) != 1:
            _194 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_194) <= _194:
                _376 = mem[64]
                mem[64] = _194
                mem[_194] = 32
                _412 = mem[_376]
                mem[_194 + 32] = mem[_376]
                mem[_194 + 64 len ceil32(_412)] = mem[_376 + 32 len ceil32(_412)]
                if ceil32(_412) > _412:
                    mem[_412 + _194 + 64] = 0
                return 32, mem[_194 + 32 len ceil32(_412) + 32]
            mem[_194] = 0
            _377 = mem[64]
            mem[64] = _194
            mem[_194] = 32
            _413 = mem[_377]
            mem[_194 + 32] = mem[_377]
            mem[_194 + 64 len ceil32(_413)] = mem[_377 + 32 len ceil32(_413)]
            if ceil32(_413) > _413:
                mem[_413 + _194 + 64] = 0
            return 32, mem[_194 + 32 len ceil32(_413) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < stor5.length.field_1:
            mem[idx + _182 + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _367 = mem[96]
        mem[_182 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_367) <= _367:
            _552 = mem[64]
            mem[64] = _367 + _182 + stor5.length.field_1 + 32
            mem[_367 + _182 + stor5.length.field_1 + 32] = 32
            _588 = mem[_552]
            mem[_367 + _182 + stor5.length.field_1 + 64] = mem[_552]
            mem[_367 + _182 + stor5.length.field_1 + 96 len ceil32(_588)] = mem[_552 + 32 len ceil32(_588)]
            if ceil32(_588) > _588:
                mem[_588 + _367 + _182 + stor5.length.field_1 + 96] = 0
            return 32, mem[_367 + _182 + stor5.length.field_1 + 64 len ceil32(_588) + 32]
        mem[_367 + _182 + stor5.length.field_1 + 32] = 0
        _553 = mem[64]
        mem[64] = _367 + _182 + stor5.length.field_1 + 32
        mem[_367 + _182 + stor5.length.field_1 + 32] = 32
        _589 = mem[_553]
        mem[_367 + _182 + stor5.length.field_1 + 64] = mem[_553]
        mem[_367 + _182 + stor5.length.field_1 + 96 len ceil32(_589)] = mem[_553 + 32 len ceil32(_589)]
        if ceil32(_589) > _589:
            mem[_589 + _367 + _182 + stor5.length.field_1 + 96] = 0
        return 32, mem[_367 + _182 + stor5.length.field_1 + 64 len ceil32(_589) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _183 = mem[64]
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor5.length):
            mem[mem[64] + 32] = Mask(248, 8, stor5.length)
            _188 = mem[96]
            mem[mem[64] + (uint255(stor5.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _378 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32
                mem[mem[96] + _183 + (uint255(stor5.length) * 0.5) + 32] = 32
                _414 = mem[_378]
                mem[_188 + _183 + (uint255(stor5.length) * 0.5) + 64] = mem[_378]
                mem[_188 + _183 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_414)] = mem[_378 + 32 len ceil32(_414)]
                if ceil32(_414) > _414:
                    mem[_414 + _188 + _183 + (uint255(stor5.length) * 0.5) + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_414) + _188 + _183 + (uint255(stor5.length) * 0.5) + -mem[64] + 96
            mem[mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32] = 0
            _379 = mem[64]
            mem[64] = mem[96] + mem[64] + (uint255(stor5.length) * 0.5) + 32
            mem[mem[96] + _183 + (uint255(stor5.length) * 0.5) + 32] = 32
            _415 = mem[_379]
            mem[_188 + _183 + (uint255(stor5.length) * 0.5) + 64] = mem[_379]
            mem[_188 + _183 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_415)] = mem[_379 + 32 len ceil32(_415)]
            if ceil32(_415) > _415:
                mem[_415 + _188 + _183 + (uint255(stor5.length) * 0.5) + 96] = 0
            return 32, mem[_188 + _183 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_415) + 32]
        if bool(stor5.length) != 1:
            _192 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_192) <= _192:
                _380 = mem[64]
                mem[64] = _192
                mem[_192] = 32
                _416 = mem[_380]
                mem[_192 + 32] = mem[_380]
                mem[_192 + 64 len ceil32(_416)] = mem[_380 + 32 len ceil32(_416)]
                if ceil32(_416) > _416:
                    mem[_416 + _192 + 64] = 0
                return 32, mem[_192 + 32 len ceil32(_416) + 32]
            mem[_192] = 0
            _381 = mem[64]
            mem[64] = _192
            mem[_192] = 32
            _417 = mem[_381]
            mem[_192 + 32] = mem[_381]
            mem[_192 + 64 len ceil32(_417)] = mem[_381 + 32 len ceil32(_417)]
            if ceil32(_417) > _417:
                mem[_417 + _192 + 64] = 0
            return 32, mem[_192 + 32 len ceil32(_417) + 32]
        mem[0] = 5
        idx = 0
        s = 0
        while idx < uint255(stor5.length) * 0.5:
            mem[idx + _183 + 32] = stor5[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _368 = mem[96]
        mem[_183 + (uint255(stor5.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_368) <= _368:
            _562 = mem[64]
            mem[64] = _368 + _183 + (uint255(stor5.length) * 0.5) + 32
            mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 32] = 32
            _590 = mem[_562]
            mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 64] = mem[_562]
            mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_590)] = mem[_562 + 32 len ceil32(_590)]
            if ceil32(_590) > _590:
                mem[_590 + _368 + _183 + (uint255(stor5.length) * 0.5) + 96] = 0
            return 32, mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_590) + 32]
        mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 32] = 0
        _563 = mem[64]
        mem[64] = _368 + _183 + (uint255(stor5.length) * 0.5) + 32
        mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 32] = 32
        _591 = mem[_563]
        mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 64] = mem[_563]
        mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 96 len ceil32(_591)] = mem[_563 + 32 len ceil32(_591)]
        if ceil32(_591) > _591:
            mem[_591 + _368 + _183 + (uint255(stor5.length) * 0.5) + 96] = 0
        return 32, mem[_368 + _183 + (uint255(stor5.length) * 0.5) + 64 len ceil32(_591) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor5.length):
        mem[mem[64] + 32] = Mask(248, 8, stor5.length)
        _193 = mem[96]
        mem[mem[64] + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _382 = mem[64]
            mem[64] = mem[96] + mem[64] + stor5.length.field_1 + 32
            mem[mem[96] + _183 + stor5.length.field_1 + 32] = 32
            _418 = mem[_382]
            mem[_193 + _183 + stor5.length.field_1 + 64] = mem[_382]
            mem[_193 + _183 + stor5.length.field_1 + 96 len ceil32(_418)] = mem[_382 + 32 len ceil32(_418)]
            if ceil32(_418) > _418:
                mem[_418 + _193 + _183 + stor5.length.field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_418) + _193 + _183 + stor5.length.field_1 + -mem[64] + 96
        mem[mem[96] + mem[64] + stor5.length.field_1 + 32] = 0
        _383 = mem[64]
        mem[64] = mem[96] + mem[64] + stor5.length.field_1 + 32
        mem[mem[96] + _183 + stor5.length.field_1 + 32] = 32
        _419 = mem[_383]
        mem[_193 + _183 + stor5.length.field_1 + 64] = mem[_383]
        mem[_193 + _183 + stor5.length.field_1 + 96 len ceil32(_419)] = mem[_383 + 32 len ceil32(_419)]
        if ceil32(_419) > _419:
            mem[_419 + _193 + _183 + stor5.length.field_1 + 96] = 0
        return 32, mem[_193 + _183 + stor5.length.field_1 + 64 len ceil32(_419) + 32]
    if bool(stor5.length) != 1:
        _196 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_196) <= _196:
            _384 = mem[64]
            mem[64] = _196
            mem[_196] = 32
            _420 = mem[_384]
            mem[_196 + 32] = mem[_384]
            mem[_196 + 64 len ceil32(_420)] = mem[_384 + 32 len ceil32(_420)]
            if ceil32(_420) > _420:
                mem[_420 + _196 + 64] = 0
            return 32, mem[_196 + 32 len ceil32(_420) + 32]
        mem[_196] = 0
        _385 = mem[64]
        mem[64] = _196
        mem[_196] = 32
        _421 = mem[_385]
        mem[_196 + 32] = mem[_385]
        mem[_196 + 64 len ceil32(_421)] = mem[_385 + 32 len ceil32(_421)]
        if ceil32(_421) > _421:
            mem[_421 + _196 + 64] = 0
        return 32, mem[_196 + 32 len ceil32(_421) + 32]
    mem[0] = 5
    idx = 0
    s = 0
    while idx < stor5.length.field_1:
        mem[idx + _183 + 32] = stor5[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _369 = mem[96]
    mem[_183 + stor5.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_369) <= _369:
        _572 = mem[64]
        mem[64] = _369 + _183 + stor5.length.field_1 + 32
        mem[_369 + _183 + stor5.length.field_1 + 32] = 32
        _592 = mem[_572]
        mem[_369 + _183 + stor5.length.field_1 + 64] = mem[_572]
        mem[_369 + _183 + stor5.length.field_1 + 96 len ceil32(_592)] = mem[_572 + 32 len ceil32(_592)]
        if ceil32(_592) > _592:
            mem[_592 + _369 + _183 + stor5.length.field_1 + 96] = 0
        return 32, mem[_369 + _183 + stor5.length.field_1 + 64 len ceil32(_592) + 32]
    mem[_369 + _183 + stor5.length.field_1 + 32] = 0
    _573 = mem[64]
    mem[64] = _369 + _183 + stor5.length.field_1 + 32
    mem[_369 + _183 + stor5.length.field_1 + 32] = 32
    _593 = mem[_573]
    mem[_369 + _183 + stor5.length.field_1 + 64] = mem[_573]
    mem[_369 + _183 + stor5.length.field_1 + 96 len ceil32(_593)] = mem[_573 + 32 len ceil32(_593)]
    if ceil32(_593) > _593:
        mem[_593 + _369 + _183 + stor5.length.field_1 + 96] = 0
    return 32, mem[_369 + _183 + stor5.length.field_1 + 64 len ceil32(_593) + 32]
}



}
