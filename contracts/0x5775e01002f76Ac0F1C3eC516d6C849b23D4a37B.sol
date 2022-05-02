contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address adminAddress;
address routerAddress;
uint256 nextTokenId;
uint256 maxTokenId;
uint256 tokenPriceInWei;
array of struct stor15;
array of struct stor16;
uint8 isMintPaused;
uint256 stor17;
mapping of uint8 stor18;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function isMintPaused() {
    return bool(uint8(isMintPaused))
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

function tokenPriceInWei() {
    return tokenPriceInWei
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

function nextTokenId() {
    return nextTokenId
}

function maxTokenId() {
    return maxTokenId
}

function isEligableToRedeem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function admin() {
    return adminAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function pauseMint() {
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    uint256(stor17) = not uint8(isMintPaused) or Mask(248, 8, uint256(stor17))
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    routerAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function loadMinters(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        stor18[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function addBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function updateContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function redeemFlamingo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if nextTokenId > maxTokenId:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must not exceed maximum mint on Fantom'
    if uint8(isMintPaused):
        if adminAddress != msg.sender:
            revert with 0, 'Purchases must not be paused'
    if not stor18[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address not in Whitelist or Has Already Redeemed'
    stor18[msg.sender] = 0
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = nextTokenId
            stor7[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor12] = arg1
    emit Transfer(0, arg1, nextTokenId);
    emit Mint(arg1, nextTokenId);
    return nextTokenId
}

function mintFlamingo() payable {
    if msg.value < tokenPriceInWei:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must send at least current price for token'
    if nextTokenId > maxTokenId:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must not exceed maximum mint on Fantom'
    if uint8(isMintPaused):
        if adminAddress != msg.sender:
            revert with 0, 'Purchases must not be paused'
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId
            stor7[stor12] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor12] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId);
    emit Mint(msg.sender, nextTokenId);
    if msg.value:
        if msg.value < tokenPriceInWei:
            revert with 0, 17
        if not msg.value - tokenPriceInWei:
            call adminAddress with:
               value tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call adminAddress with:
               value tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
    return nextTokenId
}

function mintFalmingoTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < tokenPriceInWei:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must send at least current price for token'
    if nextTokenId > maxTokenId:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must not exceed maximum mint on Fantom'
    if uint8(isMintPaused):
        if adminAddress != msg.sender:
            revert with 0, 'Purchases must not be paused'
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = nextTokenId
            stor7[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor12] = arg1
    emit Transfer(0, arg1, nextTokenId);
    emit Mint(arg1, nextTokenId);
    if msg.value:
        if msg.value < tokenPriceInWei:
            revert with 0, 17
        if not msg.value - tokenPriceInWei:
            call adminAddress with:
               value tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call adminAddress with:
               value tokenPriceInWei wei
                 gas 2300 * is_zero(value) wei
    return nextTokenId
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function contractURI() {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function contractURIString() {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[stor16.length.field_1 + ceil32(stor16.length.field_1) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if routerAddress != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                stor7[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
        if arg2:
            if arg2 != arg1:
                if not arg2:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                stor7[arg3] = balanceOf[address(arg2)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
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
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
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
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if routerAddress != arg1:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                stor7[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
        if arg2:
            if arg2 != arg1:
                if not arg2:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                stor7[arg3] = balanceOf[address(arg2)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
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
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
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
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if routerAddress == arg2:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                stor7[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
        if arg2:
            if arg2 != arg1:
                if not arg2:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                stor7[arg3] = balanceOf[address(arg2)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
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
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
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
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            if arg1 != arg2:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                    stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
                stor7[arg3] = 0
                tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
        if arg2:
            if arg2 != arg1:
                if not arg2:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
                stor7[arg3] = balanceOf[address(arg2)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
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
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
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
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if arg3 <= 0:
        revert with 0, 'Token ID invalid'
    if not routerAddress:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg3]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg3] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg3
    if routerAddress:
        if routerAddress:
            if not routerAddress:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor11][stor3[stor11]] = arg3
            stor7[arg3] = balanceOf[stor11]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[stor11] > -2:
        revert with 0, 17
    balanceOf[stor11]++
    ownerOf[arg3] = routerAddress
    emit Transfer(0, routerAddress, arg3);
    if ext_code.size(routerAddress):
        require ext_code.size(routerAddress)
        call routerAddress.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, arg3, 128, 0
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
    emit Migration(arg2, arg3);
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token ID does not exist Yet'
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor15.length):
                mem[192] = Mask(248, 8, stor15.length)
            else:
                if bool(stor15.length) != 1:
                    mem[64] = 7
                    _122 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_122) > _122:
                        mem[_122 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_122) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 192] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor15.length.field_1 + 192] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            mem[stor15.length.field_1 + 198] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor15.length.field_1 + 199] = 32
            mem[stor15.length.field_1 + 231] = mem[160]
            mem[stor15.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor15.length.field_1 + 263] = 0
            return Array(len=mem[160], data=mem[stor15.length.field_1 + 263 len ceil32(mem[160])])
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[192] = Mask(248, 8, stor15.length)
        else:
            if bool(stor15.length) != 1:
                mem[64] = 7
                _126 = mem[160]
                mem[39] = mem[160]
                mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_126) > _126:
                    mem[_126 + 71] = 0
                return memory
                  from mem[64]
                   len ceil32(_126) + -mem[64] + 71
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 192] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor15.length.field_1 + 192] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        mem[stor15.length.field_1 + 198] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor15.length.field_1 + 199] = 32
        mem[stor15.length.field_1 + 231] = mem[160]
        mem[stor15.length.field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor15.length.field_1 + 263] = 0
        return Array(len=mem[160], data=mem[stor15.length.field_1 + 263 len ceil32(mem[160])])
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
        _359 = mem[64]
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor15.length):
                mem[mem[64] + 32] = Mask(248, 8, stor15.length)
                mem[mem[64] + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
                _393 = mem[96]
                mem[mem[64] + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _587 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
                    mem[mem[96] + _359 + stor15.length.field_1 + 38] = 32
                    _635 = mem[_587]
                    mem[_393 + _359 + stor15.length.field_1 + 70] = mem[_587]
                    mem[_393 + _359 + stor15.length.field_1 + 102 len ceil32(_635)] = mem[_587 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_635 + _393 + _359 + stor15.length.field_1 + 102] = 0
                    return memory
                      from mem[64]
                       len ceil32(_635) + _393 + _359 + stor15.length.field_1 + -mem[64] + 102
                mem[mem[96] + mem[64] + stor15.length.field_1 + 38] = 0
                _588 = mem[64]
                mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
                mem[mem[96] + _359 + stor15.length.field_1 + 38] = 32
                _636 = mem[_588]
                mem[_393 + _359 + stor15.length.field_1 + 70] = mem[_588]
                mem[_393 + _359 + stor15.length.field_1 + 102 len ceil32(_636)] = mem[_588 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _393 + _359 + stor15.length.field_1 + 102] = 0
                return 32, mem[_393 + _359 + stor15.length.field_1 + 70 len ceil32(_636) + 32]
            if bool(stor15.length) != 1:
                mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
                _397 = mem[96]
                mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_397) <= _397:
                    _590 = mem[64]
                    mem[64] = _397 + 6
                    mem[_397 + 6] = 32
                    _637 = mem[_590]
                    mem[_397 + 38] = mem[_590]
                    mem[_397 + 70 len ceil32(_637)] = mem[_590 + 32 len ceil32(_637)]
                    if ceil32(_637) > _637:
                        mem[_637 + _397 + 70] = 0
                    return 32, mem[_397 + 38 len ceil32(_637) + 32]
                mem[_397 + 6] = 0
                _591 = mem[64]
                mem[64] = _397 + 6
                mem[_397 + 6] = 32
                _638 = mem[_591]
                mem[_397 + 38] = mem[_591]
                mem[_397 + 70 len ceil32(_638)] = mem[_591 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _397 + 70] = 0
                return 32, mem[_397 + 38 len ceil32(_638) + 32]
            mem[0] = 15
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + _359 + 32] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_359 + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _589 = mem[96]
            mem[_359 + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_589) <= _589:
                _771 = mem[64]
                mem[64] = _589 + _359 + stor15.length.field_1 + 38
                mem[_589 + _359 + stor15.length.field_1 + 38] = 32
                _815 = mem[_771]
                mem[_589 + _359 + stor15.length.field_1 + 70] = mem[_771]
                mem[_589 + _359 + stor15.length.field_1 + 102 len ceil32(_815)] = mem[_771 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_815 + _589 + _359 + stor15.length.field_1 + 102] = 0
                return 32, mem[_589 + _359 + stor15.length.field_1 + 70 len ceil32(_815) + 32]
            mem[_589 + _359 + stor15.length.field_1 + 38] = 0
            _772 = mem[64]
            mem[64] = _589 + _359 + stor15.length.field_1 + 38
            mem[_589 + _359 + stor15.length.field_1 + 38] = 32
            _816 = mem[_772]
            mem[_589 + _359 + stor15.length.field_1 + 70] = mem[_772]
            mem[_589 + _359 + stor15.length.field_1 + 102 len ceil32(_816)] = mem[_772 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _589 + _359 + stor15.length.field_1 + 102] = 0
            return 32, mem[_589 + _359 + stor15.length.field_1 + 70 len ceil32(_816) + 32]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[mem[64] + 32] = Mask(248, 8, stor15.length)
            mem[mem[64] + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _398 = mem[96]
            mem[mem[64] + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _592 = mem[64]
                mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
                mem[mem[96] + _359 + stor15.length.field_1 + 38] = 32
                _639 = mem[_592]
                mem[_398 + _359 + stor15.length.field_1 + 70] = mem[_592]
                mem[_398 + _359 + stor15.length.field_1 + 102 len ceil32(_639)] = mem[_592 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_639 + _398 + _359 + stor15.length.field_1 + 102] = 0
                return memory
                  from mem[64]
                   len ceil32(_639) + _398 + _359 + stor15.length.field_1 + -mem[64] + 102
            mem[mem[96] + mem[64] + stor15.length.field_1 + 38] = 0
            _593 = mem[64]
            mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
            mem[mem[96] + _359 + stor15.length.field_1 + 38] = 32
            _640 = mem[_593]
            mem[_398 + _359 + stor15.length.field_1 + 70] = mem[_593]
            mem[_398 + _359 + stor15.length.field_1 + 102 len ceil32(_640)] = mem[_593 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_640 + _398 + _359 + stor15.length.field_1 + 102] = 0
            return 32, mem[_398 + _359 + stor15.length.field_1 + 70 len ceil32(_640) + 32]
        if bool(stor15.length) != 1:
            mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _401 = mem[96]
            mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_401) <= _401:
                _595 = mem[64]
                mem[64] = _401 + 6
                mem[_401 + 6] = 32
                _641 = mem[_595]
                mem[_401 + 38] = mem[_595]
                mem[_401 + 70 len ceil32(_641)] = mem[_595 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_641 + _401 + 70] = 0
                return 32, mem[_401 + 38 len ceil32(_641) + 32]
            mem[_401 + 6] = 0
            _596 = mem[64]
            mem[64] = _401 + 6
            mem[_401 + 6] = 32
            _642 = mem[_596]
            mem[_401 + 38] = mem[_596]
            mem[_401 + 70 len ceil32(_642)] = mem[_596 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _401 + 70] = 0
            return 32, mem[_401 + 38 len ceil32(_642) + 32]
        mem[0] = 15
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + _359 + 32] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_359 + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _594 = mem[96]
        mem[_359 + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_594) <= _594:
            _781 = mem[64]
            mem[64] = _594 + _359 + stor15.length.field_1 + 38
            mem[_594 + _359 + stor15.length.field_1 + 38] = 32
            _817 = mem[_781]
            mem[_594 + _359 + stor15.length.field_1 + 70] = mem[_781]
            mem[_594 + _359 + stor15.length.field_1 + 102 len ceil32(_817)] = mem[_781 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_817 + _594 + _359 + stor15.length.field_1 + 102] = 0
            return 32, mem[_594 + _359 + stor15.length.field_1 + 70 len ceil32(_817) + 32]
        mem[_594 + _359 + stor15.length.field_1 + 38] = 0
        _782 = mem[64]
        mem[64] = _594 + _359 + stor15.length.field_1 + 38
        mem[_594 + _359 + stor15.length.field_1 + 38] = 32
        _818 = mem[_782]
        mem[_594 + _359 + stor15.length.field_1 + 70] = mem[_782]
        mem[_594 + _359 + stor15.length.field_1 + 102 len ceil32(_818)] = mem[_782 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _594 + _359 + stor15.length.field_1 + 102] = 0
        return 32, mem[_594 + _359 + stor15.length.field_1 + 70 len ceil32(_818) + 32]
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
    _360 = mem[64]
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[mem[64] + 32] = Mask(248, 8, stor15.length)
            mem[mem[64] + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _395 = mem[96]
            mem[mem[64] + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _597 = mem[64]
                mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
                mem[mem[96] + _360 + stor15.length.field_1 + 38] = 32
                _643 = mem[_597]
                mem[_395 + _360 + stor15.length.field_1 + 70] = mem[_597]
                mem[_395 + _360 + stor15.length.field_1 + 102 len ceil32(_643)] = mem[_597 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_643 + _395 + _360 + stor15.length.field_1 + 102] = 0
                return memory
                  from mem[64]
                   len ceil32(_643) + _395 + _360 + stor15.length.field_1 + -mem[64] + 102
            mem[mem[96] + mem[64] + stor15.length.field_1 + 38] = 0
            _598 = mem[64]
            mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
            mem[mem[96] + _360 + stor15.length.field_1 + 38] = 32
            _644 = mem[_598]
            mem[_395 + _360 + stor15.length.field_1 + 70] = mem[_598]
            mem[_395 + _360 + stor15.length.field_1 + 102 len ceil32(_644)] = mem[_598 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _395 + _360 + stor15.length.field_1 + 102] = 0
            return 32, mem[_395 + _360 + stor15.length.field_1 + 70 len ceil32(_644) + 32]
        if bool(stor15.length) != 1:
            mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _399 = mem[96]
            mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_399) <= _399:
                _600 = mem[64]
                mem[64] = _399 + 6
                mem[_399 + 6] = 32
                _645 = mem[_600]
                mem[_399 + 38] = mem[_600]
                mem[_399 + 70 len ceil32(_645)] = mem[_600 + 32 len ceil32(_645)]
                if ceil32(_645) > _645:
                    mem[_645 + _399 + 70] = 0
                return 32, mem[_399 + 38 len ceil32(_645) + 32]
            mem[_399 + 6] = 0
            _601 = mem[64]
            mem[64] = _399 + 6
            mem[_399 + 6] = 32
            _646 = mem[_601]
            mem[_399 + 38] = mem[_601]
            mem[_399 + 70 len ceil32(_646)] = mem[_601 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _399 + 70] = 0
            return 32, mem[_399 + 38 len ceil32(_646) + 32]
        mem[0] = 15
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + _360 + 32] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_360 + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _599 = mem[96]
        mem[_360 + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_599) <= _599:
            _791 = mem[64]
            mem[64] = _599 + _360 + stor15.length.field_1 + 38
            mem[_599 + _360 + stor15.length.field_1 + 38] = 32
            _819 = mem[_791]
            mem[_599 + _360 + stor15.length.field_1 + 70] = mem[_791]
            mem[_599 + _360 + stor15.length.field_1 + 102 len ceil32(_819)] = mem[_791 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + _599 + _360 + stor15.length.field_1 + 102] = 0
            return 32, mem[_599 + _360 + stor15.length.field_1 + 70 len ceil32(_819) + 32]
        mem[_599 + _360 + stor15.length.field_1 + 38] = 0
        _792 = mem[64]
        mem[64] = _599 + _360 + stor15.length.field_1 + 38
        mem[_599 + _360 + stor15.length.field_1 + 38] = 32
        _820 = mem[_792]
        mem[_599 + _360 + stor15.length.field_1 + 70] = mem[_792]
        mem[_599 + _360 + stor15.length.field_1 + 102 len ceil32(_820)] = mem[_792 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _599 + _360 + stor15.length.field_1 + 102] = 0
        return 32, mem[_599 + _360 + stor15.length.field_1 + 70 len ceil32(_820) + 32]
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor15.length):
        mem[mem[64] + 32] = Mask(248, 8, stor15.length)
        mem[mem[64] + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _400 = mem[96]
        mem[mem[64] + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _602 = mem[64]
            mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
            mem[mem[96] + _360 + stor15.length.field_1 + 38] = 32
            _647 = mem[_602]
            mem[_400 + _360 + stor15.length.field_1 + 70] = mem[_602]
            mem[_400 + _360 + stor15.length.field_1 + 102 len ceil32(_647)] = mem[_602 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_647 + _400 + _360 + stor15.length.field_1 + 102] = 0
            return memory
              from mem[64]
               len ceil32(_647) + _400 + _360 + stor15.length.field_1 + -mem[64] + 102
        mem[mem[96] + mem[64] + stor15.length.field_1 + 38] = 0
        _603 = mem[64]
        mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 38
        mem[mem[96] + _360 + stor15.length.field_1 + 38] = 32
        _648 = mem[_603]
        mem[_400 + _360 + stor15.length.field_1 + 70] = mem[_603]
        mem[_400 + _360 + stor15.length.field_1 + 102 len ceil32(_648)] = mem[_603 + 32 len ceil32(_648)]
        if ceil32(_648) > _648:
            mem[_648 + _400 + _360 + stor15.length.field_1 + 102] = 0
        return 32, mem[_400 + _360 + stor15.length.field_1 + 70 len ceil32(_648) + 32]
    if bool(stor15.length) != 1:
        mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _402 = mem[96]
        mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_402) <= _402:
            _605 = mem[64]
            mem[64] = _402 + 6
            mem[_402 + 6] = 32
            _649 = mem[_605]
            mem[_402 + 38] = mem[_605]
            mem[_402 + 70 len ceil32(_649)] = mem[_605 + 32 len ceil32(_649)]
            if ceil32(_649) > _649:
                mem[_649 + _402 + 70] = 0
            return 32, mem[_402 + 38 len ceil32(_649) + 32]
        mem[_402 + 6] = 0
        _606 = mem[64]
        mem[64] = _402 + 6
        mem[_402 + 6] = 32
        _650 = mem[_606]
        mem[_402 + 38] = mem[_606]
        mem[_402 + 70 len ceil32(_650)] = mem[_606 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _402 + 70] = 0
        return 32, mem[_402 + 38 len ceil32(_650) + 32]
    mem[0] = 15
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[idx + _360 + 32] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_360 + stor15.length.field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
    _604 = mem[96]
    mem[_360 + stor15.length.field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_604) <= _604:
        _801 = mem[64]
        mem[64] = _604 + _360 + stor15.length.field_1 + 38
        mem[_604 + _360 + stor15.length.field_1 + 38] = 32
        _821 = mem[_801]
        mem[_604 + _360 + stor15.length.field_1 + 70] = mem[_801]
        mem[_604 + _360 + stor15.length.field_1 + 102 len ceil32(_821)] = mem[_801 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_821 + _604 + _360 + stor15.length.field_1 + 102] = 0
        return 32, mem[_604 + _360 + stor15.length.field_1 + 70 len ceil32(_821) + 32]
    mem[_604 + _360 + stor15.length.field_1 + 38] = 0
    _802 = mem[64]
    mem[64] = _604 + _360 + stor15.length.field_1 + 38
    mem[_604 + _360 + stor15.length.field_1 + 38] = 32
    _822 = mem[_802]
    mem[_604 + _360 + stor15.length.field_1 + 70] = mem[_802]
    mem[_604 + _360 + stor15.length.field_1 + 102 len ceil32(_822)] = mem[_802 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_822 + _604 + _360 + stor15.length.field_1 + 102] = 0
    return 32, mem[_604 + _360 + stor15.length.field_1 + 70 len ceil32(_822) + 32]
}



}
