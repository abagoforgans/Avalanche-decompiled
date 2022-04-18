contract main {




// =====================  Runtime code  =====================


#
#  - setHasSaleStarted(bool arg1, address[] arg2, uint256[] arg3)
#  - createItem(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 mintedSupply;
uint256 mintingFeePrice;
mapping of struct tokenCreator;
mapping of uint8 stor10;
mapping of uint8 stor11;
array of struct userCollection;
uint8 hasSaleStarted;
uint256 totalReward;
uint256 claimedReward;
uint256 mintingFee;
uint256 currentClaimRatio;
array of struct stor18;
mapping of uint256 itemLastClaimRatioAt;
uint256 totalSupply;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function tokenCreator(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return tokenCreator[arg1].field_256
}

function mintingFeePrice() {
    return mintingFeePrice
}

function claimedReward() {
    return claimedReward
}

function mintingFee() {
    return mintingFee
}

function currentClaimRatio() {
    return currentClaimRatio
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function userCollection(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userCollection[arg1].field_0
    return userCollection[arg1][arg2].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function totalReward() {
    return totalReward
}

function itemLastClaimRatioAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return itemLastClaimRatioAt[arg1]
}

function owner() {
    return owner
}

function getHasSaleStarted() {
    return bool(hasSaleStarted)
}

function mintedSupply() {
    return mintedSupply
}

function isBlackListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
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

function setmintingFeePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingFeePrice = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' admin Address is the zero address'
    stor10[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' admin Address is the zero address'
    stor10[address(arg1)] = 1
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

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > mintingFee:
        revert with 0, 'insuficient funds'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function blackListAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor10[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, ' caller has no minting right!!!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' userAddress  is the zero address'
    stor11[address(arg1)] = uint8(arg2)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function addToRewardPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if mintedSupply <= 0:
        revert with 0, 'no nft minted'
    if msg.value < arg1:
        revert with 0, 'insuficient fund'
    if totalReward > !msg.value:
        revert with 0, 17
    totalReward += msg.value
    if not mintedSupply:
        revert with 0, 18
    if currentClaimRatio > !(msg.value / mintedSupply):
        revert with 0, 17
    currentClaimRatio += msg.value / mintedSupply
}

function withdrawStuckMoney(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < mintingFee:
        revert with 0, 17
    if eth.balance(this.address) - mintingFee < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No stuck money or the amount you want is too much'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function userCollections(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userCollection[address(arg1)].field_0:
        mem[128] = userCollection[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * userCollection[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = userCollection[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=userCollection[address(arg1)].field_0, data=mem[128 len 32 * userCollection[address(arg1)].field_0])
    mem[(32 * userCollection[address(arg1)].field_0) + 128] = 32
    mem[(32 * userCollection[address(arg1)].field_0) + 160] = userCollection[address(arg1)].field_0
    mem[(32 * userCollection[address(arg1)].field_0) + 192 len 32 * userCollection[address(arg1)].field_0] = mem[128 len 32 * userCollection[address(arg1)].field_0]
    return memory
      from (32 * userCollection[address(arg1)].field_0) + 128
       len (96 * userCollection[address(arg1)].field_0) + 64
}

function setBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor18.length = 0
            idx = 0
            while stor18.length.field_1 + 31 / 32 > idx:
                stor18[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function claimUserReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userCollection[address(arg1)].field_0:
        mem[128] = userCollection[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * userCollection[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = userCollection[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < userCollection[address(arg1)].field_0:
        if idx >= userCollection[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 19
        if currentClaimRatio < itemLastClaimRatioAt[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]]:
            itemLastClaimRatioAt[mem[(32 * idx) + 128]] = currentClaimRatio
            if claimedReward > !(currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]]):
                revert with 0, 17
            claimedReward = claimedReward + currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if not ownerOf[mem[(32 * idx) + 128]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            call ownerOf[mem[(32 * idx) + 128]] with:
               value currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function Items(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenCreator[arg1].field_512:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_512:
            if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
                revert with 0, 34
            if tokenCreator[arg1].field_513:
                if 31 >= tokenCreator[arg1].field_513:
                    mem[128] = 256 * tokenCreator[arg1].field_520
                else:
                    mem[128] = tokenCreator[arg1][2].field_0
                    idx = 128
                    s = 0
                    while tokenCreator[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
                revert with 0, 34
            if tokenCreator[arg1].field_513:
                if 31 >= tokenCreator[arg1].field_513:
                    mem[128] = 256 * tokenCreator[arg1].field_520
                else:
                    mem[128] = tokenCreator[arg1][2].field_0
                    idx = 128
                    s = 0
                    while tokenCreator[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return tokenCreator[arg1].field_0, 
               tokenCreator[arg1].field_256,
               Array(len=2 * Mask(256, -1, tokenCreator[arg1].field_513), data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
    if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
        revert with 0, 34
    if tokenCreator[arg1].field_512:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_513:
            if 31 >= tokenCreator[arg1].field_513:
                mem[128] = 256 * tokenCreator[arg1].field_520
            else:
                mem[128] = tokenCreator[arg1][2].field_0
                idx = 128
                s = 0
                while tokenCreator[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_513:
            if 31 >= tokenCreator[arg1].field_513:
                mem[128] = 256 * tokenCreator[arg1].field_520
            else:
                mem[128] = tokenCreator[arg1][2].field_0
                idx = 128
                s = 0
                while tokenCreator[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return tokenCreator[arg1].field_0, 
           tokenCreator[arg1].field_256,
           Array(len=tokenCreator[arg1].field_512, data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
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
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if 0 == ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
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
    idx = 0
    while idx < userCollection[address(arg1)].field_0:
        if idx >= userCollection[address(arg1)].field_0:
            revert with 0, 50
        if userCollection[address(arg1)][idx].field_0 == arg3:
            if userCollection[address(arg1)].field_0 < 1:
                revert with 0, 17
            if userCollection[address(arg1)].field_0 - 1 >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            if idx >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            userCollection[address(arg1)][idx].field_0 = userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0
            if not userCollection[address(arg1)].field_0:
                revert with 0, 49
            userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0 = 0
            userCollection[address(arg1)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        continue 
    userCollection[address(arg2)].field_0++
    userCollection[address(arg2)][userCollection[address(arg2)].field_0].field_0 = arg3
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if 0 == ownerOf[arg3]:
        revert with 0, 'ERC721: approval to current owner'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
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
    idx = 0
    while idx < userCollection[address(arg1)].field_0:
        if idx >= userCollection[address(arg1)].field_0:
            revert with 0, 50
        if userCollection[address(arg1)][idx].field_0 == arg3:
            if userCollection[address(arg1)].field_0 < 1:
                revert with 0, 17
            if userCollection[address(arg1)].field_0 - 1 >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            if idx >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            userCollection[address(arg1)][idx].field_0 = userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0
            if not userCollection[address(arg1)].field_0:
                revert with 0, 49
            userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0 = 0
            userCollection[address(arg1)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        continue 
    userCollection[address(arg2)].field_0++
    userCollection[address(arg2)][userCollection[address(arg2)].field_0].field_0 = arg3
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

function baseUri() {
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
        if ceil32(stor18.length.field_1) > stor18.length.field_1:
            mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[stor18.length.field_1 + ceil32(stor18.length.field_1) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if 0 == ownerOf[arg3]:
        revert with 0, 'ERC721: approval to current owner'
    if ownerOf[arg3] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
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
    idx = 0
    while idx < userCollection[address(arg1)].field_0:
        if idx >= userCollection[address(arg1)].field_0:
            revert with 0, 50
        if userCollection[address(arg1)][idx].field_0 == arg3:
            if userCollection[address(arg1)].field_0 < 1:
                revert with 0, 17
            if userCollection[address(arg1)].field_0 - 1 >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            if idx >= userCollection[address(arg1)].field_0:
                revert with 0, 50
            userCollection[address(arg1)][idx].field_0 = userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0
            if not userCollection[address(arg1)].field_0:
                revert with 0, 49
            userCollection[address(arg1)][userCollection[address(arg1)].field_0].field_0 = 0
            userCollection[address(arg1)].field_0--
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        continue 
    userCollection[address(arg2)].field_0++
    userCollection[address(arg2)][userCollection[address(arg2)].field_0].field_0 = arg3
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
}

function viewUserReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userCollection[address(arg1)].field_0:
        mem[128] = userCollection[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * userCollection[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = userCollection[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < userCollection[address(arg1)].field_0:
        if idx >= userCollection[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 19
        if currentClaimRatio < itemLastClaimRatioAt[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if s > !(currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + currentClaimRatio - itemLastClaimRatioAt[mem[(32 * idx) + 128]]
        continue 
    return (s * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0 * userCollection[address(arg1)].field_0)
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if tokenCreator[arg1].field_512:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_512:
            if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
                revert with 0, 34
            if tokenCreator[arg1].field_513:
                if 31 < tokenCreator[arg1].field_513:
                    mem[128] = tokenCreator[arg1][2].field_0
                    idx = 128
                    s = 0
                    while tokenCreator[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, tokenCreator[arg1].field_513), data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
                mem[128] = 256 * tokenCreator[arg1].field_520
        else:
            if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
                revert with 0, 34
            if tokenCreator[arg1].field_513:
                if 31 < tokenCreator[arg1].field_513:
                    mem[128] = tokenCreator[arg1][2].field_0
                    idx = 128
                    s = 0
                    while tokenCreator[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, tokenCreator[arg1].field_513), data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
                mem[128] = 256 * tokenCreator[arg1].field_520
        mem[ceil32(tokenCreator[arg1].field_513) + 192 len ceil32(tokenCreator[arg1].field_513)] = mem[128 len ceil32(tokenCreator[arg1].field_513)]
        if ceil32(tokenCreator[arg1].field_513) > tokenCreator[arg1].field_513:
            mem[tokenCreator[arg1].field_513 + ceil32(tokenCreator[arg1].field_513) + 192] = 0
        return Array(len=2 * Mask(256, -1, tokenCreator[arg1].field_513), data=mem[128 len ceil32(tokenCreator[arg1].field_513)], mem[(2 * ceil32(tokenCreator[arg1].field_513)) + 192 len 2 * ceil32(tokenCreator[arg1].field_513)]), 
    if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
        revert with 0, 34
    if tokenCreator[arg1].field_512:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_513:
            if 31 < tokenCreator[arg1].field_513:
                mem[128] = tokenCreator[arg1][2].field_0
                idx = 128
                s = 0
                while tokenCreator[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=tokenCreator[arg1].field_512, data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
            mem[128] = 256 * tokenCreator[arg1].field_520
    else:
        if tokenCreator[arg1].field_512 == tokenCreator[arg1].field_513 < 32:
            revert with 0, 34
        if tokenCreator[arg1].field_513:
            if 31 < tokenCreator[arg1].field_513:
                mem[128] = tokenCreator[arg1][2].field_0
                idx = 128
                s = 0
                while tokenCreator[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = tokenCreator[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=tokenCreator[arg1].field_512, data=mem[128 len ceil32(tokenCreator[arg1].field_513)])
            mem[128] = 256 * tokenCreator[arg1].field_520
    mem[ceil32(tokenCreator[arg1].field_513) + 192 len ceil32(tokenCreator[arg1].field_513)] = mem[128 len ceil32(tokenCreator[arg1].field_513)]
    if ceil32(tokenCreator[arg1].field_513) > tokenCreator[arg1].field_513:
        mem[tokenCreator[arg1].field_513 + ceil32(tokenCreator[arg1].field_513) + 192] = 0
    return Array(len=tokenCreator[arg1].field_512, data=mem[128 len ceil32(tokenCreator[arg1].field_513)], mem[(2 * ceil32(tokenCreator[arg1].field_513)) + 192 len 2 * ceil32(tokenCreator[arg1].field_513)]), 
}



}
