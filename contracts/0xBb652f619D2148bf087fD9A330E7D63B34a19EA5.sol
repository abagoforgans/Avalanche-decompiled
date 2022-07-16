contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint16 stor101; offset 160
uint128 stor101; offset 176
uint128 stor101; offset 160
address stor101;
mapping of struct stor102;
array of struct stor151;
array of struct stor152;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor156;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor202;
array of uint256 tokenByIndex;
mapping of uint256 stor204;
address owner;
array of struct sub_c56eb1dc;
uint256 MAX_SUPPLY;
array of struct sub_6a01b671;
uint256 mintTime;
array of struct sub_65b3e4cf;
uint256 sub_5b449c4e;
mapping of uint256 minted;
mapping of uint256 sub_c1608d6b;
mapping of uint8 stor359;
uint256 reserved;
uint8 enabled;
uint256 stor362;
mapping of uint8 stor363;
array of struct stor364;
array of struct stor365;
array of struct stor366;
uint256 sub_46bc9d41;
uint256 sub_ba58e17c;
mapping of uint8 stor369;
mapping of struct stor370;
mapping of struct stor371;
address sub_17607ad9Address;
address sub_eebc9fc7Address;
address sub_5cb1b9f3Address;
address sub_b8746e73Address;
address sub_ac7b1c0aAddress;
address randomAddress;
array of uint256 stor75901123276489147006081427704161463599957449291885703562554030577081909053179;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_14862808(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor363[arg1]))
}

function sub_17607ad9(?) {
    return sub_17607ad9Address
}

function totalSupply() {
    return tokenByIndex.length
}

function minted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minted[arg1]
}

function enabled() {
    return bool(uint8(enabled))
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

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function sub_46bc9d41(?) {
    return sub_46bc9d41
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_5b449c4e(?) {
    return sub_5b449c4e
}

function sub_5cb1b9f3(?) {
    return sub_5cb1b9f3Address
}

function random() {
    return randomAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_65b3e4cf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_65b3e4cf.length
    return sub_65b3e4cf[arg1].field_0
}

function sub_6a01b671(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a01b671.length
    return sub_6a01b671[arg1].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function mintTime() {
    return mintTime
}

function owner() {
    return owner
}

function sub_ac7b1c0a(?) {
    return sub_ac7b1c0aAddress
}

function sub_b146e408(?) {
    require calldata.size - 4 >= 32
    return bool(stor369[arg1])
}

function sub_b8746e73(?) {
    return sub_b8746e73Address
}

function sub_ba58e17c(?) {
    return sub_ba58e17c
}

function sub_c1608d6b(?) {
    require calldata.size - 4 >= 32
    return sub_c1608d6b[arg1]
}

function sub_c56eb1dc(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c56eb1dc.length
    return sub_c56eb1dc[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor156[address(arg1)][address(arg2)])
}

function sub_eebc9fc7(?) {
    return sub_eebc9fc7Address
}

function sub_f454670b(?) {
    require calldata.size - 4 >= 32
    return bool(stor359[arg1])
}

function reserved() {
    return reserved
}

function sub_dda52d53(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintTime = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor362) = not uint8(enabled) or Mask(248, 8, uint256(stor362))
}

function sub_7afa8419(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba58e17c = arg1
    emit 0xd5035c19: arg1
}

function setRandom(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomAddress = arg1
}

function setNameChangeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_46bc9d41 = arg1
    emit 0xd5035c19: arg1
}

function sub_60b6571c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_17607ad9Address = address(arg1)
}

function sub_c2ba1701(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5cb1b9f3Address = address(arg1)
}

function sub_d2a1b8fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eebc9fc7Address = address(arg1)
}

function sub_f9ef5192(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b8746e73Address = address(arg1)
}

function setMintPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_6a01b671.length:
        revert with 0, 50
    sub_6a01b671[arg2].field_0 = arg1
}

function setMintAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= sub_c56eb1dc.length:
        revert with 0, 50
    sub_c56eb1dc[arg2].field_0 = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_ba6027ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor363[address(arg1)]) = not uint8(stor363[address(arg1)]) or Mask(248, 8, uint256(stor363[address(arg1)]))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor156[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(stor102[arg1].field_0):
        if arg2 and Mask(96, 0, stor102[arg1].field_160) > -1 / arg2:
            revert with 0, 17
        return address(stor102[arg1].field_0), arg2 * Mask(96, 0, stor102[arg1].field_160) / 10000
    if arg2 and Mask(96, 0, stor101.field_160) > -1 / arg2:
        revert with 0, 17
    return address(stor101.field_0), arg2 * Mask(96, 0, stor101.field_160) / 10000
}

function sub_c21b471b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if Mask(96, 0, arg2) > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not address(arg1):
        revert with 0, 'ERC2981: invalid receiver'
    address(stor101.field_0) = address(arg1)
    Mask(96, 0, stor101.field_160) = Mask(96, 0, arg2)
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
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor156[stor153[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_207da400(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    stor204[arg1] = tokenByIndex.length
    tokenByIndex.length++
    storA7CE[stor203.length] = arg1
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = arg1
            stor202[arg1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg1]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg1]
        stor204[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(0, msg.sender, arg1);
}

function sub_438534ad(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor363[msg.sender]):
        revert with 0, 'Exchange not permitted'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor153[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor153[arg1]] - 1 != stor202[arg1]:
            tokenOfOwnerByIndex[stor153[arg1]][stor202[arg1]] = tokenOfOwnerByIndex[stor153[arg1]][stor154[stor153[arg1]] - 1]
            stor202[stor201[stor153[arg1]][stor154[stor153[arg1]] - 1]] = stor202[arg1]
        stor202[arg1] = 0
        tokenOfOwnerByIndex[stor153[arg1]][stor154[stor153[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor204[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor204[arg1]] = tokenByIndex[tokenByIndex.length]
    stor204[stor203[stor203.length]] = stor204[arg1]
    stor204[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor153[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor153[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    stor102[arg1].field_0 = 0
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor364.length):
        if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor364.length = 0
            idx = 0
            while (uint255(stor364.length) * 0.5) + 31 / 32 > idx:
                stor364[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor364.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor364[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor364.length) * 0.5) + 31 / 32 > idx:
                stor364[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor364.length = 0
            idx = 0
            while stor364.length.field_1 % 128 + 31 / 32 > idx:
                stor364[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor364.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor364[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor364.length.field_1 % 128 + 31 / 32 > idx:
                stor364[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setImageURL(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor365.length):
        if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor365.length = 0
            idx = 0
            while (uint255(stor365.length) * 0.5) + 31 / 32 > idx:
                stor365[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor365.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor365[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor365.length) * 0.5) + 31 / 32 > idx:
                stor365[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor365.length = 0
            idx = 0
            while stor365.length.field_1 % 128 + 31 / 32 > idx:
                stor365[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor365.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor365[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor365.length.field_1 % 128 + 31 / 32 > idx:
                stor365[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_78199e80(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor366.length):
        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor366.length = 0
            idx = 0
            while (uint255(stor366.length) * 0.5) + 31 / 32 > idx:
                stor366[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor366.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor366[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor366.length) * 0.5) + 31 / 32 > idx:
                stor366[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            stor366.length = 0
            idx = 0
            while stor366.length.field_1 % 128 + 31 / 32 > idx:
                stor366[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor366.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor366[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor366.length.field_1 % 128 + 31 / 32 > idx:
                stor366[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_fc7bfd45(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not address(arg2):
        stor204[arg1] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg1
    else:
        if address(arg2) != address(arg3):
            if not address(arg2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg2)] < 1:
                revert with 0, 17
            if balanceOf[address(arg2)] - 1 != stor202[arg1]:
                tokenOfOwnerByIndex[address(arg2)][stor202[arg1]] = tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)] - 1]
                stor202[stor201[address(arg2)][stor154[address(arg2)] - 1]] = stor202[arg1]
            stor202[arg1] = 0
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)] - 1] = 0
    if address(arg3):
        if address(arg3) != address(arg2):
            if not address(arg3):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg3)][stor154[address(arg3)]] = arg1
            stor202[arg1] = balanceOf[address(arg3)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg1]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg1]
        stor204[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(arg2)] < 1:
        revert with 0, 17
    balanceOf[address(arg2)]--
    if balanceOf[address(arg3)] > -2:
        revert with 0, 17
    balanceOf[address(arg3)]++
    ownerOf[arg1] = address(arg3)
    emit Transfer(address(arg2), address(arg3), arg1);
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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

function name() {
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor151.length):
            if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor151.length):
                if 31 < uint255(stor151.length) * 0.5:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor151.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        else:
            if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor151.length.field_1 % 128:
                if 31 < stor151.length.field_1 % 128:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
        mem[ceil32(uint255(stor151.length) * 0.5) + 192 len ceil32(uint255(stor151.length) * 0.5)] = mem[128 len ceil32(uint255(stor151.length) * 0.5)]
        if ceil32(uint255(stor151.length) * 0.5) > uint255(stor151.length) * 0.5:
            mem[(uint255(stor151.length) * 0.5) + ceil32(uint255(stor151.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)], mem[(2 * ceil32(uint255(stor151.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor151.length) * 0.5)]), 
    if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor151.length):
            if 31 < uint255(stor151.length) * 0.5:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while (uint255(stor151.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    else:
        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor151.length.field_1 % 128:
            if 31 < stor151.length.field_1 % 128:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor151.length.field_8)
    mem[ceil32(stor151.length.field_1 % 128) + 192 len ceil32(stor151.length.field_1 % 128)] = mem[128 len ceil32(stor151.length.field_1 % 128)]
    if ceil32(stor151.length.field_1 % 128) > stor151.length.field_1 % 128:
        mem[stor151.length.field_1 % 128 + ceil32(stor151.length.field_1 % 128) + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1 % 128)], mem[(2 * ceil32(stor151.length.field_1 % 128)) + 192 len 2 * ceil32(stor151.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152.length):
            if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor152.length):
                if 31 < uint255(stor152.length) * 0.5:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor152.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        else:
            if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor152.length.field_1 % 128:
                if 31 < stor152.length.field_1 % 128:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
        mem[ceil32(uint255(stor152.length) * 0.5) + 192 len ceil32(uint255(stor152.length) * 0.5)] = mem[128 len ceil32(uint255(stor152.length) * 0.5)]
        if ceil32(uint255(stor152.length) * 0.5) > uint255(stor152.length) * 0.5:
            mem[(uint255(stor152.length) * 0.5) + ceil32(uint255(stor152.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)], mem[(2 * ceil32(uint255(stor152.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor152.length) * 0.5)]), 
    if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor152.length):
            if 31 < uint255(stor152.length) * 0.5:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while (uint255(stor152.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    else:
        if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor152.length.field_1 % 128:
            if 31 < stor152.length.field_1 % 128:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor152.length.field_8)
    mem[ceil32(stor152.length.field_1 % 128) + 192 len ceil32(stor152.length.field_1 % 128)] = mem[128 len ceil32(stor152.length.field_1 % 128)]
    if ceil32(stor152.length.field_1 % 128) > stor152.length.field_1 % 128:
        mem[stor152.length.field_1 % 128 + ceil32(stor152.length.field_1 % 128) + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1 % 128)], mem[(2 * ceil32(stor152.length.field_1 % 128)) + 192 len 2 * ceil32(stor152.length.field_1 % 128)]), 
}

function baseURI() {
    if bool(stor364.length):
        if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor364.length):
            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor364.length):
                if 31 < uint255(stor364.length) * 0.5:
                    mem[128] = uint256(stor364.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor364.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor364[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor364.length), data=mem[128 len ceil32(uint255(stor364.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor364.length.field_8)
        else:
            if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor364.length.field_1 % 128:
                if 31 < stor364.length.field_1 % 128:
                    mem[128] = uint256(stor364.field_0)
                    idx = 128
                    s = 0
                    while stor364.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor364[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor364.length), data=mem[128 len ceil32(uint255(stor364.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor364.length.field_8)
        mem[ceil32(uint255(stor364.length) * 0.5) + 192 len ceil32(uint255(stor364.length) * 0.5)] = mem[128 len ceil32(uint255(stor364.length) * 0.5)]
        if ceil32(uint255(stor364.length) * 0.5) > uint255(stor364.length) * 0.5:
            mem[(uint255(stor364.length) * 0.5) + ceil32(uint255(stor364.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor364.length), data=mem[128 len ceil32(uint255(stor364.length) * 0.5)], mem[(2 * ceil32(uint255(stor364.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor364.length) * 0.5)]), 
    if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor364.length):
        if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor364.length):
            if 31 < uint255(stor364.length) * 0.5:
                mem[128] = uint256(stor364.field_0)
                idx = 128
                s = 0
                while (uint255(stor364.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor364[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor364.length % 128, data=mem[128 len ceil32(stor364.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor364.length.field_8)
    else:
        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor364.length.field_1 % 128:
            if 31 < stor364.length.field_1 % 128:
                mem[128] = uint256(stor364.field_0)
                idx = 128
                s = 0
                while stor364.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor364[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor364.length % 128, data=mem[128 len ceil32(stor364.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor364.length.field_8)
    mem[ceil32(stor364.length.field_1 % 128) + 192 len ceil32(stor364.length.field_1 % 128)] = mem[128 len ceil32(stor364.length.field_1 % 128)]
    if ceil32(stor364.length.field_1 % 128) > stor364.length.field_1 % 128:
        mem[stor364.length.field_1 % 128 + ceil32(stor364.length.field_1 % 128) + 192] = 0
    return Array(len=stor364.length % 128, data=mem[128 len ceil32(stor364.length.field_1 % 128)], mem[(2 * ceil32(stor364.length.field_1 % 128)) + 192 len 2 * ceil32(stor364.length.field_1 % 128)]), 
}

function imageURL() {
    if bool(stor365.length):
        if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor365.length):
            if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor365.length):
                if 31 < uint255(stor365.length) * 0.5:
                    mem[128] = uint256(stor365.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor365.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor365[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor365.length), data=mem[128 len ceil32(uint255(stor365.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor365.length.field_8)
        else:
            if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor365.length.field_1 % 128:
                if 31 < stor365.length.field_1 % 128:
                    mem[128] = uint256(stor365.field_0)
                    idx = 128
                    s = 0
                    while stor365.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor365[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor365.length), data=mem[128 len ceil32(uint255(stor365.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor365.length.field_8)
        mem[ceil32(uint255(stor365.length) * 0.5) + 192 len ceil32(uint255(stor365.length) * 0.5)] = mem[128 len ceil32(uint255(stor365.length) * 0.5)]
        if ceil32(uint255(stor365.length) * 0.5) > uint255(stor365.length) * 0.5:
            mem[(uint255(stor365.length) * 0.5) + ceil32(uint255(stor365.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor365.length), data=mem[128 len ceil32(uint255(stor365.length) * 0.5)], mem[(2 * ceil32(uint255(stor365.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor365.length) * 0.5)]), 
    if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor365.length):
        if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor365.length):
            if 31 < uint255(stor365.length) * 0.5:
                mem[128] = uint256(stor365.field_0)
                idx = 128
                s = 0
                while (uint255(stor365.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor365[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor365.length % 128, data=mem[128 len ceil32(stor365.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor365.length.field_8)
    else:
        if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor365.length.field_1 % 128:
            if 31 < stor365.length.field_1 % 128:
                mem[128] = uint256(stor365.field_0)
                idx = 128
                s = 0
                while stor365.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor365[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor365.length % 128, data=mem[128 len ceil32(stor365.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor365.length.field_8)
    mem[ceil32(stor365.length.field_1 % 128) + 192 len ceil32(stor365.length.field_1 % 128)] = mem[128 len ceil32(stor365.length.field_1 % 128)]
    if ceil32(stor365.length.field_1 % 128) > stor365.length.field_1 % 128:
        mem[stor365.length.field_1 % 128 + ceil32(stor365.length.field_1 % 128) + 192] = 0
    return Array(len=stor365.length % 128, data=mem[128 len ceil32(stor365.length.field_1 % 128)], mem[(2 * ceil32(stor365.length.field_1 % 128)) + 192 len 2 * ceil32(stor365.length.field_1 % 128)]), 
}

function sub_9ef122ae(?) {
    if bool(stor366.length):
        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor366.length):
            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor366.length):
                if 31 < uint255(stor366.length) * 0.5:
                    mem[128] = uint256(stor366.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor366.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor366[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor366.length), data=mem[128 len ceil32(uint255(stor366.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor366.length.field_8)
        else:
            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor366.length.field_1 % 128:
                if 31 < stor366.length.field_1 % 128:
                    mem[128] = uint256(stor366.field_0)
                    idx = 128
                    s = 0
                    while stor366.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor366[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor366.length), data=mem[128 len ceil32(uint255(stor366.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor366.length.field_8)
        mem[ceil32(uint255(stor366.length) * 0.5) + 192 len ceil32(uint255(stor366.length) * 0.5)] = mem[128 len ceil32(uint255(stor366.length) * 0.5)]
        if ceil32(uint255(stor366.length) * 0.5) > uint255(stor366.length) * 0.5:
            mem[(uint255(stor366.length) * 0.5) + ceil32(uint255(stor366.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor366.length), data=mem[128 len ceil32(uint255(stor366.length) * 0.5)], mem[(2 * ceil32(uint255(stor366.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor366.length) * 0.5)]), 
    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor366.length):
        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor366.length):
            if 31 < uint255(stor366.length) * 0.5:
                mem[128] = uint256(stor366.field_0)
                idx = 128
                s = 0
                while (uint255(stor366.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor366[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor366.length % 128, data=mem[128 len ceil32(stor366.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor366.length.field_8)
    else:
        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor366.length.field_1 % 128:
            if 31 < stor366.length.field_1 % 128:
                mem[128] = uint256(stor366.field_0)
                idx = 128
                s = 0
                while stor366.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor366[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor366.length % 128, data=mem[128 len ceil32(stor366.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor366.length.field_8)
    mem[ceil32(stor366.length.field_1 % 128) + 192 len ceil32(stor366.length.field_1 % 128)] = mem[128 len ceil32(stor366.length.field_1 % 128)]
    if ceil32(stor366.length.field_1 % 128) > stor366.length.field_1 % 128:
        mem[stor366.length.field_1 % 128 + ceil32(stor366.length.field_1 % 128) + 192] = 0
    return Array(len=stor366.length % 128, data=mem[128 len ceil32(stor366.length.field_1 % 128)], mem[(2 * ceil32(stor366.length.field_1 % 128)) + 192 len 2 * ceil32(stor366.length.field_1 % 128)]), 
}

function sub_b85e82f2(?) {
    require calldata.size - 4 >= 32
    if bool(stor370[arg1].field_0):
        if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor370[arg1].field_0):
            if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor370[arg1].field_0):
                if 31 < uint255(stor370[arg1].field_0) * 0.5:
                    mem[128] = stor370[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor370[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor370[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
        else:
            if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor370[arg1].field_1 % 128:
                if 31 < stor370[arg1].field_1 % 128:
                    mem[128] = stor370[arg1].field_0
                    idx = 128
                    s = 0
                    while stor370[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor370[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor370[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor370[arg1].field_0) * 0.5) > uint255(stor370[arg1].field_0) * 0.5:
            mem[(uint255(stor370[arg1].field_0) * 0.5) + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)]), 
    if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor370[arg1].field_0):
        if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor370[arg1].field_0):
            if 31 < uint255(stor370[arg1].field_0) * 0.5:
                mem[128] = stor370[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor370[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor370[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
    else:
        if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor370[arg1].field_1 % 128:
            if 31 < stor370[arg1].field_1 % 128:
                mem[128] = stor370[arg1].field_0
                idx = 128
                s = 0
                while stor370[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor370[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
    mem[ceil32(stor370[arg1].field_1 % 128) + 192 len ceil32(stor370[arg1].field_1 % 128)] = mem[128 len ceil32(stor370[arg1].field_1 % 128)]
    if ceil32(stor370[arg1].field_1 % 128) > stor370[arg1].field_1 % 128:
        mem[stor370[arg1].field_1 % 128 + ceil32(stor370[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)], mem[(2 * ceil32(stor370[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor370[arg1].field_1 % 128)]), 
}

function sub_d57c046d(?) {
    require calldata.size - 4 >= 32
    if bool(stor371[arg1].field_0):
        if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor371[arg1].field_0):
            if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor371[arg1].field_0):
                if 31 < uint255(stor371[arg1].field_0) * 0.5:
                    mem[128] = stor371[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor371[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor371[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
        else:
            if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor371[arg1].field_1 % 128:
                if 31 < stor371[arg1].field_1 % 128:
                    mem[128] = stor371[arg1].field_0
                    idx = 128
                    s = 0
                    while stor371[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor371[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
        mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor371[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor371[arg1].field_0) * 0.5) > uint255(stor371[arg1].field_0) * 0.5:
            mem[(uint255(stor371[arg1].field_0) * 0.5) + ceil32(uint255(stor371[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor371[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor371[arg1].field_0) * 0.5)]), 
    if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor371[arg1].field_0):
        if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor371[arg1].field_0):
            if 31 < uint255(stor371[arg1].field_0) * 0.5:
                mem[128] = stor371[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor371[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor371[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
    else:
        if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor371[arg1].field_1 % 128:
            if 31 < stor371[arg1].field_1 % 128:
                mem[128] = stor371[arg1].field_0
                idx = 128
                s = 0
                while stor371[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor371[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
    mem[ceil32(stor371[arg1].field_1 % 128) + 192 len ceil32(stor371[arg1].field_1 % 128)] = mem[128 len ceil32(stor371[arg1].field_1 % 128)]
    if ceil32(stor371[arg1].field_1 % 128) > stor371[arg1].field_1 % 128:
        mem[stor371[arg1].field_1 % 128 + ceil32(stor371[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)], mem[(2 * ceil32(stor371[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor371[arg1].field_1 % 128)]), 
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor151.length) = 0
        uint255(stor151.length.field_1) = 26
        Mask(248, 0, stor151.length.field_8) = 'Midgardian Generation Zero' / 256
        idx = 0
        while (uint255(stor151.length) * 0.5) + 31 / 32 > idx:
            stor151[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor151.length) = 0
        uint255(stor151.length.field_1) = 26
        Mask(248, 0, stor151.length.field_8) = 'Midgardian Generation Zero' / 256
        idx = 0
        while stor151.length.field_1 % 128 + 31 / 32 > idx:
            stor151[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor152.length) = 0
        uint255(stor152.length.field_1) = 3
        stor152.length.field_232 % 16777216 = 5064538
        idx = 0
        while (uint255(stor152.length) * 0.5) + 31 / 32 > idx:
            stor152[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor152.length) = 0
        uint255(stor152.length.field_1) = 3
        stor152.length.field_232 % 16777216 = 5064538
        idx = 0
        while stor152.length.field_1 % 128 + 31 / 32 > idx:
            stor152[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    mem[224] = 14 * 10^17
    mem[256] = 14 * 10^17
    mem[288] = 14 * 10^17
    mem[320] = 14 * 10^17
    sub_6a01b671.length = 4
    s = 0
    idx = 224
    while 352 > idx:
        uint64(sub_6a01b671[s].field_0) = mem[idx + 24 len 8]
        Mask(192, 0, sub_6a01b671[s].field_64) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while sub_6a01b671.length > idx:
        sub_6a01b671[idx].field_0 = 0
        idx = idx + 1
        continue 
    MAX_SUPPLY = 10000
    mem[352] = 10
    mem[384] = 12
    mem[416] = 15
    mem[448] = 18
    sub_c56eb1dc.length = 4
    s = 0
    idx = 352
    while 480 > idx:
        uint8(sub_c56eb1dc[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, sub_c56eb1dc[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while sub_c56eb1dc.length > idx:
        sub_c56eb1dc[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[480] = 10^11
    mem[512] = 2 * 10^11
    mem[544] = 3 * 10^11
    sub_65b3e4cf.length = 3
    s = 0
    idx = 480
    while 576 > idx:
        sub_65b3e4cf[s].field_0 % 1099511627776 = mem[idx + 27 len 5]
        Mask(216, 0, sub_65b3e4cf[s].field_40) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while sub_65b3e4cf.length > idx:
        sub_65b3e4cf[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_17607ad9Address = 0xf5ee578505f4d876fef288dfd9fd5e15e9ea1318
    sub_eebc9fc7Address = 0xd1346925e2a09562df399652a2f4ac38a93404ee
    sub_5cb1b9f3Address = 0x9c811effa8b1dc7f7590f18e9bea8f0ebec20bf4
    sub_b8746e73Address = 0x44a45a9baeb63c6ea4860ecf9ac5732c330c4d4e
    sub_ac7b1c0aAddress = 0x90f28160fb5d89c507e329076d99cb8297e9fb1f
    randomAddress = 0x1e4e7e72cb9266c5d542d7173be13f616a356865
    if not owner:
        revert with 0, 'ERC2981: invalid receiver'
    address(stor101.field_0) = owner
    uint16(stor101.field_160) = 400
    Mask(80, 0, stor101.field_176) = 0
    sub_46bc9d41 = 25 * 10^16
    sub_ba58e17c = 25 * 10^16
    mintTime = 457535 * 3600
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function reservedMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5b449c4e > !arg1:
        revert with 0, 17
    if sub_5b449c4e + arg1 < arg1:
        revert with 0, 17
    staticcall randomAddress.enoughRandom() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = MAX_SUPPLY - sub_5b449c4e
    t = ext_call.return_data[0]
    while idx < arg1:
        if not s:
            revert with 0, 18
        if sub_c1608d6b[s - 1]:
            sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = sub_c1608d6b[s - 1]
        else:
            sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = s - 1
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if sub_c1608d6b[Mask(256, -idx, t) >> idx % s]:
            if ownerOf[stor358[Mask(256, -idx, t) >> idx % s]]:
                revert with 0, 'ERC721: token already minted'
            stor204[stor358[Mask(256, -idx, t) >> idx % s]] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                    stor202[stor358[Mask(256, -idx, t) >> idx % s]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[stor358[Mask(256, -idx, t) >> idx % s]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[stor358[Mask(256, -idx, t) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[stor358[Mask(256, -idx, t) >> idx % s]]
                stor204[stor358[Mask(256, -idx, t) >> idx % s]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
            mem[32] = 153
            ownerOf[stor358[Mask(256, -idx, t) >> idx % s]] = msg.sender
            emit Transfer(0, msg.sender, sub_c1608d6b[Mask(256, -idx, t) >> idx % s]);
        else:
            if ownerOf[Mask(256, -idx, t) >> idx % s]:
                revert with 0, 'ERC721: token already minted'
            stor204[Mask(256, -idx, t) >> idx % s] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = Mask(256, -idx, t) >> idx % s
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(256, -idx, t) >> idx % s
                    stor202[Mask(256, -idx, t) >> idx % s] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[Mask(256, -idx, t) >> idx % s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[Mask(256, -idx, t) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[Mask(256, -idx, t) >> idx % s]
                stor204[Mask(256, -idx, t) >> idx % s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = Mask(256, -idx, t) >> idx % s
            mem[32] = 153
            ownerOf[Mask(256, -idx, t) >> idx % s] = msg.sender
            emit Transfer(0, msg.sender, Mask(256, -idx, t) >> idx % s);
        idx = idx + 1
        s = s - 1
        t = Mask(256, -idx, t) >> idx
        continue 
    sub_5b449c4e += arg1
}

function sub_d1ca7d83(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[0] = cd[4]
    mem[32] = 153
    if not ownerOf[cd[4]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[4]] != msg.sender:
        revert with 0, 'Owner must change name of token'
    if sub_ba58e17c > msg.value:
        revert with 1497754198
    mem[64] = ceil32(('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    if ('cd', 36).length > 255:
        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                else:
                    if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                        else:
                            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                    revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
        idx = idx + 1
        continue 
    if bool(stor371[cd[4]].field_0):
        if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor371[cd[4]].field_0 = 0
            idx = 0
            while (uint255(stor371[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor371[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor371[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor371[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor371[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                stor371[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor371[cd[4]].field_0 = 0
            idx = 0
            while stor371[cd[4]].field_1 % 128 + 31 / 32 > idx:
                stor371[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor371[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor371[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor371[cd[4]].field_1 % 128 + 31 / 32 > idx:
                stor371[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(('cd', 36).length) + 128] = cd[4]
    emit 0x9e90a9b1: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 160 len -('cd', 36).length + ceil32(('cd', 36).length)]
}

function sub_fdfb5244(?) {
    require calldata.size - 4 >= 32
    if bool(stor371[arg1].field_0):
        if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor371[arg1].field_0):
            if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor371[arg1].field_0):
                if 31 < uint255(stor371[arg1].field_0) * 0.5:
                    mem[128] = stor371[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor371[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor371[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 0 == uint255(stor371[arg1].field_0) * 0.5:
                        return 32, 45, 
                               0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
                               0
                    return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
        else:
            if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor371[arg1].field_1 % 128:
                if 31 < stor371[arg1].field_1 % 128:
                    mem[128] = stor371[arg1].field_0
                    idx = 128
                    s = 0
                    while stor371[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor371[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 0 == uint255(stor371[arg1].field_0) * 0.5:
                        return 32, 45, 
                               0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
                               0
                    return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
        if 0 == uint255(stor371[arg1].field_0) * 0.5:
            return 32, 45, 
                   0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
                   0
        mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor371[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor371[arg1].field_0) * 0.5) > uint255(stor371[arg1].field_0) * 0.5:
            mem[(uint255(stor371[arg1].field_0) * 0.5) + ceil32(uint255(stor371[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor371[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor371[arg1].field_0) * 0.5)]), 
    if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor371[arg1].field_0):
        if bool(stor371[arg1].field_0) == uint255(stor371[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor371[arg1].field_0):
            if 31 < uint255(stor371[arg1].field_0) * 0.5:
                mem[128] = stor371[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor371[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor371[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if 0 == stor371[arg1].field_1 % 128:
                    return 32, 45, 
                           0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
                           0
                return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
    else:
        if bool(stor371[arg1].field_0) == stor371[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor371[arg1].field_1 % 128:
            if 31 < stor371[arg1].field_1 % 128:
                mem[128] = stor371[arg1].field_0
                idx = 128
                s = 0
                while stor371[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor371[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if 0 == stor371[arg1].field_1 % 128:
                    return 32, 45, 
                           0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
                           0
                return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
    if 0 == stor371[arg1].field_1 % 128:
        return 32, 45, 
               0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
               0
    mem[ceil32(stor371[arg1].field_1 % 128) + 192 len ceil32(stor371[arg1].field_1 % 128)] = mem[128 len ceil32(stor371[arg1].field_1 % 128)]
    if ceil32(stor371[arg1].field_1 % 128) > stor371[arg1].field_1 % 128:
        mem[stor371[arg1].field_1 % 128 + ceil32(stor371[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)], mem[(2 * ceil32(stor371[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor371[arg1].field_1 % 128)]), 
}

function sub_aae04cae(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = idx
        staticcall sub_ac7b1c0aAddress.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == mem[_304 + 12 len 20]
        if mem[_304 + 12 len 20]:
            mem[mem[64] + 4] = idx
            staticcall sub_ac7b1c0aAddress.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _309 = mem[_308]
            require mem[_308] == mem[_308 + 12 len 20]
            mem[0] = idx
            mem[32] = 358
            if sub_c1608d6b[idx]:
                if sub_c1608d6b[stor352 + -stor356 - 1]:
                    sub_c1608d6b[idx] = sub_c1608d6b[stor352 + -stor356 - 1]
                    mem[mem[64] + 4] = idx
                    staticcall sub_ac7b1c0aAddress.0xf454670b with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_321] == bool(mem[_321])
                    if mem[_321]:
                        stor359[stor358[idx]] = 1
                else:
                    sub_c1608d6b[idx] = MAX_SUPPLY + -sub_5b449c4e - 1
                    mem[mem[64] + 4] = idx
                    staticcall sub_ac7b1c0aAddress.0xf454670b with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_322] == bool(mem[_322])
                    if mem[_322]:
                        stor359[stor358[idx]] = 1
                if not address(_309):
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor358[idx]]:
                    revert with 0, 'ERC721: token already minted'
                stor204[stor358[idx]] = tokenByIndex.length
                tokenByIndex.length++
                storA7CE[stor203.length] = sub_c1608d6b[idx]
                if address(_309):
                    if address(_309):
                        if not address(_309):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(_309)][stor154[address(_309)]] = sub_c1608d6b[idx]
                        stor202[stor358[idx]] = balanceOf[address(_309)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor204[stor358[idx]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor204[stor358[idx]]] = tokenByIndex[tokenByIndex.length]
                    stor204[stor203[stor203.length]] = stor204[stor358[idx]]
                    stor204[stor358[idx]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(_309)] > -2:
                    revert with 0, 17
                balanceOf[address(_309)]++
                mem[0] = sub_c1608d6b[idx]
                mem[32] = 153
                ownerOf[stor358[idx]] = address(_309)
                emit Transfer(0, address(_309), sub_c1608d6b[idx]);
            else:
                if sub_c1608d6b[stor352 + -stor356 - 1]:
                    sub_c1608d6b[idx] = sub_c1608d6b[stor352 + -stor356 - 1]
                    mem[mem[64] + 4] = idx
                    staticcall sub_ac7b1c0aAddress.0xf454670b with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _327 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_327] == bool(mem[_327])
                    if mem[_327]:
                        stor359[idx] = 1
                else:
                    sub_c1608d6b[idx] = MAX_SUPPLY + -sub_5b449c4e - 1
                    mem[mem[64] + 4] = idx
                    staticcall sub_ac7b1c0aAddress.0xf454670b with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_328] == bool(mem[_328])
                    if mem[_328]:
                        stor359[idx] = 1
                if not address(_309):
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[idx]:
                    revert with 0, 'ERC721: token already minted'
                stor204[idx] = tokenByIndex.length
                tokenByIndex.length++
                storA7CE[stor203.length] = idx
                if address(_309):
                    if address(_309):
                        if not address(_309):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(_309)][stor154[address(_309)]] = idx
                        stor202[idx] = balanceOf[address(_309)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor204[idx] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor204[idx]] = tokenByIndex[tokenByIndex.length]
                    stor204[stor203[stor203.length]] = stor204[idx]
                    stor204[idx] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(_309)] > -2:
                    revert with 0, 17
                balanceOf[address(_309)]++
                mem[0] = idx
                mem[32] = 153
                ownerOf[idx] = address(_309)
                emit Transfer(0, address(_309), idx);
            mem[mem[64]] = 0x438534ad00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = idx
            require ext_code.size(sub_ac7b1c0aAddress)
            call sub_ac7b1c0aAddress.0x438534ad with:
                 gas gas_remaining wei
                args idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_5b449c4e == -1:
                revert with 0, 17
            sub_5b449c4e++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f435a842(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(enabled):
        if owner != msg.sender:
            revert with 0, 'Minting not enabled'
    if arg1 <= 0:
        revert with 0, 'Mint must be non-zero'
    staticcall sub_eebc9fc7Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_5cb1b9f3Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
        revert with 0, 17
    if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    staticcall sub_b8746e73Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 >= sub_65b3e4cf.length:
        revert with 0, 50
    if 0 >= uint256(sub_65b3e4cf.field_512):
        if 3 >= sub_6a01b671.length:
            revert with 0, 50
        if 3 >= sub_c56eb1dc.length:
            revert with 0, 50
        if ext_call.return_data[0] < 10^15:
            if uint256(sub_6a01b671.field_768) and arg1 > -1 / uint256(sub_6a01b671.field_768):
                revert with 0, 17
            if uint256(sub_6a01b671.field_768) * arg1 > msg.value:
                revert with 0, 'Insufficient AVAX'
            if arg1 > !minted[msg.sender]:
                revert with 0, 17
            if uint256(sub_c56eb1dc.field_768) < arg1 + minted[msg.sender]:
                revert with 0, 'Requested amount exceeds wallet mint limits'
        else:
            if 5 > !uint256(sub_c56eb1dc.field_768):
                revert with 0, 17
            if uint256(sub_6a01b671.field_768) and arg1 > -1 / uint256(sub_6a01b671.field_768):
                revert with 0, 17
            if uint256(sub_6a01b671.field_768) * arg1 > msg.value:
                revert with 0, 'Insufficient AVAX'
            if arg1 > !minted[msg.sender]:
                revert with 0, 17
            if uint256(sub_c56eb1dc.field_768) + 5 < arg1 + minted[msg.sender]:
                revert with 0, 'Requested amount exceeds wallet mint limits'
    else:
        if 1 >= sub_65b3e4cf.length:
            revert with 0, 50
        if 0 >= uint256(sub_65b3e4cf.field_256):
            if 2 >= sub_6a01b671.length:
                revert with 0, 50
            if 2 >= sub_c56eb1dc.length:
                revert with 0, 50
            if ext_call.return_data[0] < 10^15:
                if uint256(sub_6a01b671.field_512) and arg1 > -1 / uint256(sub_6a01b671.field_512):
                    revert with 0, 17
                if uint256(sub_6a01b671.field_512) * arg1 > msg.value:
                    revert with 0, 'Insufficient AVAX'
                if arg1 > !minted[msg.sender]:
                    revert with 0, 17
                if uint256(sub_c56eb1dc.field_512) < arg1 + minted[msg.sender]:
                    revert with 0, 'Requested amount exceeds wallet mint limits'
            else:
                if 5 > !uint256(sub_c56eb1dc.field_512):
                    revert with 0, 17
                if uint256(sub_6a01b671.field_512) and arg1 > -1 / uint256(sub_6a01b671.field_512):
                    revert with 0, 17
                if uint256(sub_6a01b671.field_512) * arg1 > msg.value:
                    revert with 0, 'Insufficient AVAX'
                if arg1 > !minted[msg.sender]:
                    revert with 0, 17
                if uint256(sub_c56eb1dc.field_512) + 5 < arg1 + minted[msg.sender]:
                    revert with 0, 'Requested amount exceeds wallet mint limits'
        else:
            if 0 >= sub_65b3e4cf.length:
                revert with 0, 50
            if 0 < uint256(sub_65b3e4cf.field_0):
                if 0 >= sub_6a01b671.length:
                    revert with 0, 50
                if 0 >= sub_c56eb1dc.length:
                    revert with 0, 50
                if ext_call.return_data[0] < 10^15:
                    if uint256(sub_6a01b671.field_0) and arg1 > -1 / uint256(sub_6a01b671.field_0):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_0) * arg1 > msg.value:
                        revert with 0, 'Insufficient AVAX'
                    if arg1 > !minted[msg.sender]:
                        revert with 0, 17
                    if uint256(sub_c56eb1dc.field_0) < arg1 + minted[msg.sender]:
                        revert with 0, 'Requested amount exceeds wallet mint limits'
                else:
                    if 5 > !uint256(sub_c56eb1dc.field_0):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_0) and arg1 > -1 / uint256(sub_6a01b671.field_0):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_0) * arg1 > msg.value:
                        revert with 0, 'Insufficient AVAX'
                    if arg1 > !minted[msg.sender]:
                        revert with 0, 17
                    if uint256(sub_c56eb1dc.field_0) + 5 < arg1 + minted[msg.sender]:
                        revert with 0, 'Requested amount exceeds wallet mint limits'
            else:
                if 1 >= sub_6a01b671.length:
                    revert with 0, 50
                if 1 >= sub_c56eb1dc.length:
                    revert with 0, 50
                if ext_call.return_data[0] < 10^15:
                    if uint256(sub_6a01b671.field_256) and arg1 > -1 / uint256(sub_6a01b671.field_256):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_256) * arg1 > msg.value:
                        revert with 0, 'Insufficient AVAX'
                    if arg1 > !minted[msg.sender]:
                        revert with 0, 17
                    if uint256(sub_c56eb1dc.field_256) < arg1 + minted[msg.sender]:
                        revert with 0, 'Requested amount exceeds wallet mint limits'
                else:
                    if 5 > !uint256(sub_c56eb1dc.field_256):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_256) and arg1 > -1 / uint256(sub_6a01b671.field_256):
                        revert with 0, 17
                    if uint256(sub_6a01b671.field_256) * arg1 > msg.value:
                        revert with 0, 'Insufficient AVAX'
                    if arg1 > !minted[msg.sender]:
                        revert with 0, 17
                    if uint256(sub_c56eb1dc.field_256) + 5 < arg1 + minted[msg.sender]:
                        revert with 0, 'Requested amount exceeds wallet mint limits'
    if minted[msg.sender] > !arg1:
        revert with 0, 17
    minted[msg.sender] += arg1
    if msg.sender != tx.origin:
        revert with 1019298480
    if arg1 + sub_5b449c4e > MAX_SUPPLY - reserved:
        revert with 0, 'Request amount exceeds total mint limits'
    staticcall randomAddress.enoughRandom() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = MAX_SUPPLY - sub_5b449c4e
    t = ext_call.return_data[0]
    while idx < arg1:
        if not s:
            revert with 0, 18
        if sub_c1608d6b[s - 1]:
            sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = sub_c1608d6b[s - 1]
        else:
            sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = s - 1
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if sub_c1608d6b[Mask(256, -idx, t) >> idx % s]:
            if ownerOf[stor358[Mask(256, -idx, t) >> idx % s]]:
                revert with 0, 'ERC721: token already minted'
            stor204[stor358[Mask(256, -idx, t) >> idx % s]] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                    stor202[stor358[Mask(256, -idx, t) >> idx % s]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[stor358[Mask(256, -idx, t) >> idx % s]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[stor358[Mask(256, -idx, t) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[stor358[Mask(256, -idx, t) >> idx % s]]
                stor204[stor358[Mask(256, -idx, t) >> idx % s]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
            mem[32] = 153
            ownerOf[stor358[Mask(256, -idx, t) >> idx % s]] = msg.sender
            emit Transfer(0, msg.sender, sub_c1608d6b[Mask(256, -idx, t) >> idx % s]);
        else:
            if ownerOf[Mask(256, -idx, t) >> idx % s]:
                revert with 0, 'ERC721: token already minted'
            stor204[Mask(256, -idx, t) >> idx % s] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = Mask(256, -idx, t) >> idx % s
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(256, -idx, t) >> idx % s
                    stor202[Mask(256, -idx, t) >> idx % s] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[Mask(256, -idx, t) >> idx % s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[Mask(256, -idx, t) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[Mask(256, -idx, t) >> idx % s]
                stor204[Mask(256, -idx, t) >> idx % s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = Mask(256, -idx, t) >> idx % s
            mem[32] = 153
            ownerOf[Mask(256, -idx, t) >> idx % s] = msg.sender
            emit Transfer(0, msg.sender, Mask(256, -idx, t) >> idx % s);
        idx = idx + 1
        s = s - 1
        t = Mask(256, -idx, t) >> idx
        continue 
    sub_5b449c4e += arg1
}

function sub_e59b625f(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 370
    if bool(stor370[arg1].field_0):
        if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor370[arg1].field_0):
            if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor370[arg1].field_0):
                if uint255(stor370[arg1].field_0) * 0.5 != 0:
                    mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor370[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor370[arg1].field_0) * 0.5) > uint255(stor370[arg1].field_0) * 0.5:
                        mem[(uint255(stor370[arg1].field_0) * 0.5) + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] = 0
                    return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)]), 
            else:
                if 31 >= uint255(stor370[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
                    if uint255(stor370[arg1].field_0) * 0.5 != 0:
                        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor370[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)]
                        if ceil32(uint255(stor370[arg1].field_0) * 0.5) > uint255(stor370[arg1].field_0) * 0.5:
                            mem[(uint255(stor370[arg1].field_0) * 0.5) + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] = 0
                        return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)]), 
                else:
                    mem[128] = stor370[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor370[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor370[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor370[arg1].field_0) * 0.5 != 0:
                        return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)])
        else:
            if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not stor370[arg1].field_1 % 128:
                if uint255(stor370[arg1].field_0) * 0.5 != 0:
                    mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor370[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor370[arg1].field_0) * 0.5) > uint255(stor370[arg1].field_0) * 0.5:
                        mem[(uint255(stor370[arg1].field_0) * 0.5) + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] = 0
                    return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)]), 
            else:
                if 31 >= stor370[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
                    if uint255(stor370[arg1].field_0) * 0.5 != 0:
                        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor370[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)]
                        if ceil32(uint255(stor370[arg1].field_0) * 0.5) > uint255(stor370[arg1].field_0) * 0.5:
                            mem[(uint255(stor370[arg1].field_0) * 0.5) + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] = 0
                        return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor370[arg1].field_0) * 0.5)]), 
                else:
                    mem[128] = stor370[arg1].field_0
                    idx = 128
                    s = 0
                    while stor370[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor370[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if uint255(stor370[arg1].field_0) * 0.5 != 0:
                        return Array(len=2 * Mask(256, -1, stor370[arg1].field_0), data=mem[128 len ceil32(uint255(stor370[arg1].field_0) * 0.5)])
        ('eq', 0, ('mask_shl', 256, -1, -1, ('field', 0, ('stor', ('map', ('param', 'arg1'), ('name', 'stor370', 370))))))
        if not arg1:
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 224] = 'Midgardian #' << 160
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 236] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 237] = 32
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 269] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192]
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 301 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192])] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192]) > mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 301] = 0
            return Array(len=mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192], data=mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 301 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor370[arg1].field_0) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 192] = 'Midgardian #' << 160
        mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 204 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128])] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 204] = 32
        mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 236] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268] = 0
        return Array(len=mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor370[arg1].field_1 % 128
    if bool(stor370[arg1].field_0):
        if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor370[arg1].field_0):
            if stor370[arg1].field_1 % 128 != 0:
                mem[ceil32(stor370[arg1].field_1 % 128) + 192 len ceil32(stor370[arg1].field_1 % 128)] = mem[128 len ceil32(stor370[arg1].field_1 % 128)]
                if ceil32(stor370[arg1].field_1 % 128) > stor370[arg1].field_1 % 128:
                    mem[stor370[arg1].field_1 % 128 + ceil32(stor370[arg1].field_1 % 128) + 192] = 0
                return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)], mem[(2 * ceil32(stor370[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor370[arg1].field_1 % 128)]), 
        else:
            if 31 >= uint255(stor370[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
                if stor370[arg1].field_1 % 128 != 0:
                    mem[ceil32(stor370[arg1].field_1 % 128) + 192 len ceil32(stor370[arg1].field_1 % 128)] = mem[128 len ceil32(stor370[arg1].field_1 % 128)]
                    if ceil32(stor370[arg1].field_1 % 128) > stor370[arg1].field_1 % 128:
                        mem[stor370[arg1].field_1 % 128 + ceil32(stor370[arg1].field_1 % 128) + 192] = 0
                    return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)], mem[(2 * ceil32(stor370[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor370[arg1].field_1 % 128)]), 
            else:
                mem[0] = sha3(arg1, 370)
                mem[128] = stor370[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor370[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor370[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor370[arg1].field_1 % 128 != 0:
                    return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)])
    else:
        if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor370[arg1].field_1 % 128:
            if stor370[arg1].field_1 % 128 != 0:
                mem[ceil32(stor370[arg1].field_1 % 128) + 192 len ceil32(stor370[arg1].field_1 % 128)] = mem[128 len ceil32(stor370[arg1].field_1 % 128)]
                if ceil32(stor370[arg1].field_1 % 128) > stor370[arg1].field_1 % 128:
                    mem[stor370[arg1].field_1 % 128 + ceil32(stor370[arg1].field_1 % 128) + 192] = 0
                return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)], mem[(2 * ceil32(stor370[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor370[arg1].field_1 % 128)]), 
        else:
            if 31 >= stor370[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor370[arg1].field_8)
                if stor370[arg1].field_1 % 128 != 0:
                    mem[ceil32(stor370[arg1].field_1 % 128) + 192 len ceil32(stor370[arg1].field_1 % 128)] = mem[128 len ceil32(stor370[arg1].field_1 % 128)]
                    if ceil32(stor370[arg1].field_1 % 128) > stor370[arg1].field_1 % 128:
                        mem[stor370[arg1].field_1 % 128 + ceil32(stor370[arg1].field_1 % 128) + 192] = 0
                    return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)], mem[(2 * ceil32(stor370[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor370[arg1].field_1 % 128)]), 
            else:
                mem[0] = sha3(arg1, 370)
                mem[128] = stor370[arg1].field_0
                idx = 128
                s = 0
                while stor370[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor370[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor370[arg1].field_1 % 128 != 0:
                    return Array(len=stor370[arg1].field_0 % 128, data=mem[128 len ceil32(stor370[arg1].field_1 % 128)])
    ('eq', 0, ('type', 7, ('field', 1, ('stor', ('map', ('param', 'arg1'), ('name', 'stor370', 370))))))
    if not arg1:
        mem[ceil32(stor370[arg1].field_1 % 128) + 224] = 'Midgardian #' << 160
        mem[ceil32(stor370[arg1].field_1 % 128) + 236] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor370[arg1].field_1 % 128) + 237] = 32
        mem[ceil32(stor370[arg1].field_1 % 128) + 269] = mem[ceil32(stor370[arg1].field_1 % 128) + 192]
        mem[ceil32(stor370[arg1].field_1 % 128) + 301 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 192])] = mem[ceil32(stor370[arg1].field_1 % 128) + 224 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 192]) > mem[ceil32(stor370[arg1].field_1 % 128) + 192]:
            mem[mem[ceil32(stor370[arg1].field_1 % 128) + 192] + ceil32(stor370[arg1].field_1 % 128) + 301] = 0
        return Array(len=mem[ceil32(stor370[arg1].field_1 % 128) + 192], data=mem[ceil32(stor370[arg1].field_1 % 128) + 301 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 192])]), 
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
    mem[ceil32(stor370[arg1].field_1 % 128) + 128] = s
    if s:
        mem[ceil32(stor370[arg1].field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor370[arg1].field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor370[arg1].field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 192] = 'Midgardian #' << 160
    mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 204 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 128])] = mem[ceil32(stor370[arg1].field_1 % 128) + 160 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + 128])]
    mem[64] = mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 204
    mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 204] = 32
    mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 236] = mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]:
        mem[mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268] = 0
    return Array(len=mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])]), 
}

function sub_c8f9c331(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[0] = cd[4]
    mem[32] = 153
    if not ownerOf[cd[4]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[4]] != msg.sender:
        revert with 0, 'Owner must change name of token'
    if sub_46bc9d41 > msg.value:
        revert with 1497754198
    mem[64] = ceil32(('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    mem[128 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + 128] = 0
    if ('cd', 36).length > 25:
        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                else:
                    if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                        else:
                            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                    revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
        idx = idx + 1
        continue 
    if stor369[call.data[cd[36] + 36 len ('cd', 36).length]]:
        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
    if bool(stor370[cd[4]].field_0):
        if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor370[cd[4]].field_0):
            mem[ceil32(('cd', 36).length) + 128] = Mask(248, 8, stor370[cd[4]].field_0)
            stor369[mem[ceil32(('cd', 36).length) + 128 len uint255(stor370[cd[4]].field_0) * 0.5]] = 0
            stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
            if bool(stor370[cd[4]].field_0):
                if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor370[cd[4]].field_0 = 0
                    idx = 0
                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor370[cd[4]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor370[cd[4]].field_0 = 0
                    idx = 0
                    while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor370[cd[4]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[ceil32(('cd', 36).length) + 128] = cd[4]
            emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 160 len -('cd', 36).length + ceil32(('cd', 36).length)]
        else:
            if bool(stor370[cd[4]].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor370[cd[4]].field_0) * 0.5:
                    mem[idx + ceil32(('cd', 36).length) + 128] = stor370[cd[4]][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor369[mem[ceil32(('cd', 36).length) + 128 len uint255(stor370[cd[4]].field_0) * 0.5]] = 0
                stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                if bool(stor370[cd[4]].field_0):
                    if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit 0xb642937a: cd[4]
            else:
                stor369[mem[ceil32(('cd', 36).length) + 128 len -ceil32(('cd', 36).length) - 128]] = 0
                stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                if bool(stor370[cd[4]].field_0):
                    if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(('cd', 36).length) + 128] = cd[4]
                emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 160 len -('cd', 36).length + ceil32(('cd', 36).length)]
    else:
        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor370[cd[4]].field_0):
            mem[ceil32(('cd', 36).length) + 128] = Mask(248, 8, stor370[cd[4]].field_0)
            stor369[mem[ceil32(('cd', 36).length) + 128 len stor370[cd[4]].field_1 % 128]] = 0
            stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
            if bool(stor370[cd[4]].field_0):
                if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor370[cd[4]].field_0 = 0
                    idx = 0
                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor370[cd[4]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                    revert with 0, 34
                if not ('cd', 36).length:
                    stor370[cd[4]].field_0 = 0
                    idx = 0
                    while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                    s = 0
                    idx = cd[36] + 36
                    while cd[36] + ('cd', 36).length + 36 > idx:
                        stor370[cd[4]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                    while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                        stor370[cd[4]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            mem[ceil32(('cd', 36).length) + 128] = cd[4]
            emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 160 len -('cd', 36).length + ceil32(('cd', 36).length)]
        else:
            if bool(stor370[cd[4]].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor370[cd[4]].field_1 % 128:
                    mem[idx + ceil32(('cd', 36).length) + 128] = stor370[cd[4]][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                stor369[mem[ceil32(('cd', 36).length) + 128 len stor370[cd[4]].field_1 % 128]] = 0
                stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                if bool(stor370[cd[4]].field_0):
                    if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                emit 0xb642937a: cd[4]
            else:
                stor369[mem[ceil32(('cd', 36).length) + 128 len -ceil32(('cd', 36).length) - 128]] = 0
                stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                if bool(stor370[cd[4]].field_0):
                    if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if not ('cd', 36).length:
                        stor370[cd[4]].field_0 = 0
                        idx = 0
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                        s = 0
                        idx = cd[36] + 36
                        while cd[36] + ('cd', 36).length + 36 > idx:
                            stor370[cd[4]][s].field_0 = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                        while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                            stor370[cd[4]][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(('cd', 36).length) + 128] = cd[4]
                emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 160 len -('cd', 36).length + ceil32(('cd', 36).length)]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size >= 4:
        if unknown_0x8c74bf0e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x438534ad(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6352211e(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x58e792ee(?????) <= uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0x58e792ee(?????):
                            if unknown_0x5b449c4e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_5b449c4e
                            if unknown_0x5cb1b9f3(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_5cb1b9f3Address
                            if unknown_0x5ec01e4d(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return randomAddress
                            if unknown_0x60b6571c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_17607ad9Address = address(cd[4])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + ('cd', 4).length + 36 <= calldata.size
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if bool(stor365.length):
                                if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not ('cd', 4).length:
                                    stor365.length = 0
                                    idx = 0
                                    while (uint255(stor365.length) * 0.5) + 31 / 32 > idx:
                                        stor365[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor365.length = (2 * ('cd', 4).length) + 1
                                    s = 0
                                    idx = cd[4] + 36
                                    while cd[4] + ('cd', 4).length + 36 > idx:
                                        stor365[s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                    while (uint255(stor365.length) * 0.5) + 31 / 32 > idx:
                                        stor365[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not ('cd', 4).length:
                                    stor365.length = 0
                                    idx = 0
                                    while stor365.length.field_1 % 128 + 31 / 32 > idx:
                                        stor365[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor365.length = (2 * ('cd', 4).length) + 1
                                    s = 0
                                    idx = cd[4] + 36
                                    while cd[4] + ('cd', 4).length + 36 > idx:
                                        stor365[s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                    while stor365.length.field_1 % 128 + 31 / 32 > idx:
                                        stor365[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x438534ad(?????):
                            if unknown_0x46bc9d41(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_46bc9d41
                            if unknown_0x4f6ccce7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if cd[4] >= tokenByIndex.length:
                                    revert with 0, 'ERC721Enumerable: global index out of bounds'
                                return tokenByIndex[cd[4]]
                            if unknown_0x55f804b3(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] <= test266151307()
                                require cd[4] + 35 < calldata.size
                                require ('cd', 4).length <= test266151307()
                                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if bool(stor364.length):
                                    if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not ('cd', 4).length:
                                        stor364.length = 0
                                        idx = 0
                                        while (uint255(stor364.length) * 0.5) + 31 / 32 > idx:
                                            stor364[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor364.length = (2 * ('cd', 4).length) + 1
                                        s = 0
                                        idx = cd[4] + 36
                                        while cd[4] + ('cd', 4).length + 36 > idx:
                                            stor364[s].field_0 = cd[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                        while (uint255(stor364.length) * 0.5) + 31 / 32 > idx:
                                            stor364[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not ('cd', 4).length:
                                        stor364.length = 0
                                        idx = 0
                                        while stor364.length.field_1 % 128 + 31 / 32 > idx:
                                            stor364[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor364.length = (2 * ('cd', 4).length) + 1
                                        s = 0
                                        idx = cd[4] + 36
                                        while cd[4] + ('cd', 4).length + 36 > idx:
                                            stor364[s].field_0 = cd[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                        while stor364.length.field_1 % 128 + 31 / 32 > idx:
                                            stor364[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not uint8(stor363[msg.sender]):
                                revert with 0, 'Exchange not permitted'
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[4]]:
                                if not ownerOf[cd[4]]:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if balanceOf[stor153[cd[4]]] < 1:
                                    revert with 0, 17
                                if balanceOf[stor153[cd[4]]] - 1 != stor202[cd[4]]:
                                    tokenOfOwnerByIndex[stor153[cd[4]]][stor202[cd[4]]] = tokenOfOwnerByIndex[stor153[cd[4]]][stor154[stor153[cd[4]]] - 1]
                                    stor202[stor201[stor153[cd[4]]][stor154[stor153[cd[4]]] - 1]] = stor202[cd[4]]
                                stor202[cd[4]] = 0
                                tokenOfOwnerByIndex[stor153[cd[4]]][stor154[stor153[cd[4]]] - 1] = 0
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor204[cd[4]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor204[cd[4]]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[cd[4]]
                            stor204[cd[4]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            approved[cd[4]] = 0
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[cd[4]], 0, cd[4]);
                            if balanceOf[stor153[cd[4]]] < 1:
                                revert with 0, 17
                            balanceOf[stor153[cd[4]]]--
                            ownerOf[cd[4]] = 0
                            emit Transfer(ownerOf[cd[4]], 0, cd[4]);
                            stor102[cd[4]].field_0 = 0
                else:
                    if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x6352211e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            return ownerOf[cd[4]]
                        if unknown_0x65b3e4cf(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] < sub_65b3e4cf.length
                            return sub_65b3e4cf[cd[4]].field_0
                        if unknown_0x6a01b671(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] < sub_6a01b671.length
                            return sub_6a01b671[cd[4]].field_0
                        if uint32(call.func_hash) >> 224 != unknown_0x6c0360eb(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not address(cd[4]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            return balanceOf[address(cd[4])]
                        require not msg.value
                        if bool(stor364.length):
                            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor364.length):
                                if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor364.length):
                                    if 31 < uint255(stor364.length) * 0.5:
                                        mem[160] = uint256(stor364.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor364.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor364[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor364.length), data=mem[160 len ceil32(uint255(stor364.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor364.length.field_8)
                            else:
                                if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor364.length.field_1 % 128:
                                    if 31 < stor364.length.field_1 % 128:
                                        mem[160] = uint256(stor364.field_0)
                                        idx = 160
                                        s = 0
                                        while stor364.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor364[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor364.length), data=mem[160 len ceil32(uint255(stor364.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor364.length.field_8)
                            mem[ceil32(uint255(stor364.length) * 0.5) + 224 len ceil32(uint255(stor364.length) * 0.5)] = mem[160 len ceil32(uint255(stor364.length) * 0.5)]
                            if ceil32(uint255(stor364.length) * 0.5) > uint255(stor364.length) * 0.5:
                                mem[(uint255(stor364.length) * 0.5) + ceil32(uint255(stor364.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor364.length), data=mem[160 len ceil32(uint255(stor364.length) * 0.5)], mem[(2 * ceil32(uint255(stor364.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor364.length) * 0.5)]), 
                        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor364.length):
                            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor364.length):
                                if 31 < uint255(stor364.length) * 0.5:
                                    mem[160] = uint256(stor364.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor364.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor364[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor364.length % 128, data=mem[160 len ceil32(stor364.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor364.length.field_8)
                        else:
                            if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor364.length.field_1 % 128:
                                if 31 < stor364.length.field_1 % 128:
                                    mem[160] = uint256(stor364.field_0)
                                    idx = 160
                                    s = 0
                                    while stor364.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor364[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor364.length % 128, data=mem[160 len ceil32(stor364.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor364.length.field_8)
                        mem[ceil32(stor364.length.field_1 % 128) + 224 len ceil32(stor364.length.field_1 % 128)] = mem[160 len ceil32(stor364.length.field_1 % 128)]
                        if ceil32(stor364.length.field_1 % 128) > stor364.length.field_1 % 128:
                            mem[stor364.length.field_1 % 128 + ceil32(stor364.length.field_1 % 128) + 224] = 0
                        return Array(len=stor364.length % 128, data=mem[160 len ceil32(stor364.length.field_1 % 128)], mem[(2 * ceil32(stor364.length.field_1 % 128)) + 224 len 2 * ceil32(stor364.length.field_1 % 128)]), 
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        if unknown_0x78199e80(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + ('cd', 4).length + 36 <= calldata.size
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not ('cd', 4).length:
                                    stor366.length = 0
                                    idx = 0
                                    while (uint255(stor366.length) * 0.5) + 31 / 32 > idx:
                                        stor366[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor366.length = (2 * ('cd', 4).length) + 1
                                    s = 0
                                    idx = cd[4] + 36
                                    while cd[4] + ('cd', 4).length + 36 > idx:
                                        stor366[s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                    while (uint255(stor366.length) * 0.5) + 31 / 32 > idx:
                                        stor366[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not ('cd', 4).length:
                                    stor366.length = 0
                                    idx = 0
                                    while stor366.length.field_1 % 128 + 31 / 32 > idx:
                                        stor366[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor366.length = (2 * ('cd', 4).length) + 1
                                    s = 0
                                    idx = cd[4] + 36
                                    while cd[4] + ('cd', 4).length + 36 > idx:
                                        stor366[s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
                                    while stor366.length.field_1 % 128 + 31 / 32 > idx:
                                        stor366[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if unknown_0x7afa8419(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_ba58e17c = cd[4]
                                emit 0xd5035c19: cd[4]
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x8129fc1c(?????):
                                    if uint32(call.func_hash) >> 224 != unknown_0x86478122(?????):
                                    require not msg.value
                                    return mintTime
                                if uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        revert with 0, 'Initializable: contract is already initialized'
                                else:
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint16(stor0.field_0) = 257
                                    revert with 0, 'Initializable: contract is not initializing'
                                if bool(stor151.length):
                                    if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                                        revert with 0, 34
                                    bool(stor151.length) = 0
                                    uint255(stor151.length.field_1) = 26
                                    Mask(248, 0, stor151.length.field_8) = 'Midgardian Generation Zero' / 256
                                    idx = 0
                                    while (uint255(stor151.length) * 0.5) + 31 / 32 > idx:
                                        stor151[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    bool(stor151.length) = 0
                                    uint255(stor151.length.field_1) = 26
                                    Mask(248, 0, stor151.length.field_8) = 'Midgardian Generation Zero' / 256
                                    idx = 0
                                    while stor151.length.field_1 % 128 + 31 / 32 > idx:
                                        stor151[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if bool(stor152.length):
                                    if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                                        revert with 0, 34
                                    bool(stor152.length) = 0
                                    uint255(stor152.length.field_1) = 3
                                    stor152.length.field_232 % 16777216 = 5064538
                                    idx = 0
                                    while (uint255(stor152.length) * 0.5) + 31 / 32 > idx:
                                        stor152[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    bool(stor152.length) = 0
                                    uint255(stor152.length.field_1) = 3
                                    stor152.length.field_232 % 16777216 = 5064538
                                    idx = 0
                                    while stor152.length.field_1 % 128 + 31 / 32 > idx:
                                        stor152[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if not uint8(stor0.field_8):
                                    revert with 0, 'Initializable: contract is not initializing'
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                mem[256] = 14 * 10^17
                                mem[288] = 14 * 10^17
                                mem[320] = 14 * 10^17
                                mem[352] = 14 * 10^17
                                sub_6a01b671.length = 4
                                s = 0
                                idx = 256
                                while 384 > idx:
                                    uint64(sub_6a01b671[s].field_0) = mem[idx + 24 len 8]
                                    Mask(192, 0, sub_6a01b671[s].field_64) = 0
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 4
                                while sub_6a01b671.length > idx:
                                    sub_6a01b671[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                MAX_SUPPLY = 10000
                                mem[384] = 10
                                mem[416] = 12
                                mem[448] = 15
                                mem[480] = 18
                                sub_c56eb1dc.length = 4
                                s = 0
                                idx = 384
                                while 512 > idx:
                                    uint8(sub_c56eb1dc[s].field_0) = mem[idx + 31 len 1]
                                    Mask(248, 0, sub_c56eb1dc[s].field_8) = 0
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 4
                                while sub_c56eb1dc.length > idx:
                                    sub_c56eb1dc[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                mem[512] = 10^11
                                mem[544] = 2 * 10^11
                                mem[576] = 3 * 10^11
                                sub_65b3e4cf.length = 3
                                s = 0
                                idx = 512
                                while 608 > idx:
                                    sub_65b3e4cf[s].field_0 % 1099511627776 = mem[idx + 27 len 5]
                                    Mask(216, 0, sub_65b3e4cf[s].field_40) = 0
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = 3
                                while sub_65b3e4cf.length > idx:
                                    sub_65b3e4cf[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                sub_17607ad9Address = 0xf5ee578505f4d876fef288dfd9fd5e15e9ea1318
                                sub_eebc9fc7Address = 0xd1346925e2a09562df399652a2f4ac38a93404ee
                                sub_5cb1b9f3Address = 0x9c811effa8b1dc7f7590f18e9bea8f0ebec20bf4
                                sub_b8746e73Address = 0x44a45a9baeb63c6ea4860ecf9ac5732c330c4d4e
                                sub_ac7b1c0aAddress = 0x90f28160fb5d89c507e329076d99cb8297e9fb1f
                                randomAddress = 0x1e4e7e72cb9266c5d542d7173be13f616a356865
                                if not owner:
                                    revert with 0, 'ERC2981: invalid receiver'
                                address(stor101.field_0) = owner
                                uint16(stor101.field_160) = 400
                                Mask(80, 0, stor101.field_176) = 0
                                sub_46bc9d41 = 25 * 10^16
                                sub_ba58e17c = 25 * 10^16
                                mintTime = 457535 * 3600
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_8) = 0
            else:
                if unknown_0x207da400(?????) > uint32(call.func_hash) >> 224:
                    if approve(address arg1, uint256 arg2) <= uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                            if unknown_0x14862808(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                return bool(uint8(stor363[cd[4]]))
                            if unknown_0x17607ad9(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_17607ad9Address
                            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return tokenByIndex.length
                            if uint32(call.func_hash) >> 224 != unknown_0x1e7269c5(?????):
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return minted[cd[4]]
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not ownerOf[cd[36]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if address(cd[4]) == ownerOf[cd[36]]:
                            revert with 0, 'ERC721: approval to current owner'
                        if ownerOf[cd[36]] != msg.sender:
                            if not stor156[stor153[cd[36]]][address(msg.sender)]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                        approved[cd[36]] = address(cd[4])
                        if not ownerOf[cd[36]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[36]], address(cd[4]), cd[36]);
                    if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == Mask(32, 224, cd[4])
                        if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                    if setMintPrice(uint256 arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[36] >= sub_6a01b671.length:
                            revert with 0, 50
                        sub_6a01b671[cd[36]].field_0 = cd[4]
                    if uint32(call.func_hash) >> 224 != name():
                        if uint32(call.func_hash) >> 224 != getApproved(uint256 arg1):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        return approved[cd[4]]
                    require not msg.value
                    if bool(stor151.length):
                        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor151.length):
                            if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor151.length):
                                if 31 < uint255(stor151.length) * 0.5:
                                    mem[160] = uint256(stor151.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor151.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor151[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[160 len ceil32(uint255(stor151.length) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor151.length.field_8)
                        else:
                            if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor151.length.field_1 % 128:
                                if 31 < stor151.length.field_1 % 128:
                                    mem[160] = uint256(stor151.field_0)
                                    idx = 160
                                    s = 0
                                    while stor151.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor151[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[160 len ceil32(uint255(stor151.length) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor151.length.field_8)
                        mem[ceil32(uint255(stor151.length) * 0.5) + 224 len ceil32(uint255(stor151.length) * 0.5)] = mem[160 len ceil32(uint255(stor151.length) * 0.5)]
                        if ceil32(uint255(stor151.length) * 0.5) > uint255(stor151.length) * 0.5:
                            mem[(uint255(stor151.length) * 0.5) + ceil32(uint255(stor151.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor151.length), data=mem[160 len ceil32(uint255(stor151.length) * 0.5)], mem[(2 * ceil32(uint255(stor151.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor151.length) * 0.5)]), 
                    if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor151.length):
                        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor151.length):
                            if 31 < uint255(stor151.length) * 0.5:
                                mem[160] = uint256(stor151.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor151.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor151[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor151.length % 128, data=mem[160 len ceil32(stor151.length.field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor151.length.field_8)
                    else:
                        if bool(stor151.length) == stor151.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if stor151.length.field_1 % 128:
                            if 31 < stor151.length.field_1 % 128:
                                mem[160] = uint256(stor151.field_0)
                                idx = 160
                                s = 0
                                while stor151.length.field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = stor151[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor151.length % 128, data=mem[160 len ceil32(stor151.length.field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor151.length.field_8)
                    mem[ceil32(stor151.length.field_1 % 128) + 224 len ceil32(stor151.length.field_1 % 128)] = mem[160 len ceil32(stor151.length.field_1 % 128)]
                    if ceil32(stor151.length.field_1 % 128) > stor151.length.field_1 % 128:
                        mem[stor151.length.field_1 % 128 + ceil32(stor151.length.field_1 % 128) + 224] = 0
                    return Array(len=stor151.length % 128, data=mem[160 len ceil32(stor151.length.field_1 % 128)], mem[(2 * ceil32(stor151.length.field_1 % 128)) + 224 len 2 * ceil32(stor151.length.field_1 % 128)]), 
                if unknown_0x2f745c59(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x207da400(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[cd[4]]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[cd[4]] = tokenByIndex.length
                        tokenByIndex.length++
                        storA7CE[stor203.length] = cd[4]
                        if msg.sender:
                            if msg.sender:
                                if not msg.sender:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = cd[4]
                                stor202[cd[4]] = balanceOf[address(msg.sender)]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor204[cd[4]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor204[cd[4]]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[cd[4]]
                            stor204[cd[4]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[cd[4]] = msg.sender
                        emit Transfer(0, msg.sender, cd[4]);
                    else:
                        if unknown_0x238dafe0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(uint8(enabled))
                        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x2a55205a(?????):
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if address(stor102[cd[4]].field_0):
                                if cd[36] and Mask(96, 0, stor102[cd[4]].field_160) > -1 / cd[36]:
                                    revert with 0, 17
                                return address(stor102[cd[4]].field_0), cd[36] * Mask(96, 0, stor102[cd[4]].field_160) / 10000
                            if cd[36] and Mask(96, 0, stor101.field_160) > -1 / cd[36]:
                                revert with 0, 17
                            return address(stor101.field_0), cd[36] * Mask(96, 0, stor101.field_160) / 10000
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: operator query for nonexistent token'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != msg.sender:
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: approved query for nonexistent token'
                            if approved[cd[68]] != msg.sender:
                                if not stor156[stor153[cd[68]]][address(msg.sender)]:
                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != address(cd[4]):
                            revert with 0, 'ERC721: transfer from incorrect owner'
                        if not address(cd[36]):
                            revert with 0, 'ERC721: transfer to the zero address'
                        if not address(cd[4]):
                            stor204[cd[68]] = tokenByIndex.length
                            tokenByIndex.length++
                            storA7CE[stor203.length] = cd[68]
                        else:
                            if address(cd[4]) != address(cd[36]):
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if balanceOf[address(cd[4])] < 1:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] - 1 != stor202[cd[68]]:
                                    tokenOfOwnerByIndex[address(cd[4])][stor202[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1]
                                    stor202[stor201[address(cd[4])][stor154[address(cd[4])] - 1]] = stor202[cd[68]]
                                stor202[cd[68]] = 0
                                tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1] = 0
                        if address(cd[36]):
                            if address(cd[36]) != address(cd[4]):
                                if not address(cd[36]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[36])][stor154[address(cd[36])]] = cd[68]
                                stor202[cd[68]] = balanceOf[address(cd[36])]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor204[cd[68]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor204[cd[68]]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[cd[68]]
                            stor204[cd[68]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[cd[68]] = 0
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[68]], 0, cd[68]);
                        if balanceOf[address(cd[4])] < 1:
                            revert with 0, 17
                        balanceOf[address(cd[4])]--
                        if balanceOf[address(cd[36])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[36])]++
                        ownerOf[cd[68]] = address(cd[36])
                        emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                else:
                    if unknown_0x2f745c59(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not address(cd[4]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        if cd[36] >= balanceOf[address(cd[4])]:
                            revert with 0, 'ERC721Enumerable: owner index out of bounds'
                        return tokenOfOwnerByIndex[address(cd[4])][cd[36]]
                    if unknown_0x32cb6b0c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return MAX_SUPPLY
                    if unknown_0x362b5d3a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[36] >= sub_c56eb1dc.length:
                            revert with 0, 50
                        sub_c56eb1dc[cd[36]].field_0 = cd[4]
                    else:
                        if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            call owner with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                        else:
                            if unknown_0x42842e0e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require cd[4] == address(cd[4])
                                require cd[36] == address(cd[36])
                                mem[128] = 0
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: operator query for nonexistent token'
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                if ownerOf[cd[68]] != msg.sender:
                                    if not ownerOf[cd[68]]:
                                        revert with 0, 'ERC721: approved query for nonexistent token'
                                    if approved[cd[68]] != msg.sender:
                                        if not stor156[stor153[cd[68]]][address(msg.sender)]:
                                            revert with 0, 'ERC721: transfer caller is not owner nor approved'
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                if ownerOf[cd[68]] != address(cd[4]):
                                    revert with 0, 'ERC721: transfer from incorrect owner'
                                if not address(cd[36]):
                                    revert with 0, 'ERC721: transfer to the zero address'
                                if not address(cd[4]):
                                    stor204[cd[68]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = cd[68]
                                else:
                                    if address(cd[4]) != address(cd[36]):
                                        if not address(cd[4]):
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        if balanceOf[address(cd[4])] < 1:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] - 1 != stor202[cd[68]]:
                                            tokenOfOwnerByIndex[address(cd[4])][stor202[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1]
                                            stor202[stor201[address(cd[4])][stor154[address(cd[4])] - 1]] = stor202[cd[68]]
                                        stor202[cd[68]] = 0
                                        tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1] = 0
                                if address(cd[36]):
                                    if address(cd[36]) != address(cd[4]):
                                        if not address(cd[36]):
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        tokenOfOwnerByIndex[address(cd[36])][stor154[address(cd[36])]] = cd[68]
                                        stor202[cd[68]] = balanceOf[address(cd[36])]
                                else:
                                    if tokenByIndex.length < 1:
                                        revert with 0, 17
                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                        revert with 0, 50
                                    if stor204[cd[68]] >= tokenByIndex.length:
                                        revert with 0, 50
                                    tokenByIndex[stor204[cd[68]]] = tokenByIndex[tokenByIndex.length]
                                    stor204[stor203[stor203.length]] = stor204[cd[68]]
                                    stor204[cd[68]] = 0
                                    if not tokenByIndex.length:
                                        revert with 0, 49
                                    tokenByIndex[tokenByIndex.length] = 0
                                    tokenByIndex.length--
                                approved[cd[68]] = 0
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[cd[68]], 0, cd[68]);
                                if balanceOf[address(cd[4])] < 1:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]--
                                if balanceOf[address(cd[36])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[36])]++
                                ownerOf[cd[68]] = address(cd[36])
                                emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                                if ext_code.size(address(cd[36])):
                                    mem[164] = msg.sender
                                    mem[196] = address(cd[4])
                                    mem[228] = cd[68]
                                    mem[260] = 128
                                    mem[292] = 0
                                    mem[324 len 0] = None
                                    call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(cd[4]), cd[68], 128, 0
                                    mem[160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if not return_data.size:
                                            if not mem[96]:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if unknown_0xc56eb1dc(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe59b625f(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xd1ca7d83(?????) <= uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0xd1ca7d83(?????):
                            if unknown_0xd2a1b8fd(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                sub_eebc9fc7Address = address(cd[4])
                            if unknown_0xd3dd5fe0(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                uint256(stor362) = not uint8(enabled) or Mask(248, 8, uint256(stor362))
                            if uint32(call.func_hash) >> 224 != unknown_0xd57c046d(?????):
                                if unknown_0xdda52d53(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    mintTime = cd[4]
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if bool(stor371[cd[4]].field_0):
                                if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if bool(stor371[cd[4]].field_0):
                                    if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor371[cd[4]].field_0):
                                        if 31 < uint255(stor371[cd[4]].field_0) * 0.5:
                                            mem[160] = stor371[cd[4]].field_0
                                            idx = 160
                                            s = 0
                                            while (uint255(stor371[cd[4]].field_0) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor371[cd[4]][s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                                else:
                                    if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor371[cd[4]].field_1 % 128:
                                        if 31 < stor371[cd[4]].field_1 % 128:
                                            mem[160] = stor371[cd[4]].field_0
                                            idx = 160
                                            s = 0
                                            while stor371[cd[4]].field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = stor371[cd[4]][s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                                mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)]
                                if ceil32(uint255(stor371[cd[4]].field_0) * 0.5) > uint255(stor371[cd[4]].field_0) * 0.5:
                                    mem[(uint255(stor371[cd[4]].field_0) * 0.5) + ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor371[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor371[cd[4]].field_0) * 0.5)]), 
                            if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor371[cd[4]].field_0):
                                if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor371[cd[4]].field_0):
                                    if 31 < uint255(stor371[cd[4]].field_0) * 0.5:
                                        mem[160] = stor371[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while (uint255(stor371[cd[4]].field_0) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor371[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                            else:
                                if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor371[cd[4]].field_1 % 128:
                                    if 31 < stor371[cd[4]].field_1 % 128:
                                        mem[160] = stor371[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while stor371[cd[4]].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor371[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                            mem[ceil32(stor371[cd[4]].field_1 % 128) + 224 len ceil32(stor371[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor371[cd[4]].field_1 % 128)]
                            if ceil32(stor371[cd[4]].field_1 % 128) > stor371[cd[4]].field_1 % 128:
                                mem[stor371[cd[4]].field_1 % 128 + ceil32(stor371[cd[4]].field_1 % 128) + 224] = 0
                            return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor371[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor371[cd[4]].field_1 % 128)]), 
                        require calldata.size - 4 >= 64
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        require ('cd', 36).length <= test266151307()
                        require cd[36] + ('cd', 36).length + 36 <= calldata.size
                        mem[0] = cd[4]
                        mem[32] = 153
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[4]] != msg.sender:
                            revert with 0, 'Owner must change name of token'
                        if sub_ba58e17c > msg.value:
                            revert with 1497754198
                        mem[64] = ceil32(('cd', 36).length) + 160
                        mem[128] = ('cd', 36).length
                        mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[('cd', 36).length + 160] = 0
                        if ('cd', 36).length > 255:
                            revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                        idx = 0
                        while idx < ('cd', 36).length:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if Mask(8, 248, mem[idx + 160]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                    revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                            else:
                                if Mask(8, 248, mem[idx + 160]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(8, 248, mem[idx + 160]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                                        if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                            revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                    else:
                                        if Mask(8, 248, mem[idx + 160]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                                            if Mask(8, 248, mem[idx + 160]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                                if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                                    revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                            else:
                                                if Mask(8, 248, mem[idx + 160]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                                    if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                                        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                            idx = idx + 1
                            continue 
                        if bool(stor371[cd[4]].field_0):
                            if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not ('cd', 36).length:
                                stor371[cd[4]].field_0 = 0
                                idx = 0
                                while (uint255(stor371[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                    stor371[cd[4]][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor371[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                s = 0
                                idx = cd[36] + 36
                                while cd[36] + ('cd', 36).length + 36 > idx:
                                    stor371[cd[4]][s].field_0 = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                while (uint255(stor371[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                    stor371[cd[4]][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not ('cd', 36).length:
                                stor371[cd[4]].field_0 = 0
                                idx = 0
                                while stor371[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                    stor371[cd[4]][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                stor371[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                s = 0
                                idx = cd[36] + 36
                                while cd[36] + ('cd', 36).length + 36 > idx:
                                    stor371[cd[4]][s].field_0 = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                while stor371[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                    stor371[cd[4]][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        mem[ceil32(('cd', 36).length) + 160] = cd[4]
                        emit 0x9e90a9b1: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 192 len -('cd', 36).length + ceil32(('cd', 36).length)]
                    if unknown_0xc56eb1dc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] < sub_c56eb1dc.length
                        return sub_c56eb1dc[cd[4]].field_0
                    if uint32(call.func_hash) >> 224 != unknown_0xc87b56dd(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xc8f9c331(?????):
                            if unknown_0xca9c0bad(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                randomAddress = address(cd[4])
                        else:
                            require calldata.size - 4 >= 64
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            require ('cd', 36).length <= test266151307()
                            require cd[36] + ('cd', 36).length + 36 <= calldata.size
                            mem[0] = cd[4]
                            mem[32] = 153
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[4]] != msg.sender:
                                revert with 0, 'Owner must change name of token'
                            if sub_46bc9d41 > msg.value:
                                revert with 1497754198
                            mem[64] = ceil32(('cd', 36).length) + 160
                            mem[128] = ('cd', 36).length
                            mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                            mem[('cd', 36).length + 160] = 0
                            if ('cd', 36).length > 25:
                                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                            idx = 0
                            while idx < ('cd', 36).length:
                                if idx >= ('cd', 36).length:
                                    revert with 0, 50
                                if Mask(8, 248, mem[idx + 160]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                else:
                                    if Mask(8, 248, mem[idx + 160]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                                        if Mask(8, 248, mem[idx + 160]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                                            if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                        else:
                                            if Mask(8, 248, mem[idx + 160]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                                                if Mask(8, 248, mem[idx + 160]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                                                    if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                                        revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                                else:
                                                    if Mask(8, 248, mem[idx + 160]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                                        if Mask(8, 248, mem[idx + 160]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                                            revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                                idx = idx + 1
                                continue 
                            if stor369[call.data[cd[36] + 36 len ('cd', 36).length]]:
                                revert with (Mask(32, -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256, 0) >> -(8 * ceil32(('cd', 36).length) + -('cd', 36).length + 4) + 256)
                            if bool(stor370[cd[4]].field_0):
                                if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor370[cd[4]].field_0):
                                    mem[ceil32(('cd', 36).length) + 160] = Mask(248, 8, stor370[cd[4]].field_0)
                                    stor369[mem[ceil32(('cd', 36).length) + 160 len uint255(stor370[cd[4]].field_0) * 0.5]] = 0
                                    stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                    if bool(stor370[cd[4]].field_0):
                                        if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        if not ('cd', 36).length:
                                            stor370[cd[4]].field_0 = 0
                                            idx = 0
                                            while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                            s = 0
                                            idx = cd[36] + 36
                                            while cd[36] + ('cd', 36).length + 36 > idx:
                                                stor370[cd[4]][s].field_0 = cd[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                            while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not ('cd', 36).length:
                                            stor370[cd[4]].field_0 = 0
                                            idx = 0
                                            while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                            s = 0
                                            idx = cd[36] + 36
                                            while cd[36] + ('cd', 36).length + 36 > idx:
                                                stor370[cd[4]][s].field_0 = cd[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                            while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    mem[ceil32(('cd', 36).length) + 160] = cd[4]
                                    emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 192 len -('cd', 36).length + ceil32(('cd', 36).length)]
                                else:
                                    if bool(stor370[cd[4]].field_0) == 1:
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor370[cd[4]].field_0) * 0.5:
                                            mem[idx + ceil32(('cd', 36).length) + 160] = stor370[cd[4]][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        stor369[mem[ceil32(('cd', 36).length) + 160 len uint255(stor370[cd[4]].field_0) * 0.5]] = 0
                                        stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                        if bool(stor370[cd[4]].field_0):
                                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        emit 0xb642937a: cd[4]
                                    else:
                                        stor369[mem[ceil32(('cd', 36).length) + 160 len -ceil32(('cd', 36).length) - 160]] = 0
                                        stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                        if bool(stor370[cd[4]].field_0):
                                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        mem[ceil32(('cd', 36).length) + 160] = cd[4]
                                        emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 192 len -('cd', 36).length + ceil32(('cd', 36).length)]
                            else:
                                if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor370[cd[4]].field_0):
                                    mem[ceil32(('cd', 36).length) + 160] = Mask(248, 8, stor370[cd[4]].field_0)
                                    stor369[mem[ceil32(('cd', 36).length) + 160 len stor370[cd[4]].field_1 % 128]] = 0
                                    stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                    if bool(stor370[cd[4]].field_0):
                                        if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        if not ('cd', 36).length:
                                            stor370[cd[4]].field_0 = 0
                                            idx = 0
                                            while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                            s = 0
                                            idx = cd[36] + 36
                                            while cd[36] + ('cd', 36).length + 36 > idx:
                                                stor370[cd[4]][s].field_0 = cd[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                            while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not ('cd', 36).length:
                                            stor370[cd[4]].field_0 = 0
                                            idx = 0
                                            while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                            s = 0
                                            idx = cd[36] + 36
                                            while cd[36] + ('cd', 36).length + 36 > idx:
                                                stor370[cd[4]][s].field_0 = cd[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                            while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                stor370[cd[4]][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    mem[ceil32(('cd', 36).length) + 160] = cd[4]
                                    emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 192 len -('cd', 36).length + ceil32(('cd', 36).length)]
                                else:
                                    if bool(stor370[cd[4]].field_0) == 1:
                                        idx = 0
                                        s = 0
                                        while idx < stor370[cd[4]].field_1 % 128:
                                            mem[idx + ceil32(('cd', 36).length) + 160] = stor370[cd[4]][s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        stor369[mem[ceil32(('cd', 36).length) + 160 len stor370[cd[4]].field_1 % 128]] = 0
                                        stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                        if bool(stor370[cd[4]].field_0):
                                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        emit 0xb642937a: cd[4]
                                    else:
                                        stor369[mem[ceil32(('cd', 36).length) + 160 len -ceil32(('cd', 36).length) - 160]] = 0
                                        stor369[call.data[cd[36] + 36 len ('cd', 36).length]] = 1
                                        if bool(stor370[cd[4]].field_0):
                                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                                revert with 0, 34
                                            if not ('cd', 36).length:
                                                stor370[cd[4]].field_0 = 0
                                                idx = 0
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                stor370[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
                                                s = 0
                                                idx = cd[36] + 36
                                                while cd[36] + ('cd', 36).length + 36 > idx:
                                                    stor370[cd[4]][s].field_0 = cd[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                                while stor370[cd[4]].field_1 % 128 + 31 / 32 > idx:
                                                    stor370[cd[4]][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        mem[ceil32(('cd', 36).length) + 160] = cd[4]
                                        emit 0xb642937a: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 192 len -('cd', 36).length + ceil32(('cd', 36).length)]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not cd[4]:
                        mem[64] = 192
                        mem[128] = 1
                        mem[160] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        if bool(stor364.length):
                            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor364.length):
                                mem[224] = Mask(248, 8, stor364.length)
                                mem[(uint255(stor364.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                mem[(uint255(stor364.length) * 0.5) + 225] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[(uint255(stor364.length) * 0.5) + 225] = Mask(248, 8, stor366.length)
                                    else:
                                        if bool(stor366.length) != 1:
                                            mem[64] = 0
                                            _13868 = mem[192]
                                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                            if ceil32(_13868) > _13868:
                                                mem[_13868 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_13868) + -mem[64] + 64
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + (uint255(stor364.length) * 0.5) + 225] = stor366[s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 225] = 32
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 257] = mem[192]
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(mem[192]) > mem[192]:
                                        mem[mem[192] + (uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289] = 0
                                    return Array(len=mem[192], data=mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])]), 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[(uint255(stor364.length) * 0.5) + 225] = Mask(248, 8, stor366.length)
                                else:
                                    if bool(stor366.length) != 1:
                                        mem[64] = 0
                                        _14033 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_14033) > _14033:
                                            mem[_14033 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_14033) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + (uint255(stor364.length) * 0.5) + 225] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 225] = 32
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 257] = mem[192]
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(mem[192]) > mem[192]:
                                    mem[mem[192] + (uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289] = 0
                                return Array(len=mem[192], data=mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])]), 
                            if bool(stor364.length) == 1:
                                idx = 0
                                s = 0
                                while idx < uint255(stor364.length) * 0.5:
                                    mem[idx + 224] = stor364[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(uint255(stor364.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                mem[(uint255(stor364.length) * 0.5) + 225] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[(uint255(stor364.length) * 0.5) + 225] = Mask(248, 8, stor366.length)
                                    else:
                                        if bool(stor366.length) != 1:
                                            mem[64] = 0
                                            _20507 = mem[192]
                                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                            if ceil32(_20507) > _20507:
                                                mem[_20507 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_20507) + -mem[64] + 64
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + (uint255(stor364.length) * 0.5) + 225] = stor366[s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 225] = 32
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 257] = mem[192]
                                    mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(mem[192]) > mem[192]:
                                        mem[mem[192] + (uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289] = 0
                                    return Array(len=mem[192], data=mem[(uint255(stor364.length) * 0.5) + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])]), 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[(uint255(stor364.length) * 0.5) + 225] = Mask(248, 8, stor366.length)
                                else:
                                    if bool(stor366.length) != 1:
                                        mem[64] = 0
                                        _20583 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_20583) > _20583:
                                            mem[_20583 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_20583) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + (uint255(stor364.length) * 0.5) + 225] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 225] = 32
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 257] = mem[192]
                                mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(mem[192]) > mem[192]:
                                    mem[mem[192] + (uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289] = 0
                                return Array(len=mem[192], data=mem[(uint255(stor364.length) * 0.5) + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])]), 
                            mem[1] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[1] = Mask(248, 8, stor366.length)
                                    mem[64] = (uint255(stor366.length) * 0.5) + 1
                                    mem[(uint255(stor366.length) * 0.5) + 1] = 32
                                    _13732 = mem[192]
                                    mem[(uint255(stor366.length) * 0.5) + 33] = mem[192]
                                    mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_13732)] = mem[224 len ceil32(_13732)]
                                    if ceil32(_13732) > _13732:
                                        mem[_13732 + (uint255(stor366.length) * 0.5) + 65] = 0
                                    return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_13732) + 32]
                                if bool(stor366.length) != 1:
                                    mem[64] = 0
                                    _13878 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_13878) > _13878:
                                        mem[_13878 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_13878) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + 1] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _19744 = mem[64]
                                mem[64] = (uint255(stor366.length) * 0.5) + 1
                                mem[(uint255(stor366.length) * 0.5) + 1] = 32
                                _20090 = mem[_19744]
                                mem[(uint255(stor366.length) * 0.5) + 33] = mem[_19744]
                                mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_20090)] = mem[_19744 + 32 len ceil32(_20090)]
                                if ceil32(_20090) > _20090:
                                    mem[_20090 + (uint255(stor366.length) * 0.5) + 65] = 0
                                return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_20090) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[1] = Mask(248, 8, stor366.length)
                                mem[64] = stor366.length.field_1 % 128 + 1
                                mem[stor366.length.field_1 % 128 + 1] = 32
                                _13879 = mem[192]
                                mem[stor366.length.field_1 % 128 + 33] = mem[192]
                                mem[stor366.length.field_1 % 128 + 65 len ceil32(_13879)] = mem[224 len ceil32(_13879)]
                                if ceil32(_13879) > _13879:
                                    mem[_13879 + stor366.length.field_1 % 128 + 65] = 0
                                return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_13879) + 32]
                            if bool(stor366.length) != 1:
                                mem[64] = 0
                                _14039 = mem[192]
                                mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(_14039) > _14039:
                                    mem[_14039 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_14039) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + 1] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _19745 = mem[64]
                            mem[64] = stor366.length.field_1 % 128 + 1
                            mem[stor366.length.field_1 % 128 + 1] = 32
                            _20091 = mem[_19745]
                            mem[stor366.length.field_1 % 128 + 33] = mem[_19745]
                            mem[stor366.length.field_1 % 128 + 65 len ceil32(_20091)] = mem[_19745 + 32 len ceil32(_20091)]
                            if ceil32(_20091) > _20091:
                                mem[_20091 + stor366.length.field_1 % 128 + 65] = 0
                            return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_20091) + 32]
                        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor364.length):
                            mem[224] = Mask(248, 8, stor364.length)
                            mem[stor364.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            mem[stor364.length.field_1 % 128 + 225] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[stor364.length.field_1 % 128 + 225] = Mask(248, 8, stor366.length)
                                else:
                                    if bool(stor366.length) != 1:
                                        mem[64] = 0
                                        _13886 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_13886) > _13886:
                                            mem[_13886 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_13886) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + stor364.length.field_1 % 128 + 225] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 225] = 32
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 257] = mem[192]
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(mem[192]) > mem[192]:
                                    mem[mem[192] + stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289] = 0
                                return Array(len=mem[192], data=mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])]), 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[stor364.length.field_1 % 128 + 225] = Mask(248, 8, stor366.length)
                            else:
                                if bool(stor366.length) != 1:
                                    mem[64] = 0
                                    _14043 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_14043) > _14043:
                                        mem[_14043 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_14043) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + stor364.length.field_1 % 128 + 225] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 225] = 32
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 257] = mem[192]
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                            if ceil32(mem[192]) > mem[192]:
                                mem[mem[192] + stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289] = 0
                            return Array(len=mem[192], data=mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])])
                        if bool(stor364.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor364.length.field_1 % 128:
                                mem[idx + 224] = stor364[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[stor364.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            mem[stor364.length.field_1 % 128 + 225] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[stor364.length.field_1 % 128 + 225] = Mask(248, 8, stor366.length)
                                else:
                                    if bool(stor366.length) != 1:
                                        mem[64] = 0
                                        _20531 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_20531) > _20531:
                                            mem[_20531 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_20531) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + stor364.length.field_1 % 128 + 225] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 225] = 32
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 257] = mem[192]
                                mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(mem[192]) > mem[192]:
                                    mem[mem[192] + stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289] = 0
                                return Array(len=mem[192], data=mem[stor364.length.field_1 % 128 + (uint255(stor366.length) * 0.5) + 289 len ceil32(mem[192])]), 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[stor364.length.field_1 % 128 + 225] = Mask(248, 8, stor366.length)
                            else:
                                if bool(stor366.length) != 1:
                                    mem[64] = 0
                                    _20587 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_20587) > _20587:
                                        mem[_20587 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_20587) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + stor364.length.field_1 % 128 + 225] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 225] = 32
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 257] = mem[192]
                            mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                            if ceil32(mem[192]) > mem[192]:
                                mem[mem[192] + stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289] = 0
                            return Array(len=mem[192], data=mem[stor364.length.field_1 % 128 + stor366.length.field_1 % 128 + 289 len ceil32(mem[192])])
                        mem[1] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[1] = Mask(248, 8, stor366.length)
                                mem[64] = (uint255(stor366.length) * 0.5) + 1
                                mem[(uint255(stor366.length) * 0.5) + 1] = 32
                                _13746 = mem[192]
                                mem[(uint255(stor366.length) * 0.5) + 33] = mem[192]
                                mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_13746)] = mem[224 len ceil32(_13746)]
                                if ceil32(_13746) > _13746:
                                    mem[_13746 + (uint255(stor366.length) * 0.5) + 65] = 0
                                return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_13746) + 32]
                            if bool(stor366.length) != 1:
                                mem[64] = 0
                                _13896 = mem[192]
                                mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(_13896) > _13896:
                                    mem[_13896 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13896) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + 1] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _19752 = mem[64]
                            mem[64] = (uint255(stor366.length) * 0.5) + 1
                            mem[(uint255(stor366.length) * 0.5) + 1] = 32
                            _20098 = mem[_19752]
                            mem[(uint255(stor366.length) * 0.5) + 33] = mem[_19752]
                            mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_20098)] = mem[_19752 + 32 len ceil32(_20098)]
                            if ceil32(_20098) > _20098:
                                mem[_20098 + (uint255(stor366.length) * 0.5) + 65] = 0
                            return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_20098) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[1] = Mask(248, 8, stor366.length)
                            mem[64] = stor366.length.field_1 % 128 + 1
                            mem[stor366.length.field_1 % 128 + 1] = 32
                            _13897 = mem[192]
                            mem[stor366.length.field_1 % 128 + 33] = mem[192]
                            mem[stor366.length.field_1 % 128 + 65 len ceil32(_13897)] = mem[224 len ceil32(_13897)]
                            if ceil32(_13897) > _13897:
                                mem[_13897 + stor366.length.field_1 % 128 + 65] = 0
                            return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_13897) + 32]
                        if bool(stor366.length) != 1:
                            mem[64] = 0
                            _14049 = mem[192]
                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                            if ceil32(_14049) > _14049:
                                mem[_14049 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_14049) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + 1] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _19753 = mem[64]
                        mem[64] = stor366.length.field_1 % 128 + 1
                        mem[stor366.length.field_1 % 128 + 1] = 32
                        _20099 = mem[_19753]
                        mem[stor366.length.field_1 % 128 + 33] = mem[_19753]
                        mem[stor366.length.field_1 % 128 + 65 len ceil32(_20099)] = mem[_19753 + 32 len ceil32(_20099)]
                        if ceil32(_20099) > _20099:
                            mem[_20099 + stor366.length.field_1 % 128 + 65] = 0
                        return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_20099) + 32]
                    s = 0
                    idx = cd[4]
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[128] = s
                    mem[64] = ceil32(s) + 160
                    if not s:
                        t = s
                        idx = cd[4]
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[128]:
                                revert with 0, 50
                            mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        _19636 = mem[64]
                        if bool(stor364.length):
                            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor364.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                                _20206 = mem[128]
                                mem[mem[64] + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(_20206) <= _20206:
                                    if bool(stor366.length):
                                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor366.length):
                                            mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = Mask(248, 8, stor366.length)
                                            _24310 = mem[64]
                                            mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32
                                            mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32] = 32
                                            _24510 = mem[_24310]
                                            mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64] = mem[_24310]
                                            mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24510)] = mem[_24310 + 32 len ceil32(_24510)]
                                            if ceil32(_24510) > _24510:
                                                mem[_24510 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96] = 0
                                            return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24510) + 32], 
                                        if bool(stor366.length) != 1:
                                            _24391 = mem[64]
                                            mem[64] = 0
                                            mem[0] = 32
                                            _24567 = mem[_24391]
                                            mem[32] = mem[_24391]
                                            mem[64 len ceil32(_24567)] = mem[_24391 + 32 len ceil32(_24567)]
                                            if ceil32(_24567) > _24567:
                                                mem[_24567 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_24567) + -mem[64] + 64
                                        mem[0] = 366
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = stor366[s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        _26882 = mem[64]
                                        mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _27362 = mem[_26882]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64] = mem[_26882]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27362)] = mem[_26882 + 32 len ceil32(_27362)]
                                        if ceil32(_27362) > _27362:
                                            mem[_27362 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27362) + 32], 
                                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = Mask(248, 8, stor366.length)
                                        _24392 = mem[64]
                                        mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32] = 32
                                        _24568 = mem[_24392]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64] = mem[_24392]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96 len ceil32(_24568)] = mem[_24392 + 32 len ceil32(_24568)]
                                        if ceil32(_24568) > _24568:
                                            mem[_24568 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96] = 0
                                        return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64 len ceil32(_24568) + 32]
                                    if bool(stor366.length) != 1:
                                        _24448 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24791 = mem[_24448]
                                        mem[32] = mem[_24448]
                                        mem[64 len ceil32(_24791)] = mem[_24448 + 32 len ceil32(_24791)]
                                        if ceil32(_24791) > _24791:
                                            mem[_24791 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24791) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26883 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32] = 32
                                    _27363 = mem[_26883]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64] = mem[_26883]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96 len ceil32(_27363)] = mem[_26883 + 32 len ceil32(_27363)]
                                    if ceil32(_27363) > _27363:
                                        mem[_27363 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64 len ceil32(_27363) + 32]
                                mem[_20206 + _19636 + (uint255(stor364.length) * 0.5) + 32] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = Mask(248, 8, stor366.length)
                                        _24311 = mem[64]
                                        mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _24513 = mem[_24311]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64] = mem[_24311]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24513)] = mem[_24311 + 32 len ceil32(_24513)]
                                        if ceil32(_24513) > _24513:
                                            mem[_24513 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24513) + 32], 
                                    if bool(stor366.length) != 1:
                                        _24394 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24571 = mem[_24394]
                                        mem[32] = mem[_24394]
                                        mem[64 len ceil32(_24571)] = mem[_24394 + 32 len ceil32(_24571)]
                                        if ceil32(_24571) > _24571:
                                            mem[_24571 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24571) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26884 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27364 = mem[_26884]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64] = mem[_26884]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27364)] = mem[_26884 + 32 len ceil32(_27364)]
                                    if ceil32(_27364) > _27364:
                                        mem[_27364 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27364) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = Mask(248, 8, stor366.length)
                                    _24395 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32] = 32
                                    _24572 = mem[_24395]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64] = mem[_24395]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96 len ceil32(_24572)] = mem[_24395 + 32 len ceil32(_24572)]
                                    if ceil32(_24572) > _24572:
                                        mem[_24572 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64 len ceil32(_24572) + 32]
                                if bool(stor366.length) != 1:
                                    _24451 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24793 = mem[_24451]
                                    mem[32] = mem[_24451]
                                    mem[64 len ceil32(_24793)] = mem[_24451 + 32 len ceil32(_24793)]
                                    if ceil32(_24793) > _24793:
                                        mem[_24793 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24793) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _20206 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26885 = mem[64]
                                mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 32] = 32
                                _27365 = mem[_26885]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64] = mem[_26885]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96 len ceil32(_27365)] = mem[_26885 + 32 len ceil32(_27365)]
                                if ceil32(_27365) > _27365:
                                    mem[_27365 + _19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _20206 + stor366.length.field_1 % 128 + 64 len ceil32(_27365) + 32]
                            if bool(stor364.length) != 1:
                                _20276 = mem[128]
                                mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(_20276) <= _20276:
                                    if bool(stor366.length):
                                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor366.length):
                                            mem[_20276] = Mask(248, 8, stor366.length)
                                            _24312 = mem[64]
                                            mem[64] = _20276 + (uint255(stor366.length) * 0.5)
                                            mem[_20276 + (uint255(stor366.length) * 0.5)] = 32
                                            _24518 = mem[_24312]
                                            mem[_20276 + (uint255(stor366.length) * 0.5) + 32] = mem[_24312]
                                            mem[_20276 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24518)] = mem[_24312 + 32 len ceil32(_24518)]
                                            if ceil32(_24518) > _24518:
                                                mem[_24518 + _20276 + (uint255(stor366.length) * 0.5) + 64] = 0
                                            return 32, mem[_20276 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24518) + 32]
                                        if bool(stor366.length) != 1:
                                            _24397 = mem[64]
                                            mem[64] = 0
                                            mem[0] = 32
                                            _24577 = mem[_24397]
                                            mem[32] = mem[_24397]
                                            mem[64 len ceil32(_24577)] = mem[_24397 + 32 len ceil32(_24577)]
                                            if ceil32(_24577) > _24577:
                                                mem[_24577 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_24577) + -mem[64] + 64
                                        mem[0] = 366
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + _20276] = stor[s + sha3(mem[0])]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        _26886 = mem[64]
                                        mem[64] = _20276 + (uint255(stor366.length) * 0.5)
                                        mem[_20276 + (uint255(stor366.length) * 0.5)] = 32
                                        _27366 = mem[_26886]
                                        mem[_20276 + (uint255(stor366.length) * 0.5) + 32] = mem[_26886]
                                        mem[_20276 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27366)] = mem[_26886 + 32 len ceil32(_27366)]
                                        if ceil32(_27366) > _27366:
                                            mem[_27366 + _20276 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_20276 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27366) + 32]
                                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_20276] = Mask(248, 8, stor366.length)
                                        _24398 = mem[64]
                                        mem[64] = _20276 + stor366.length.field_1 % 128
                                        mem[_20276 + stor366.length.field_1 % 128] = 32
                                        _24578 = mem[_24398]
                                        mem[_20276 + stor366.length.field_1 % 128 + 32] = mem[_24398]
                                        mem[_20276 + stor366.length.field_1 % 128 + 64 len ceil32(_24578)] = mem[_24398 + 32 len ceil32(_24578)]
                                        if ceil32(_24578) > _24578:
                                            mem[_24578 + _20276 + stor366.length.field_1 % 128 + 64] = 0
                                        return 32, mem[_20276 + stor366.length.field_1 % 128 + 32 len ceil32(_24578) + 32]
                                    if bool(stor366.length) != 1:
                                        _24454 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24797 = mem[_24454]
                                        mem[32] = mem[_24454]
                                        mem[64 len ceil32(_24797)] = mem[_24454 + 32 len ceil32(_24797)]
                                        if ceil32(_24797) > _24797:
                                            mem[_24797 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24797) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + _20276] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26887 = mem[64]
                                    mem[64] = _20276 + stor366.length.field_1 % 128
                                    mem[_20276 + stor366.length.field_1 % 128] = 32
                                    _27367 = mem[_26887]
                                    mem[_20276 + stor366.length.field_1 % 128 + 32] = mem[_26887]
                                    mem[_20276 + stor366.length.field_1 % 128 + 64 len ceil32(_27367)] = mem[_26887 + 32 len ceil32(_27367)]
                                    if ceil32(_27367) > _27367:
                                        mem[_27367 + _20276 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_20276 + stor366.length.field_1 % 128 + 32 len ceil32(_27367) + 32]
                                mem[_20276] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_20276] = Mask(248, 8, stor366.length)
                                        _24313 = mem[64]
                                        mem[64] = _20276 + (uint255(stor366.length) * 0.5)
                                        mem[_20276 + (uint255(stor366.length) * 0.5)] = 32
                                        _24521 = mem[_24313]
                                        mem[_20276 + (uint255(stor366.length) * 0.5) + 32] = mem[_24313]
                                        mem[_20276 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24521)] = mem[_24313 + 32 len ceil32(_24521)]
                                        if ceil32(_24521) > _24521:
                                            mem[_24521 + _20276 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_20276 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24521) + 32]
                                    if bool(stor366.length) != 1:
                                        _24400 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24581 = mem[_24400]
                                        mem[32] = mem[_24400]
                                        mem[64 len ceil32(_24581)] = mem[_24400 + 32 len ceil32(_24581)]
                                        if ceil32(_24581) > _24581:
                                            mem[_24581 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24581) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _20276] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26888 = mem[64]
                                    mem[64] = _20276 + (uint255(stor366.length) * 0.5)
                                    mem[_20276 + (uint255(stor366.length) * 0.5)] = 32
                                    _27368 = mem[_26888]
                                    mem[_20276 + (uint255(stor366.length) * 0.5) + 32] = mem[_26888]
                                    mem[_20276 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27368)] = mem[_26888 + 32 len ceil32(_27368)]
                                    if ceil32(_27368) > _27368:
                                        mem[_27368 + _20276 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20276 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27368) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20276] = Mask(248, 8, stor366.length)
                                    _24401 = mem[64]
                                    mem[64] = _20276 + stor366.length.field_1 % 128
                                    mem[_20276 + stor366.length.field_1 % 128] = 32
                                    _24582 = mem[_24401]
                                    mem[_20276 + stor366.length.field_1 % 128 + 32] = mem[_24401]
                                    mem[_20276 + stor366.length.field_1 % 128 + 64 len ceil32(_24582)] = mem[_24401 + 32 len ceil32(_24582)]
                                    if ceil32(_24582) > _24582:
                                        mem[_24582 + _20276 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_20276 + stor366.length.field_1 % 128 + 32 len ceil32(_24582) + 32]
                                if bool(stor366.length) != 1:
                                    _24457 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24799 = mem[_24457]
                                    mem[32] = mem[_24457]
                                    mem[64 len ceil32(_24799)] = mem[_24457 + 32 len ceil32(_24799)]
                                    if ceil32(_24799) > _24799:
                                        mem[_24799 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24799) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _20276] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26889 = mem[64]
                                mem[64] = _20276 + stor366.length.field_1 % 128
                                mem[_20276 + stor366.length.field_1 % 128] = 32
                                _27369 = mem[_26889]
                                mem[_20276 + stor366.length.field_1 % 128 + 32] = mem[_26889]
                                mem[_20276 + stor366.length.field_1 % 128 + 64 len ceil32(_27369)] = mem[_26889 + 32 len ceil32(_27369)]
                                if ceil32(_27369) > _27369:
                                    mem[_27369 + _20276 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20276 + stor366.length.field_1 % 128 + 32 len ceil32(_27369) + 32]
                            mem[0] = 364
                            idx = 0
                            s = 0
                            while idx < uint255(stor364.length) * 0.5:
                                mem[idx + _19636 + 32] = stor364[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _23666 = mem[128]
                            mem[_19636 + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_23666) <= _23666:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = Mask(248, 8, stor366.length)
                                        _27486 = mem[64]
                                        mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _27730 = mem[_27486]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64] = mem[_27486]
                                        mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27730)] = mem[_27486 + 32 len ceil32(_27730)]
                                        if ceil32(_27730) > _27730:
                                            mem[_27730 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27730) + 32], 
                                    if bool(stor366.length) != 1:
                                        _27539 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _27763 = mem[_27539]
                                        mem[32] = mem[_27539]
                                        mem[64 len ceil32(_27763)] = mem[_27539 + 32 len ceil32(_27763)]
                                        if ceil32(_27763) > _27763:
                                            mem[_27763 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_27763) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _28994 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _29394 = mem[_28994]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64] = mem[_28994]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29394)] = mem[_28994 + 32 len ceil32(_29394)]
                                    if ceil32(_29394) > _29394:
                                        mem[_29394 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29394) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = Mask(248, 8, stor366.length)
                                    _27540 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32] = 32
                                    _27764 = mem[_27540]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64] = mem[_27540]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96 len ceil32(_27764)] = mem[_27540 + 32 len ceil32(_27764)]
                                    if ceil32(_27764) > _27764:
                                        mem[_27764 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64 len ceil32(_27764) + 32]
                                if bool(stor366.length) != 1:
                                    _27636 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _27931 = mem[_27636]
                                    mem[32] = mem[_27636]
                                    mem[64 len ceil32(_27931)] = mem[_27636 + 32 len ceil32(_27931)]
                                    if ceil32(_27931) > _27931:
                                        mem[_27931 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_27931) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _28995 = mem[64]
                                mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32] = 32
                                _29395 = mem[_28995]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64] = mem[_28995]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96 len ceil32(_29395)] = mem[_28995 + 32 len ceil32(_29395)]
                                if ceil32(_29395) > _29395:
                                    mem[_29395 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64 len ceil32(_29395) + 32]
                            mem[_23666 + _19636 + (uint255(stor364.length) * 0.5) + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = Mask(248, 8, stor366.length)
                                    _27487 = mem[64]
                                    mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27733 = mem[_27487]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64] = mem[_27487]
                                    mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27733)] = mem[_27487 + 32 len ceil32(_27733)]
                                    if ceil32(_27733) > _27733:
                                        mem[_27733 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27733) + 32], 
                                if bool(stor366.length) != 1:
                                    _27542 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _27767 = mem[_27542]
                                    mem[32] = mem[_27542]
                                    mem[64 len ceil32(_27767)] = mem[_27542 + 32 len ceil32(_27767)]
                                    if ceil32(_27767) > _27767:
                                        mem[_27767 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_27767) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _28996 = mem[64]
                                mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _29396 = mem[_28996]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64] = mem[_28996]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29396)] = mem[_28996 + 32 len ceil32(_29396)]
                                if ceil32(_29396) > _29396:
                                    mem[_29396 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29396) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = Mask(248, 8, stor366.length)
                                _27543 = mem[64]
                                mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32] = 32
                                _27768 = mem[_27543]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64] = mem[_27543]
                                mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96 len ceil32(_27768)] = mem[_27543 + 32 len ceil32(_27768)]
                                if ceil32(_27768) > _27768:
                                    mem[_27768 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64 len ceil32(_27768) + 32]
                            if bool(stor366.length) != 1:
                                _27639 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27933 = mem[_27639]
                                mem[32] = mem[_27639]
                                mem[64 len ceil32(_27933)] = mem[_27639 + 32 len ceil32(_27933)]
                                if ceil32(_27933) > _27933:
                                    mem[_27933 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27933) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19636 + (uint255(stor364.length) * 0.5) + _23666 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _28997 = mem[64]
                            mem[64] = _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32
                            mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 32] = 32
                            _29397 = mem[_28997]
                            mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64] = mem[_28997]
                            mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96 len ceil32(_29397)] = mem[_28997 + 32 len ceil32(_29397)]
                            if ceil32(_29397) > _29397:
                                mem[_29397 + _19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19636 + (uint255(stor364.length) * 0.5) + _23666 + stor366.length.field_1 % 128 + 64 len ceil32(_29397) + 32]
                        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor364.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                            _20277 = mem[128]
                            mem[mem[64] + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_20277) <= _20277:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_19636 + stor364.length.field_1 % 128 + _20277 + 32] = Mask(248, 8, stor366.length)
                                        _24314 = mem[64]
                                        mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _24524 = mem[_24314]
                                        mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64] = mem[_24314]
                                        mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24524)] = mem[_24314 + 32 len ceil32(_24524)]
                                        if ceil32(_24524) > _24524:
                                            mem[_24524 + _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24524) + 32]
                                    if bool(stor366.length) != 1:
                                        _24403 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24585 = mem[_24403]
                                        mem[32] = mem[_24403]
                                        mem[64 len ceil32(_24585)] = mem[_24403 + 32 len ceil32(_24585)]
                                        if ceil32(_24585) > _24585:
                                            mem[_24585 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24585) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _19636 + stor364.length.field_1 % 128 + _20277 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26890 = mem[64]
                                    mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27370 = mem[_26890]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64] = mem[_26890]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27370)] = mem[_26890 + 32 len ceil32(_27370)]
                                    if ceil32(_27370) > _27370:
                                        mem[_27370 + _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27370) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + 32] = Mask(248, 8, stor366.length)
                                    _24404 = mem[64]
                                    mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32] = 32
                                    _24586 = mem[_24404]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64] = mem[_24404]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96 len ceil32(_24586)] = mem[_24404 + 32 len ceil32(_24586)]
                                    if ceil32(_24586) > _24586:
                                        mem[_24586 + _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64 len ceil32(_24586) + 32]
                                if bool(stor366.length) != 1:
                                    _24460 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24801 = mem[_24460]
                                    mem[32] = mem[_24460]
                                    mem[64 len ceil32(_24801)] = mem[_24460 + 32 len ceil32(_24801)]
                                    if ceil32(_24801) > _24801:
                                        mem[_24801 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24801) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _19636 + stor364.length.field_1 % 128 + _20277 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26891 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32] = 32
                                _27371 = mem[_26891]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64] = mem[_26891]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96 len ceil32(_27371)] = mem[_26891 + 32 len ceil32(_27371)]
                                if ceil32(_27371) > _27371:
                                    mem[_27371 + _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64 len ceil32(_27371) + 32]
                            mem[_20277 + _19636 + stor364.length.field_1 % 128 + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + 32] = Mask(248, 8, stor366.length)
                                    _24315 = mem[64]
                                    mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _24527 = mem[_24315]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64] = mem[_24315]
                                    mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24527)] = mem[_24315 + 32 len ceil32(_24527)]
                                    if ceil32(_24527) > _24527:
                                        mem[_24527 + _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24527) + 32]
                                if bool(stor366.length) != 1:
                                    _24406 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24589 = mem[_24406]
                                    mem[32] = mem[_24406]
                                    mem[64 len ceil32(_24589)] = mem[_24406 + 32 len ceil32(_24589)]
                                    if ceil32(_24589) > _24589:
                                        mem[_24589 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24589) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19636 + stor364.length.field_1 % 128 + _20277 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26892 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27372 = mem[_26892]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64] = mem[_26892]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27372)] = mem[_26892 + 32 len ceil32(_27372)]
                                if ceil32(_27372) > _27372:
                                    mem[_27372 + _19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27372) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + 32] = Mask(248, 8, stor366.length)
                                _24407 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32] = 32
                                _24590 = mem[_24407]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64] = mem[_24407]
                                mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96 len ceil32(_24590)] = mem[_24407 + 32 len ceil32(_24590)]
                                if ceil32(_24590) > _24590:
                                    mem[_24590 + _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64 len ceil32(_24590) + 32]
                            if bool(stor366.length) != 1:
                                _24463 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24803 = mem[_24463]
                                mem[32] = mem[_24463]
                                mem[64 len ceil32(_24803)] = mem[_24463 + 32 len ceil32(_24803)]
                                if ceil32(_24803) > _24803:
                                    mem[_24803 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24803) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19636 + stor364.length.field_1 % 128 + _20277 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26893 = mem[64]
                            mem[64] = _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32
                            mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 32] = 32
                            _27373 = mem[_26893]
                            mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64] = mem[_26893]
                            mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96 len ceil32(_27373)] = mem[_26893 + 32 len ceil32(_27373)]
                            if ceil32(_27373) > _27373:
                                mem[_27373 + _19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19636 + stor364.length.field_1 % 128 + _20277 + stor366.length.field_1 % 128 + 64 len ceil32(_27373) + 32]
                        if bool(stor364.length) != 1:
                            _20368 = mem[128]
                            mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_20368) <= _20368:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_20368] = Mask(248, 8, stor366.length)
                                        _24316 = mem[64]
                                        mem[64] = _20368 + (uint255(stor366.length) * 0.5)
                                        mem[_20368 + (uint255(stor366.length) * 0.5)] = 32
                                        _24532 = mem[_24316]
                                        mem[_20368 + (uint255(stor366.length) * 0.5) + 32] = mem[_24316]
                                        mem[_20368 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24532)] = mem[_24316 + 32 len ceil32(_24532)]
                                        if ceil32(_24532) > _24532:
                                            mem[_24532 + _20368 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_20368 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24532) + 32]
                                    if bool(stor366.length) != 1:
                                        _24409 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24595 = mem[_24409]
                                        mem[32] = mem[_24409]
                                        mem[64 len ceil32(_24595)] = mem[_24409 + 32 len ceil32(_24595)]
                                        if ceil32(_24595) > _24595:
                                            mem[_24595 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24595) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _20368] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26894 = mem[64]
                                    mem[64] = _20368 + (uint255(stor366.length) * 0.5)
                                    mem[_20368 + (uint255(stor366.length) * 0.5)] = 32
                                    _27374 = mem[_26894]
                                    mem[_20368 + (uint255(stor366.length) * 0.5) + 32] = mem[_26894]
                                    mem[_20368 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27374)] = mem[_26894 + 32 len ceil32(_27374)]
                                    if ceil32(_27374) > _27374:
                                        mem[_27374 + _20368 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20368 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27374) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20368] = Mask(248, 8, stor366.length)
                                    _24410 = mem[64]
                                    mem[64] = _20368 + stor366.length.field_1 % 128
                                    mem[_20368 + stor366.length.field_1 % 128] = 32
                                    _24596 = mem[_24410]
                                    mem[_20368 + stor366.length.field_1 % 128 + 32] = mem[_24410]
                                    mem[_20368 + stor366.length.field_1 % 128 + 64 len ceil32(_24596)] = mem[_24410 + 32 len ceil32(_24596)]
                                    if ceil32(_24596) > _24596:
                                        mem[_24596 + _20368 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_20368 + stor366.length.field_1 % 128 + 32 len ceil32(_24596) + 32]
                                if bool(stor366.length) != 1:
                                    _24466 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24807 = mem[_24466]
                                    mem[32] = mem[_24466]
                                    mem[64 len ceil32(_24807)] = mem[_24466 + 32 len ceil32(_24807)]
                                    if ceil32(_24807) > _24807:
                                        mem[_24807 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24807) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _20368] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26895 = mem[64]
                                mem[64] = _20368 + stor366.length.field_1 % 128
                                mem[_20368 + stor366.length.field_1 % 128] = 32
                                _27375 = mem[_26895]
                                mem[_20368 + stor366.length.field_1 % 128 + 32] = mem[_26895]
                                mem[_20368 + stor366.length.field_1 % 128 + 64 len ceil32(_27375)] = mem[_26895 + 32 len ceil32(_27375)]
                                if ceil32(_27375) > _27375:
                                    mem[_27375 + _20368 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20368 + stor366.length.field_1 % 128 + 32 len ceil32(_27375) + 32]
                            mem[_20368] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20368] = Mask(248, 8, stor366.length)
                                    _24317 = mem[64]
                                    mem[64] = _20368 + (uint255(stor366.length) * 0.5)
                                    mem[_20368 + (uint255(stor366.length) * 0.5)] = 32
                                    _24535 = mem[_24317]
                                    mem[_20368 + (uint255(stor366.length) * 0.5) + 32] = mem[_24317]
                                    mem[_20368 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24535)] = mem[_24317 + 32 len ceil32(_24535)]
                                    if ceil32(_24535) > _24535:
                                        mem[_24535 + _20368 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20368 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24535) + 32]
                                if bool(stor366.length) != 1:
                                    _24412 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24599 = mem[_24412]
                                    mem[32] = mem[_24412]
                                    mem[64 len ceil32(_24599)] = mem[_24412 + 32 len ceil32(_24599)]
                                    if ceil32(_24599) > _24599:
                                        mem[_24599 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24599) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _20368] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26896 = mem[64]
                                mem[64] = _20368 + (uint255(stor366.length) * 0.5)
                                mem[_20368 + (uint255(stor366.length) * 0.5)] = 32
                                _27376 = mem[_26896]
                                mem[_20368 + (uint255(stor366.length) * 0.5) + 32] = mem[_26896]
                                mem[_20368 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27376)] = mem[_26896 + 32 len ceil32(_27376)]
                                if ceil32(_27376) > _27376:
                                    mem[_27376 + _20368 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_20368 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27376) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_20368] = Mask(248, 8, stor366.length)
                                _24413 = mem[64]
                                mem[64] = _20368 + stor366.length.field_1 % 128
                                mem[_20368 + stor366.length.field_1 % 128] = 32
                                _24600 = mem[_24413]
                                mem[_20368 + stor366.length.field_1 % 128 + 32] = mem[_24413]
                                mem[_20368 + stor366.length.field_1 % 128 + 64 len ceil32(_24600)] = mem[_24413 + 32 len ceil32(_24600)]
                                if ceil32(_24600) > _24600:
                                    mem[_24600 + _20368 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20368 + stor366.length.field_1 % 128 + 32 len ceil32(_24600) + 32]
                            if bool(stor366.length) != 1:
                                _24469 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24809 = mem[_24469]
                                mem[32] = mem[_24469]
                                mem[64 len ceil32(_24809)] = mem[_24469 + 32 len ceil32(_24809)]
                                if ceil32(_24809) > _24809:
                                    mem[_24809 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24809) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _20368] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26897 = mem[64]
                            mem[64] = _20368 + stor366.length.field_1 % 128
                            mem[_20368 + stor366.length.field_1 % 128] = 32
                            _27377 = mem[_26897]
                            mem[_20368 + stor366.length.field_1 % 128 + 32] = mem[_26897]
                            mem[_20368 + stor366.length.field_1 % 128 + 64 len ceil32(_27377)] = mem[_26897 + 32 len ceil32(_27377)]
                            if ceil32(_27377) > _27377:
                                mem[_27377 + _20368 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_20368 + stor366.length.field_1 % 128 + 32 len ceil32(_27377) + 32]
                        mem[0] = 364
                        idx = 0
                        s = 0
                        while idx < stor364.length.field_1 % 128:
                            mem[idx + _19636 + 32] = stor364[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _23667 = mem[128]
                        mem[_19636 + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_23667) <= _23667:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19636 + stor364.length.field_1 % 128 + _23667 + 32] = Mask(248, 8, stor366.length)
                                    _27496 = mem[64]
                                    mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27736 = mem[_27496]
                                    mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64] = mem[_27496]
                                    mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27736)] = mem[_27496 + 32 len ceil32(_27736)]
                                    if ceil32(_27736) > _27736:
                                        mem[_27736 + _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27736) + 32]
                                if bool(stor366.length) != 1:
                                    _27545 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _27787 = mem[_27545]
                                    mem[32] = mem[_27545]
                                    mem[64 len ceil32(_27787)] = mem[_27545 + 32 len ceil32(_27787)]
                                    if ceil32(_27787) > _27787:
                                        mem[_27787 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_27787) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19636 + stor364.length.field_1 % 128 + _23667 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _28998 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _29398 = mem[_28998]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64] = mem[_28998]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29398)] = mem[_28998 + 32 len ceil32(_29398)]
                                if ceil32(_29398) > _29398:
                                    mem[_29398 + _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29398) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + 32] = Mask(248, 8, stor366.length)
                                _27546 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32] = 32
                                _27788 = mem[_27546]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64] = mem[_27546]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96 len ceil32(_27788)] = mem[_27546 + 32 len ceil32(_27788)]
                                if ceil32(_27788) > _27788:
                                    mem[_27788 + _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64 len ceil32(_27788) + 32]
                            if bool(stor366.length) != 1:
                                _27642 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27935 = mem[_27642]
                                mem[32] = mem[_27642]
                                mem[64 len ceil32(_27935)] = mem[_27642 + 32 len ceil32(_27935)]
                                if ceil32(_27935) > _27935:
                                    mem[_27935 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27935) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19636 + stor364.length.field_1 % 128 + _23667 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _28999 = mem[64]
                            mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32] = 32
                            _29399 = mem[_28999]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64] = mem[_28999]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96 len ceil32(_29399)] = mem[_28999 + 32 len ceil32(_29399)]
                            if ceil32(_29399) > _29399:
                                mem[_29399 + _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64 len ceil32(_29399) + 32]
                        mem[_23667 + _19636 + stor364.length.field_1 % 128 + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + 32] = Mask(248, 8, stor366.length)
                                _27497 = mem[64]
                                mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27739 = mem[_27497]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64] = mem[_27497]
                                mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27739)] = mem[_27497 + 32 len ceil32(_27739)]
                                if ceil32(_27739) > _27739:
                                    mem[_27739 + _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27739) + 32]
                            if bool(stor366.length) != 1:
                                _27548 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27791 = mem[_27548]
                                mem[32] = mem[_27548]
                                mem[64 len ceil32(_27791)] = mem[_27548 + 32 len ceil32(_27791)]
                                if ceil32(_27791) > _27791:
                                    mem[_27791 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27791) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _19636 + stor364.length.field_1 % 128 + _23667 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _29000 = mem[64]
                            mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _29400 = mem[_29000]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64] = mem[_29000]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29400)] = mem[_29000 + 32 len ceil32(_29400)]
                            if ceil32(_29400) > _29400:
                                mem[_29400 + _19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29400) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + 32] = Mask(248, 8, stor366.length)
                            _27549 = mem[64]
                            mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32] = 32
                            _27792 = mem[_27549]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64] = mem[_27549]
                            mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96 len ceil32(_27792)] = mem[_27549 + 32 len ceil32(_27792)]
                            if ceil32(_27792) > _27792:
                                mem[_27792 + _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64 len ceil32(_27792) + 32]
                        if bool(stor366.length) != 1:
                            _27645 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _27937 = mem[_27645]
                            mem[32] = mem[_27645]
                            mem[64 len ceil32(_27937)] = mem[_27645 + 32 len ceil32(_27937)]
                            if ceil32(_27937) > _27937:
                                mem[_27937 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_27937) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _19636 + stor364.length.field_1 % 128 + _23667 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _29001 = mem[64]
                        mem[64] = _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32
                        mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 32] = 32
                        _29401 = mem[_29001]
                        mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64] = mem[_29001]
                        mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96 len ceil32(_29401)] = mem[_29001 + 32 len ceil32(_29401)]
                        if ceil32(_29401) > _29401:
                            mem[_29401 + _19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_19636 + stor364.length.field_1 % 128 + _23667 + stor366.length.field_1 % 128 + 64 len ceil32(_29401) + 32]
                    mem[160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = cd[4]
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[128]:
                            revert with 0, 50
                        mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _19637 = mem[64]
                    if bool(stor364.length):
                        if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor364.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                            _20208 = mem[128]
                            mem[mem[64] + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_20208) <= _20208:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = Mask(248, 8, stor366.length)
                                        _24318 = mem[64]
                                        mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _24538 = mem[_24318]
                                        mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64] = mem[_24318]
                                        mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24538)] = mem[_24318 + 32 len ceil32(_24538)]
                                        if ceil32(_24538) > _24538:
                                            mem[_24538 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24538) + 32], 
                                    if bool(stor366.length) != 1:
                                        _24415 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24603 = mem[_24415]
                                        mem[32] = mem[_24415]
                                        mem[64 len ceil32(_24603)] = mem[_24415 + 32 len ceil32(_24603)]
                                        if ceil32(_24603) > _24603:
                                            mem[_24603 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24603) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26898 = mem[64]
                                    mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27378 = mem[_26898]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64] = mem[_26898]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27378)] = mem[_26898 + 32 len ceil32(_27378)]
                                    if ceil32(_27378) > _27378:
                                        mem[_27378 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27378) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = Mask(248, 8, stor366.length)
                                    _24416 = mem[64]
                                    mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32] = 32
                                    _24604 = mem[_24416]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64] = mem[_24416]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96 len ceil32(_24604)] = mem[_24416 + 32 len ceil32(_24604)]
                                    if ceil32(_24604) > _24604:
                                        mem[_24604 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64 len ceil32(_24604) + 32]
                                if bool(stor366.length) != 1:
                                    _24472 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24811 = mem[_24472]
                                    mem[32] = mem[_24472]
                                    mem[64 len ceil32(_24811)] = mem[_24472 + 32 len ceil32(_24811)]
                                    if ceil32(_24811) > _24811:
                                        mem[_24811 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24811) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26899 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32] = 32
                                _27379 = mem[_26899]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64] = mem[_26899]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96 len ceil32(_27379)] = mem[_26899 + 32 len ceil32(_27379)]
                                if ceil32(_27379) > _27379:
                                    mem[_27379 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64 len ceil32(_27379) + 32]
                            mem[_20208 + _19637 + (uint255(stor364.length) * 0.5) + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = Mask(248, 8, stor366.length)
                                    _24319 = mem[64]
                                    mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _24541 = mem[_24319]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64] = mem[_24319]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24541)] = mem[_24319 + 32 len ceil32(_24541)]
                                    if ceil32(_24541) > _24541:
                                        mem[_24541 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24541) + 32], 
                                if bool(stor366.length) != 1:
                                    _24418 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24607 = mem[_24418]
                                    mem[32] = mem[_24418]
                                    mem[64 len ceil32(_24607)] = mem[_24418 + 32 len ceil32(_24607)]
                                    if ceil32(_24607) > _24607:
                                        mem[_24607 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24607) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26900 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27380 = mem[_26900]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64] = mem[_26900]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27380)] = mem[_26900 + 32 len ceil32(_27380)]
                                if ceil32(_27380) > _27380:
                                    mem[_27380 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27380) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = Mask(248, 8, stor366.length)
                                _24419 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32] = 32
                                _24608 = mem[_24419]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64] = mem[_24419]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96 len ceil32(_24608)] = mem[_24419 + 32 len ceil32(_24608)]
                                if ceil32(_24608) > _24608:
                                    mem[_24608 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64 len ceil32(_24608) + 32]
                            if bool(stor366.length) != 1:
                                _24475 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24813 = mem[_24475]
                                mem[32] = mem[_24475]
                                mem[64 len ceil32(_24813)] = mem[_24475 + 32 len ceil32(_24813)]
                                if ceil32(_24813) > _24813:
                                    mem[_24813 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24813) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _20208 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26901 = mem[64]
                            mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 32] = 32
                            _27381 = mem[_26901]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64] = mem[_26901]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96 len ceil32(_27381)] = mem[_26901 + 32 len ceil32(_27381)]
                            if ceil32(_27381) > _27381:
                                mem[_27381 + _19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _20208 + stor366.length.field_1 % 128 + 64 len ceil32(_27381) + 32]
                        if bool(stor364.length) != 1:
                            _20279 = mem[128]
                            mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_20279) <= _20279:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_20279] = Mask(248, 8, stor366.length)
                                        _24320 = mem[64]
                                        mem[64] = _20279 + (uint255(stor366.length) * 0.5)
                                        mem[_20279 + (uint255(stor366.length) * 0.5)] = 32
                                        _24546 = mem[_24320]
                                        mem[_20279 + (uint255(stor366.length) * 0.5) + 32] = mem[_24320]
                                        mem[_20279 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24546)] = mem[_24320 + 32 len ceil32(_24546)]
                                        if ceil32(_24546) > _24546:
                                            mem[_24546 + _20279 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_20279 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24546) + 32]
                                    if bool(stor366.length) != 1:
                                        _24421 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _24613 = mem[_24421]
                                        mem[32] = mem[_24421]
                                        mem[64 len ceil32(_24613)] = mem[_24421 + 32 len ceil32(_24613)]
                                        if ceil32(_24613) > _24613:
                                            mem[_24613 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_24613) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _20279] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _26902 = mem[64]
                                    mem[64] = _20279 + (uint255(stor366.length) * 0.5)
                                    mem[_20279 + (uint255(stor366.length) * 0.5)] = 32
                                    _27382 = mem[_26902]
                                    mem[_20279 + (uint255(stor366.length) * 0.5) + 32] = mem[_26902]
                                    mem[_20279 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27382)] = mem[_26902 + 32 len ceil32(_27382)]
                                    if ceil32(_27382) > _27382:
                                        mem[_27382 + _20279 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20279 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27382) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20279] = Mask(248, 8, stor366.length)
                                    _24422 = mem[64]
                                    mem[64] = _20279 + stor366.length.field_1 % 128
                                    mem[_20279 + stor366.length.field_1 % 128] = 32
                                    _24614 = mem[_24422]
                                    mem[_20279 + stor366.length.field_1 % 128 + 32] = mem[_24422]
                                    mem[_20279 + stor366.length.field_1 % 128 + 64 len ceil32(_24614)] = mem[_24422 + 32 len ceil32(_24614)]
                                    if ceil32(_24614) > _24614:
                                        mem[_24614 + _20279 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_20279 + stor366.length.field_1 % 128 + 32 len ceil32(_24614) + 32]
                                if bool(stor366.length) != 1:
                                    _24478 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24817 = mem[_24478]
                                    mem[32] = mem[_24478]
                                    mem[64 len ceil32(_24817)] = mem[_24478 + 32 len ceil32(_24817)]
                                    if ceil32(_24817) > _24817:
                                        mem[_24817 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24817) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _20279] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26903 = mem[64]
                                mem[64] = _20279 + stor366.length.field_1 % 128
                                mem[_20279 + stor366.length.field_1 % 128] = 32
                                _27383 = mem[_26903]
                                mem[_20279 + stor366.length.field_1 % 128 + 32] = mem[_26903]
                                mem[_20279 + stor366.length.field_1 % 128 + 64 len ceil32(_27383)] = mem[_26903 + 32 len ceil32(_27383)]
                                if ceil32(_27383) > _27383:
                                    mem[_27383 + _20279 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20279 + stor366.length.field_1 % 128 + 32 len ceil32(_27383) + 32]
                            mem[_20279] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20279] = Mask(248, 8, stor366.length)
                                    _24321 = mem[64]
                                    mem[64] = _20279 + (uint255(stor366.length) * 0.5)
                                    mem[_20279 + (uint255(stor366.length) * 0.5)] = 32
                                    _24549 = mem[_24321]
                                    mem[_20279 + (uint255(stor366.length) * 0.5) + 32] = mem[_24321]
                                    mem[_20279 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24549)] = mem[_24321 + 32 len ceil32(_24549)]
                                    if ceil32(_24549) > _24549:
                                        mem[_24549 + _20279 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20279 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24549) + 32]
                                if bool(stor366.length) != 1:
                                    _24424 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24617 = mem[_24424]
                                    mem[32] = mem[_24424]
                                    mem[64 len ceil32(_24617)] = mem[_24424 + 32 len ceil32(_24617)]
                                    if ceil32(_24617) > _24617:
                                        mem[_24617 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24617) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _20279] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26904 = mem[64]
                                mem[64] = _20279 + (uint255(stor366.length) * 0.5)
                                mem[_20279 + (uint255(stor366.length) * 0.5)] = 32
                                _27384 = mem[_26904]
                                mem[_20279 + (uint255(stor366.length) * 0.5) + 32] = mem[_26904]
                                mem[_20279 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27384)] = mem[_26904 + 32 len ceil32(_27384)]
                                if ceil32(_27384) > _27384:
                                    mem[_27384 + _20279 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_20279 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27384) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_20279] = Mask(248, 8, stor366.length)
                                _24425 = mem[64]
                                mem[64] = _20279 + stor366.length.field_1 % 128
                                mem[_20279 + stor366.length.field_1 % 128] = 32
                                _24618 = mem[_24425]
                                mem[_20279 + stor366.length.field_1 % 128 + 32] = mem[_24425]
                                mem[_20279 + stor366.length.field_1 % 128 + 64 len ceil32(_24618)] = mem[_24425 + 32 len ceil32(_24618)]
                                if ceil32(_24618) > _24618:
                                    mem[_24618 + _20279 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20279 + stor366.length.field_1 % 128 + 32 len ceil32(_24618) + 32]
                            if bool(stor366.length) != 1:
                                _24481 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24819 = mem[_24481]
                                mem[32] = mem[_24481]
                                mem[64 len ceil32(_24819)] = mem[_24481 + 32 len ceil32(_24819)]
                                if ceil32(_24819) > _24819:
                                    mem[_24819 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24819) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _20279] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26905 = mem[64]
                            mem[64] = _20279 + stor366.length.field_1 % 128
                            mem[_20279 + stor366.length.field_1 % 128] = 32
                            _27385 = mem[_26905]
                            mem[_20279 + stor366.length.field_1 % 128 + 32] = mem[_26905]
                            mem[_20279 + stor366.length.field_1 % 128 + 64 len ceil32(_27385)] = mem[_26905 + 32 len ceil32(_27385)]
                            if ceil32(_27385) > _27385:
                                mem[_27385 + _20279 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_20279 + stor366.length.field_1 % 128 + 32 len ceil32(_27385) + 32]
                        mem[0] = 364
                        idx = 0
                        s = 0
                        while idx < uint255(stor364.length) * 0.5:
                            mem[idx + _19637 + 32] = stor364[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _23668 = mem[128]
                        mem[_19637 + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_23668) <= _23668:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = Mask(248, 8, stor366.length)
                                    _27506 = mem[64]
                                    mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _27742 = mem[_27506]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64] = mem[_27506]
                                    mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27742)] = mem[_27506 + 32 len ceil32(_27742)]
                                    if ceil32(_27742) > _27742:
                                        mem[_27742 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27742) + 32], 
                                if bool(stor366.length) != 1:
                                    _27551 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _27811 = mem[_27551]
                                    mem[32] = mem[_27551]
                                    mem[64 len ceil32(_27811)] = mem[_27551 + 32 len ceil32(_27811)]
                                    if ceil32(_27811) > _27811:
                                        mem[_27811 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_27811) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _29002 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _29402 = mem[_29002]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64] = mem[_29002]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29402)] = mem[_29002 + 32 len ceil32(_29402)]
                                if ceil32(_29402) > _29402:
                                    mem[_29402 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29402) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = Mask(248, 8, stor366.length)
                                _27552 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32] = 32
                                _27812 = mem[_27552]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64] = mem[_27552]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96 len ceil32(_27812)] = mem[_27552 + 32 len ceil32(_27812)]
                                if ceil32(_27812) > _27812:
                                    mem[_27812 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64 len ceil32(_27812) + 32]
                            if bool(stor366.length) != 1:
                                _27648 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27939 = mem[_27648]
                                mem[32] = mem[_27648]
                                mem[64 len ceil32(_27939)] = mem[_27648 + 32 len ceil32(_27939)]
                                if ceil32(_27939) > _27939:
                                    mem[_27939 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27939) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _29003 = mem[64]
                            mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32] = 32
                            _29403 = mem[_29003]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64] = mem[_29003]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96 len ceil32(_29403)] = mem[_29003 + 32 len ceil32(_29403)]
                            if ceil32(_29403) > _29403:
                                mem[_29403 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64 len ceil32(_29403) + 32]
                        mem[_23668 + _19637 + (uint255(stor364.length) * 0.5) + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = Mask(248, 8, stor366.length)
                                _27507 = mem[64]
                                mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27745 = mem[_27507]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64] = mem[_27507]
                                mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27745)] = mem[_27507 + 32 len ceil32(_27745)]
                                if ceil32(_27745) > _27745:
                                    mem[_27745 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27745) + 32], 
                            if bool(stor366.length) != 1:
                                _27554 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27815 = mem[_27554]
                                mem[32] = mem[_27554]
                                mem[64 len ceil32(_27815)] = mem[_27554 + 32 len ceil32(_27815)]
                                if ceil32(_27815) > _27815:
                                    mem[_27815 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27815) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _29004 = mem[64]
                            mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _29404 = mem[_29004]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64] = mem[_29004]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29404)] = mem[_29004 + 32 len ceil32(_29404)]
                            if ceil32(_29404) > _29404:
                                mem[_29404 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29404) + 32], 
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = Mask(248, 8, stor366.length)
                            _27555 = mem[64]
                            mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32] = 32
                            _27816 = mem[_27555]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64] = mem[_27555]
                            mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96 len ceil32(_27816)] = mem[_27555 + 32 len ceil32(_27816)]
                            if ceil32(_27816) > _27816:
                                mem[_27816 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64 len ceil32(_27816) + 32]
                        if bool(stor366.length) != 1:
                            _27651 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _27941 = mem[_27651]
                            mem[32] = mem[_27651]
                            mem[64 len ceil32(_27941)] = mem[_27651 + 32 len ceil32(_27941)]
                            if ceil32(_27941) > _27941:
                                mem[_27941 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_27941) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _19637 + (uint255(stor364.length) * 0.5) + _23668 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _29005 = mem[64]
                        mem[64] = _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32
                        mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 32] = 32
                        _29405 = mem[_29005]
                        mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64] = mem[_29005]
                        mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96 len ceil32(_29405)] = mem[_29005 + 32 len ceil32(_29405)]
                        if ceil32(_29405) > _29405:
                            mem[_29405 + _19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_19637 + (uint255(stor364.length) * 0.5) + _23668 + stor366.length.field_1 % 128 + 64 len ceil32(_29405) + 32]
                    if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor364.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                        _20280 = mem[128]
                        mem[mem[64] + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_20280) <= _20280:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_19637 + stor364.length.field_1 % 128 + _20280 + 32] = Mask(248, 8, stor366.length)
                                    _24322 = mem[64]
                                    mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _24552 = mem[_24322]
                                    mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64] = mem[_24322]
                                    mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24552)] = mem[_24322 + 32 len ceil32(_24552)]
                                    if ceil32(_24552) > _24552:
                                        mem[_24552 + _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24552) + 32]
                                if bool(stor366.length) != 1:
                                    _24427 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24621 = mem[_24427]
                                    mem[32] = mem[_24427]
                                    mem[64 len ceil32(_24621)] = mem[_24427 + 32 len ceil32(_24621)]
                                    if ceil32(_24621) > _24621:
                                        mem[_24621 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24621) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _19637 + stor364.length.field_1 % 128 + _20280 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26906 = mem[64]
                                mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27386 = mem[_26906]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64] = mem[_26906]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27386)] = mem[_26906 + 32 len ceil32(_27386)]
                                if ceil32(_27386) > _27386:
                                    mem[_27386 + _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27386) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + 32] = Mask(248, 8, stor366.length)
                                _24428 = mem[64]
                                mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32] = 32
                                _24622 = mem[_24428]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64] = mem[_24428]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96 len ceil32(_24622)] = mem[_24428 + 32 len ceil32(_24622)]
                                if ceil32(_24622) > _24622:
                                    mem[_24622 + _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64 len ceil32(_24622) + 32]
                            if bool(stor366.length) != 1:
                                _24484 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24821 = mem[_24484]
                                mem[32] = mem[_24484]
                                mem[64 len ceil32(_24821)] = mem[_24484 + 32 len ceil32(_24821)]
                                if ceil32(_24821) > _24821:
                                    mem[_24821 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24821) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _19637 + stor364.length.field_1 % 128 + _20280 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26907 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32] = 32
                            _27387 = mem[_26907]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64] = mem[_26907]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96 len ceil32(_27387)] = mem[_26907 + 32 len ceil32(_27387)]
                            if ceil32(_27387) > _27387:
                                mem[_27387 + _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64 len ceil32(_27387) + 32]
                        mem[_20280 + _19637 + stor364.length.field_1 % 128 + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + 32] = Mask(248, 8, stor366.length)
                                _24323 = mem[64]
                                mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _24555 = mem[_24323]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64] = mem[_24323]
                                mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_24555)] = mem[_24323 + 32 len ceil32(_24555)]
                                if ceil32(_24555) > _24555:
                                    mem[_24555 + _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24555) + 32]
                            if bool(stor366.length) != 1:
                                _24430 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24625 = mem[_24430]
                                mem[32] = mem[_24430]
                                mem[64 len ceil32(_24625)] = mem[_24430 + 32 len ceil32(_24625)]
                                if ceil32(_24625) > _24625:
                                    mem[_24625 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24625) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _19637 + stor364.length.field_1 % 128 + _20280 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26908 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _27388 = mem[_26908]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64] = mem[_26908]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27388)] = mem[_26908 + 32 len ceil32(_27388)]
                            if ceil32(_27388) > _27388:
                                mem[_27388 + _19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27388) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + 32] = Mask(248, 8, stor366.length)
                            _24431 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32] = 32
                            _24626 = mem[_24431]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64] = mem[_24431]
                            mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96 len ceil32(_24626)] = mem[_24431 + 32 len ceil32(_24626)]
                            if ceil32(_24626) > _24626:
                                mem[_24626 + _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64 len ceil32(_24626) + 32]
                        if bool(stor366.length) != 1:
                            _24487 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _24823 = mem[_24487]
                            mem[32] = mem[_24487]
                            mem[64 len ceil32(_24823)] = mem[_24487 + 32 len ceil32(_24823)]
                            if ceil32(_24823) > _24823:
                                mem[_24823 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_24823) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _19637 + stor364.length.field_1 % 128 + _20280 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _26909 = mem[64]
                        mem[64] = _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32
                        mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 32] = 32
                        _27389 = mem[_26909]
                        mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64] = mem[_26909]
                        mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96 len ceil32(_27389)] = mem[_26909 + 32 len ceil32(_27389)]
                        if ceil32(_27389) > _27389:
                            mem[_27389 + _19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_19637 + stor364.length.field_1 % 128 + _20280 + stor366.length.field_1 % 128 + 64 len ceil32(_27389) + 32]
                    if bool(stor364.length) != 1:
                        _20369 = mem[128]
                        mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_20369) <= _20369:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_20369] = Mask(248, 8, stor366.length)
                                    _24324 = mem[64]
                                    mem[64] = _20369 + (uint255(stor366.length) * 0.5)
                                    mem[_20369 + (uint255(stor366.length) * 0.5)] = 32
                                    _24560 = mem[_24324]
                                    mem[_20369 + (uint255(stor366.length) * 0.5) + 32] = mem[_24324]
                                    mem[_20369 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24560)] = mem[_24324 + 32 len ceil32(_24560)]
                                    if ceil32(_24560) > _24560:
                                        mem[_24560 + _20369 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_20369 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24560) + 32]
                                if bool(stor366.length) != 1:
                                    _24433 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _24631 = mem[_24433]
                                    mem[32] = mem[_24433]
                                    mem[64 len ceil32(_24631)] = mem[_24433 + 32 len ceil32(_24631)]
                                    if ceil32(_24631) > _24631:
                                        mem[_24631 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_24631) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _20369] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _26910 = mem[64]
                                mem[64] = _20369 + (uint255(stor366.length) * 0.5)
                                mem[_20369 + (uint255(stor366.length) * 0.5)] = 32
                                _27390 = mem[_26910]
                                mem[_20369 + (uint255(stor366.length) * 0.5) + 32] = mem[_26910]
                                mem[_20369 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27390)] = mem[_26910 + 32 len ceil32(_27390)]
                                if ceil32(_27390) > _27390:
                                    mem[_27390 + _20369 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_20369 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27390) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_20369] = Mask(248, 8, stor366.length)
                                _24434 = mem[64]
                                mem[64] = _20369 + stor366.length.field_1 % 128
                                mem[_20369 + stor366.length.field_1 % 128] = 32
                                _24632 = mem[_24434]
                                mem[_20369 + stor366.length.field_1 % 128 + 32] = mem[_24434]
                                mem[_20369 + stor366.length.field_1 % 128 + 64 len ceil32(_24632)] = mem[_24434 + 32 len ceil32(_24632)]
                                if ceil32(_24632) > _24632:
                                    mem[_24632 + _20369 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_20369 + stor366.length.field_1 % 128 + 32 len ceil32(_24632) + 32]
                            if bool(stor366.length) != 1:
                                _24490 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24827 = mem[_24490]
                                mem[32] = mem[_24490]
                                mem[64 len ceil32(_24827)] = mem[_24490 + 32 len ceil32(_24827)]
                                if ceil32(_24827) > _24827:
                                    mem[_24827 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24827) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _20369] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26911 = mem[64]
                            mem[64] = _20369 + stor366.length.field_1 % 128
                            mem[_20369 + stor366.length.field_1 % 128] = 32
                            _27391 = mem[_26911]
                            mem[_20369 + stor366.length.field_1 % 128 + 32] = mem[_26911]
                            mem[_20369 + stor366.length.field_1 % 128 + 64 len ceil32(_27391)] = mem[_26911 + 32 len ceil32(_27391)]
                            if ceil32(_27391) > _27391:
                                mem[_27391 + _20369 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_20369 + stor366.length.field_1 % 128 + 32 len ceil32(_27391) + 32]
                        mem[_20369] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_20369] = Mask(248, 8, stor366.length)
                                _24325 = mem[64]
                                mem[64] = _20369 + (uint255(stor366.length) * 0.5)
                                mem[_20369 + (uint255(stor366.length) * 0.5)] = 32
                                _24563 = mem[_24325]
                                mem[_20369 + (uint255(stor366.length) * 0.5) + 32] = mem[_24325]
                                mem[_20369 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_24563)] = mem[_24325 + 32 len ceil32(_24563)]
                                if ceil32(_24563) > _24563:
                                    mem[_24563 + _20369 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_20369 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_24563) + 32]
                            if bool(stor366.length) != 1:
                                _24436 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _24635 = mem[_24436]
                                mem[32] = mem[_24436]
                                mem[64 len ceil32(_24635)] = mem[_24436 + 32 len ceil32(_24635)]
                                if ceil32(_24635) > _24635:
                                    mem[_24635 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_24635) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _20369] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _26912 = mem[64]
                            mem[64] = _20369 + (uint255(stor366.length) * 0.5)
                            mem[_20369 + (uint255(stor366.length) * 0.5)] = 32
                            _27392 = mem[_26912]
                            mem[_20369 + (uint255(stor366.length) * 0.5) + 32] = mem[_26912]
                            mem[_20369 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27392)] = mem[_26912 + 32 len ceil32(_27392)]
                            if ceil32(_27392) > _27392:
                                mem[_27392 + _20369 + (uint255(stor366.length) * 0.5) + 64] = 0
                            return 32, mem[_20369 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_27392) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_20369] = Mask(248, 8, stor366.length)
                            _24437 = mem[64]
                            mem[64] = _20369 + stor366.length.field_1 % 128
                            mem[_20369 + stor366.length.field_1 % 128] = 32
                            _24636 = mem[_24437]
                            mem[_20369 + stor366.length.field_1 % 128 + 32] = mem[_24437]
                            mem[_20369 + stor366.length.field_1 % 128 + 64 len ceil32(_24636)] = mem[_24437 + 32 len ceil32(_24636)]
                            if ceil32(_24636) > _24636:
                                mem[_24636 + _20369 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_20369 + stor366.length.field_1 % 128 + 32 len ceil32(_24636) + 32]
                        if bool(stor366.length) != 1:
                            _24493 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _24829 = mem[_24493]
                            mem[32] = mem[_24493]
                            mem[64 len ceil32(_24829)] = mem[_24493 + 32 len ceil32(_24829)]
                            if ceil32(_24829) > _24829:
                                mem[_24829 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_24829) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _20369] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _26913 = mem[64]
                        mem[64] = _20369 + stor366.length.field_1 % 128
                        mem[_20369 + stor366.length.field_1 % 128] = 32
                        _27393 = mem[_26913]
                        mem[_20369 + stor366.length.field_1 % 128 + 32] = mem[_26913]
                        mem[_20369 + stor366.length.field_1 % 128 + 64 len ceil32(_27393)] = mem[_26913 + 32 len ceil32(_27393)]
                        if ceil32(_27393) > _27393:
                            mem[_27393 + _20369 + stor366.length.field_1 % 128 + 64] = 0
                        return 32, mem[_20369 + stor366.length.field_1 % 128 + 32 len ceil32(_27393) + 32]
                    mem[0] = 364
                    idx = 0
                    s = 0
                    while idx < stor364.length.field_1 % 128:
                        mem[idx + _19637 + 32] = stor364[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _23669 = mem[128]
                    mem[_19637 + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_23669) <= _23669:
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_19637 + stor364.length.field_1 % 128 + _23669 + 32] = Mask(248, 8, stor366.length)
                                _27516 = mem[64]
                                mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32
                                mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _27748 = mem[_27516]
                                mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64] = mem[_27516]
                                mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27748)] = mem[_27516 + 32 len ceil32(_27748)]
                                if ceil32(_27748) > _27748:
                                    mem[_27748 + _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27748) + 32]
                            if bool(stor366.length) != 1:
                                _27557 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _27835 = mem[_27557]
                                mem[32] = mem[_27557]
                                mem[64 len ceil32(_27835)] = mem[_27557 + 32 len ceil32(_27835)]
                                if ceil32(_27835) > _27835:
                                    mem[_27835 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_27835) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _19637 + stor364.length.field_1 % 128 + _23669 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _29006 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _29406 = mem[_29006]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64] = mem[_29006]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29406)] = mem[_29006 + 32 len ceil32(_29406)]
                            if ceil32(_29406) > _29406:
                                mem[_29406 + _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29406) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + 32] = Mask(248, 8, stor366.length)
                            _27558 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32] = 32
                            _27836 = mem[_27558]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64] = mem[_27558]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96 len ceil32(_27836)] = mem[_27558 + 32 len ceil32(_27836)]
                            if ceil32(_27836) > _27836:
                                mem[_27836 + _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64 len ceil32(_27836) + 32]
                        if bool(stor366.length) != 1:
                            _27654 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _27943 = mem[_27654]
                            mem[32] = mem[_27654]
                            mem[64 len ceil32(_27943)] = mem[_27654 + 32 len ceil32(_27943)]
                            if ceil32(_27943) > _27943:
                                mem[_27943 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_27943) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _19637 + stor364.length.field_1 % 128 + _23669 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _29007 = mem[64]
                        mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32] = 32
                        _29407 = mem[_29007]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64] = mem[_29007]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96 len ceil32(_29407)] = mem[_29007 + 32 len ceil32(_29407)]
                        if ceil32(_29407) > _29407:
                            mem[_29407 + _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64 len ceil32(_29407) + 32]
                    mem[_23669 + _19637 + stor364.length.field_1 % 128 + 32] = 0
                    if bool(stor366.length):
                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + 32] = Mask(248, 8, stor366.length)
                            _27517 = mem[64]
                            mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _27751 = mem[_27517]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64] = mem[_27517]
                            mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_27751)] = mem[_27517 + 32 len ceil32(_27751)]
                            if ceil32(_27751) > _27751:
                                mem[_27751 + _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_27751) + 32]
                        if bool(stor366.length) != 1:
                            _27560 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _27839 = mem[_27560]
                            mem[32] = mem[_27560]
                            mem[64 len ceil32(_27839)] = mem[_27560 + 32 len ceil32(_27839)]
                            if ceil32(_27839) > _27839:
                                mem[_27839 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_27839) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < uint255(stor366.length) * 0.5:
                            mem[idx + _19637 + stor364.length.field_1 % 128 + _23669 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _29008 = mem[64]
                        mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 32] = 32
                        _29408 = mem[_29008]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64] = mem[_29008]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_29408)] = mem[_29008 + 32 len ceil32(_29408)]
                        if ceil32(_29408) > _29408:
                            mem[_29408 + _19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 96] = 0
                        return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_29408) + 32]
                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor366.length):
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + 32] = Mask(248, 8, stor366.length)
                        _27561 = mem[64]
                        mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32] = 32
                        _27840 = mem[_27561]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64] = mem[_27561]
                        mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96 len ceil32(_27840)] = mem[_27561 + 32 len ceil32(_27840)]
                        if ceil32(_27840) > _27840:
                            mem[_27840 + _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64 len ceil32(_27840) + 32]
                    if bool(stor366.length) != 1:
                        _27657 = mem[64]
                        mem[64] = 0
                        mem[0] = 32
                        _27945 = mem[_27657]
                        mem[32] = mem[_27657]
                        mem[64 len ceil32(_27945)] = mem[_27657 + 32 len ceil32(_27945)]
                        if ceil32(_27945) > _27945:
                            mem[_27945 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_27945) + -mem[64] + 64
                    mem[0] = 366
                    idx = 0
                    s = 0
                    while idx < stor366.length.field_1 % 128:
                        mem[idx + _19637 + stor364.length.field_1 % 128 + _23669 + 32] = stor366[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _29009 = mem[64]
                    mem[64] = _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32
                    mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 32] = 32
                    _29409 = mem[_29009]
                    mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64] = mem[_29009]
                    mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96 len ceil32(_29409)] = mem[_29009 + 32 len ceil32(_29409)]
                    if ceil32(_29409) > _29409:
                        mem[_29409 + _19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 96] = 0
                    return 32, mem[_19637 + stor364.length.field_1 % 128 + _23669 + stor366.length.field_1 % 128 + 64 len ceil32(_29409) + 32]
                if unknown_0xf454670b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf454670b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(stor359[cd[4]])
                    if unknown_0xf9ef5192(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_b8746e73Address = address(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xfc7bfd45(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xfdfb5244(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0xfe60d12c(?????):
                                require not msg.value
                                return reserved
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if bool(stor371[cd[4]].field_0):
                                if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if bool(stor371[cd[4]].field_0):
                                    if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor371[cd[4]].field_0):
                                        if 31 < uint255(stor371[cd[4]].field_0) * 0.5:
                                            mem[160] = stor371[cd[4]].field_0
                                            idx = 160
                                            s = 0
                                            while (uint255(stor371[cd[4]].field_0) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor371[cd[4]][s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            if 0 == uint255(stor371[cd[4]].field_0) * 0.5:
                                                return 32, 45, 
                                                       0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
                                                       0
                                            return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                                else:
                                    if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor371[cd[4]].field_1 % 128:
                                        if 31 < stor371[cd[4]].field_1 % 128:
                                            mem[160] = stor371[cd[4]].field_0
                                            idx = 160
                                            s = 0
                                            while stor371[cd[4]].field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = stor371[cd[4]][s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            if 0 == uint255(stor371[cd[4]].field_0) * 0.5:
                                                return 32, 45, 
                                                       0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
                                                       0
                                            return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                                if 0 == uint255(stor371[cd[4]].field_0) * 0.5:
                                    return 32, 45, 
                                           0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
                                           0
                                mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)]
                                if ceil32(uint255(stor371[cd[4]].field_0) * 0.5) > uint255(stor371[cd[4]].field_0) * 0.5:
                                    mem[(uint255(stor371[cd[4]].field_0) * 0.5) + ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor371[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor371[cd[4]].field_0) * 0.5)]), 
                            if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor371[cd[4]].field_0):
                                if bool(stor371[cd[4]].field_0) == uint255(stor371[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor371[cd[4]].field_0):
                                    if 31 < uint255(stor371[cd[4]].field_0) * 0.5:
                                        mem[160] = stor371[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while (uint255(stor371[cd[4]].field_0) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor371[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if 0 == stor371[cd[4]].field_1 % 128:
                                            return 32, 45, 
                                                   0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
                                                   0
                                        return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                            else:
                                if bool(stor371[cd[4]].field_0) == stor371[cd[4]].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor371[cd[4]].field_1 % 128:
                                    if 31 < stor371[cd[4]].field_1 % 128:
                                        mem[160] = stor371[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while stor371[cd[4]].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor371[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if 0 == stor371[cd[4]].field_1 % 128:
                                            return 32, 45, 
                                                   0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
                                                   0
                                        return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                            if 0 == stor371[cd[4]].field_1 % 128:
                                return 32, 45, 
                                       0xfe54686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
                                       0
                            mem[ceil32(stor371[cd[4]].field_1 % 128) + 224 len ceil32(stor371[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor371[cd[4]].field_1 % 128)]
                            if ceil32(stor371[cd[4]].field_1 % 128) > stor371[cd[4]].field_1 % 128:
                                mem[stor371[cd[4]].field_1 % 128 + ceil32(stor371[cd[4]].field_1 % 128) + 224] = 0
                            return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor371[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor371[cd[4]].field_1 % 128)]), 
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[4]] != address(cd[36]):
                            revert with 0, 'ERC721: transfer from incorrect owner'
                        if not address(cd[68]):
                            revert with 0, 'ERC721: transfer to the zero address'
                        if not address(cd[36]):
                            stor204[cd[4]] = tokenByIndex.length
                            tokenByIndex.length++
                            storA7CE[stor203.length] = cd[4]
                        else:
                            if address(cd[36]) != address(cd[68]):
                                if not address(cd[36]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if balanceOf[address(cd[36])] < 1:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] - 1 != stor202[cd[4]]:
                                    tokenOfOwnerByIndex[address(cd[36])][stor202[cd[4]]] = tokenOfOwnerByIndex[address(cd[36])][stor154[address(cd[36])] - 1]
                                    stor202[stor201[address(cd[36])][stor154[address(cd[36])] - 1]] = stor202[cd[4]]
                                stor202[cd[4]] = 0
                                tokenOfOwnerByIndex[address(cd[36])][stor154[address(cd[36])] - 1] = 0
                        if address(cd[68]):
                            if address(cd[68]) != address(cd[36]):
                                if not address(cd[68]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[68])][stor154[address(cd[68])]] = cd[4]
                                stor202[cd[4]] = balanceOf[address(cd[68])]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor204[cd[4]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor204[cd[4]]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[cd[4]]
                            stor204[cd[4]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[cd[4]] = 0
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[4]], 0, cd[4]);
                        if balanceOf[address(cd[36])] < 1:
                            revert with 0, 17
                        balanceOf[address(cd[36])]--
                        if balanceOf[address(cd[68])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[68])]++
                        ownerOf[cd[4]] = address(cd[68])
                        emit Transfer(address(cd[36]), address(cd[68]), cd[4]);
                else:
                    if unknown_0xe59b625f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if bool(stor370[cd[4]].field_0):
                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor370[cd[4]].field_0):
                                if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not Mask(256, -1, stor370[cd[4]].field_0):
                                    if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                        mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]
                                        if ceil32(uint255(stor370[cd[4]].field_0) * 0.5) > uint255(stor370[cd[4]].field_0) * 0.5:
                                            mem[(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]), 
                                else:
                                    if 31 >= uint255(stor370[cd[4]].field_0) * 0.5:
                                        mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                                        if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                            mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]
                                            if ceil32(uint255(stor370[cd[4]].field_0) * 0.5) > uint255(stor370[cd[4]].field_0) * 0.5:
                                                mem[(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] = 0
                                            return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]), 
                                    else:
                                        mem[160] = stor370[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while (uint255(stor370[cd[4]].field_0) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor370[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                            return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)])
                            else:
                                if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not stor370[cd[4]].field_1 % 128:
                                    if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                        mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]
                                        if ceil32(uint255(stor370[cd[4]].field_0) * 0.5) > uint255(stor370[cd[4]].field_0) * 0.5:
                                            mem[(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] = 0
                                        return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]), 
                                else:
                                    if 31 >= stor370[cd[4]].field_1 % 128:
                                        mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                                        if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                            mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]
                                            if ceil32(uint255(stor370[cd[4]].field_0) * 0.5) > uint255(stor370[cd[4]].field_0) * 0.5:
                                                mem[(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] = 0
                                            return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]), 
                                    else:
                                        mem[160] = stor370[cd[4]].field_0
                                        idx = 160
                                        s = 0
                                        while stor370[cd[4]].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor370[cd[4]][s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        if uint255(stor370[cd[4]].field_0) * 0.5 != 0:
                                            return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)])
                            ('eq', 0, ('mask_shl', 256, -1, -1, ('field', 0, ('stor', ('map', ('cd', 4), ('name', 'stor370', 370))))))
                            if not cd[4]:
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 256] = 'Midgardian #' << 160
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 268] = 0x3000000000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 269] = 32
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 301] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224]
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 333 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224])] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224])]
                                if ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224]) > mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224]:
                                    mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 333] = 0
                                return Array(len=mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224], data=mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 333 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224])]), 
                            s = 0
                            idx = cd[4]
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] = s
                            if s:
                                mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 192 len s] = call.data[calldata.size len s]
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 224] = 'Midgardian #' << 160
                            mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 236 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160])] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160])]
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 236] = 32
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 268] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])]
                            if ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]) > mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]:
                                mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192] + mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300] = 0
                            return Array(len=mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192], data=mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])]), 
                        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor370[cd[4]].field_0):
                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor370[cd[4]].field_0):
                                if stor370[cd[4]].field_1 % 128 != 0:
                                    mem[ceil32(stor370[cd[4]].field_1 % 128) + 224 len ceil32(stor370[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor370[cd[4]].field_1 % 128)]
                                    if ceil32(stor370[cd[4]].field_1 % 128) > stor370[cd[4]].field_1 % 128:
                                        mem[stor370[cd[4]].field_1 % 128 + ceil32(stor370[cd[4]].field_1 % 128) + 224] = 0
                                    return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor370[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor370[cd[4]].field_1 % 128)]), 
                            else:
                                if 31 >= uint255(stor370[cd[4]].field_0) * 0.5:
                                    mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                                    if stor370[cd[4]].field_1 % 128 != 0:
                                        mem[ceil32(stor370[cd[4]].field_1 % 128) + 224 len ceil32(stor370[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor370[cd[4]].field_1 % 128)]
                                        if ceil32(stor370[cd[4]].field_1 % 128) > stor370[cd[4]].field_1 % 128:
                                            mem[stor370[cd[4]].field_1 % 128 + ceil32(stor370[cd[4]].field_1 % 128) + 224] = 0
                                        return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor370[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor370[cd[4]].field_1 % 128)]), 
                                else:
                                    mem[160] = stor370[cd[4]].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor370[cd[4]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor370[cd[4]].field_1 % 128 != 0:
                                        return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)])
                        else:
                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor370[cd[4]].field_1 % 128:
                                if stor370[cd[4]].field_1 % 128 != 0:
                                    mem[ceil32(stor370[cd[4]].field_1 % 128) + 224 len ceil32(stor370[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor370[cd[4]].field_1 % 128)]
                                    if ceil32(stor370[cd[4]].field_1 % 128) > stor370[cd[4]].field_1 % 128:
                                        mem[stor370[cd[4]].field_1 % 128 + ceil32(stor370[cd[4]].field_1 % 128) + 224] = 0
                                    return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor370[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor370[cd[4]].field_1 % 128)]), 
                            else:
                                if 31 >= stor370[cd[4]].field_1 % 128:
                                    mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                                    if stor370[cd[4]].field_1 % 128 != 0:
                                        mem[ceil32(stor370[cd[4]].field_1 % 128) + 224 len ceil32(stor370[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor370[cd[4]].field_1 % 128)]
                                        if ceil32(stor370[cd[4]].field_1 % 128) > stor370[cd[4]].field_1 % 128:
                                            mem[stor370[cd[4]].field_1 % 128 + ceil32(stor370[cd[4]].field_1 % 128) + 224] = 0
                                        return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor370[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor370[cd[4]].field_1 % 128)]), 
                                else:
                                    mem[160] = stor370[cd[4]].field_0
                                    idx = 160
                                    s = 0
                                    while stor370[cd[4]].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor370[cd[4]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if stor370[cd[4]].field_1 % 128 != 0:
                                        return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)])
                        ('eq', 0, ('type', 7, ('field', 1, ('stor', ('map', ('cd', 4), ('name', 'stor370', 370))))))
                        if not cd[4]:
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 256] = 'Midgardian #' << 160
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 268] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 269] = 32
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 301] = mem[ceil32(stor370[cd[4]].field_1 % 128) + 224]
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 333 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 224])] = mem[ceil32(stor370[cd[4]].field_1 % 128) + 256 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 224])]
                            if ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 224]) > mem[ceil32(stor370[cd[4]].field_1 % 128) + 224]:
                                mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + 224] + ceil32(stor370[cd[4]].field_1 % 128) + 333] = 0
                            return Array(len=mem[ceil32(stor370[cd[4]].field_1 % 128) + 224], data=mem[ceil32(stor370[cd[4]].field_1 % 128) + 333 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 224])]), 
                        s = 0
                        idx = cd[4]
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] = s
                        if s:
                            mem[ceil32(stor370[cd[4]].field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                        t = s
                        idx = cd[4]
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor370[cd[4]].field_1 % 128) + 160]:
                                revert with 0, 50
                            mem[t + ceil32(stor370[cd[4]].field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 224] = 'Midgardian #' << 160
                        mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 236 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 160])] = mem[ceil32(stor370[cd[4]].field_1 % 128) + 192 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + 160])]
                        mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 236] = 32
                        mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 268] = mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192]
                        mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 300 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192])] = mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 224 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192])]
                        if ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192]) > mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192]:
                            mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192] + mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 300] = 0
                        return Array(len=mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192], data=mem[mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 300 len ceil32(mem[ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 192])]), 
                    if unknown_0xe985e9c5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return bool(stor156[address(cd[4])][address(cd[36])])
                    if unknown_0xeebc9fc7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_eebc9fc7Address
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    else:
                        if unknown_0xf435a842(?????) == uint32(call.func_hash) >> 224:
                            require calldata.size - 4 >= 32
                            if not uint8(enabled):
                                if owner != msg.sender:
                                    revert with 0, 'Minting not enabled'
                            if cd[4] <= 0:
                                revert with 0, 'Mint must be non-zero'
                            staticcall sub_eebc9fc7Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall sub_5cb1b9f3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                                revert with 0, 17
                            if ext_call.return_data[0] < 0 and ext_call.return_data[0] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            staticcall sub_b8746e73Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 >= sub_65b3e4cf.length:
                                revert with 0, 50
                            if 0 >= uint256(sub_65b3e4cf.field_512):
                                if 3 >= sub_6a01b671.length:
                                    revert with 0, 50
                                if 3 >= sub_c56eb1dc.length:
                                    revert with 0, 50
                                if ext_call.return_data[0] < 10^15:
                                    if uint256(sub_6a01b671.field_768) and cd[4] > -1 / uint256(sub_6a01b671.field_768):
                                        revert with 0, 17
                                    if uint256(sub_6a01b671.field_768) * cd[4] > msg.value:
                                        revert with 0, 'Insufficient AVAX'
                                    if cd[4] > !minted[msg.sender]:
                                        revert with 0, 17
                                    if uint256(sub_c56eb1dc.field_768) < cd[4] + minted[msg.sender]:
                                        revert with 0, 'Requested amount exceeds wallet mint limits'
                                else:
                                    if 5 > !uint256(sub_c56eb1dc.field_768):
                                        revert with 0, 17
                                    if uint256(sub_6a01b671.field_768) and cd[4] > -1 / uint256(sub_6a01b671.field_768):
                                        revert with 0, 17
                                    if uint256(sub_6a01b671.field_768) * cd[4] > msg.value:
                                        revert with 0, 'Insufficient AVAX'
                                    if cd[4] > !minted[msg.sender]:
                                        revert with 0, 17
                                    if uint256(sub_c56eb1dc.field_768) + 5 < cd[4] + minted[msg.sender]:
                                        revert with 0, 'Requested amount exceeds wallet mint limits'
                            else:
                                if 1 >= sub_65b3e4cf.length:
                                    revert with 0, 50
                                if 0 >= uint256(sub_65b3e4cf.field_256):
                                    if 2 >= sub_6a01b671.length:
                                        revert with 0, 50
                                    if 2 >= sub_c56eb1dc.length:
                                        revert with 0, 50
                                    if ext_call.return_data[0] < 10^15:
                                        if uint256(sub_6a01b671.field_512) and cd[4] > -1 / uint256(sub_6a01b671.field_512):
                                            revert with 0, 17
                                        if uint256(sub_6a01b671.field_512) * cd[4] > msg.value:
                                            revert with 0, 'Insufficient AVAX'
                                        if cd[4] > !minted[msg.sender]:
                                            revert with 0, 17
                                        if uint256(sub_c56eb1dc.field_512) < cd[4] + minted[msg.sender]:
                                            revert with 0, 'Requested amount exceeds wallet mint limits'
                                    else:
                                        if 5 > !uint256(sub_c56eb1dc.field_512):
                                            revert with 0, 17
                                        if uint256(sub_6a01b671.field_512) and cd[4] > -1 / uint256(sub_6a01b671.field_512):
                                            revert with 0, 17
                                        if uint256(sub_6a01b671.field_512) * cd[4] > msg.value:
                                            revert with 0, 'Insufficient AVAX'
                                        if cd[4] > !minted[msg.sender]:
                                            revert with 0, 17
                                        if uint256(sub_c56eb1dc.field_512) + 5 < cd[4] + minted[msg.sender]:
                                            revert with 0, 'Requested amount exceeds wallet mint limits'
                                else:
                                    if 0 >= sub_65b3e4cf.length:
                                        revert with 0, 50
                                    if 0 < uint256(sub_65b3e4cf.field_0):
                                        if 0 >= sub_6a01b671.length:
                                            revert with 0, 50
                                        if 0 >= sub_c56eb1dc.length:
                                            revert with 0, 50
                                        if ext_call.return_data[0] < 10^15:
                                            if uint256(sub_6a01b671.field_0) and cd[4] > -1 / uint256(sub_6a01b671.field_0):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_0) * cd[4] > msg.value:
                                                revert with 0, 'Insufficient AVAX'
                                            if cd[4] > !minted[msg.sender]:
                                                revert with 0, 17
                                            if uint256(sub_c56eb1dc.field_0) < cd[4] + minted[msg.sender]:
                                                revert with 0, 'Requested amount exceeds wallet mint limits'
                                        else:
                                            if 5 > !uint256(sub_c56eb1dc.field_0):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_0) and cd[4] > -1 / uint256(sub_6a01b671.field_0):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_0) * cd[4] > msg.value:
                                                revert with 0, 'Insufficient AVAX'
                                            if cd[4] > !minted[msg.sender]:
                                                revert with 0, 17
                                            if uint256(sub_c56eb1dc.field_0) + 5 < cd[4] + minted[msg.sender]:
                                                revert with 0, 'Requested amount exceeds wallet mint limits'
                                    else:
                                        if 1 >= sub_6a01b671.length:
                                            revert with 0, 50
                                        if 1 >= sub_c56eb1dc.length:
                                            revert with 0, 50
                                        if ext_call.return_data[0] < 10^15:
                                            if uint256(sub_6a01b671.field_256) and cd[4] > -1 / uint256(sub_6a01b671.field_256):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_256) * cd[4] > msg.value:
                                                revert with 0, 'Insufficient AVAX'
                                            if cd[4] > !minted[msg.sender]:
                                                revert with 0, 17
                                            if uint256(sub_c56eb1dc.field_256) < cd[4] + minted[msg.sender]:
                                                revert with 0, 'Requested amount exceeds wallet mint limits'
                                        else:
                                            if 5 > !uint256(sub_c56eb1dc.field_256):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_256) and cd[4] > -1 / uint256(sub_6a01b671.field_256):
                                                revert with 0, 17
                                            if uint256(sub_6a01b671.field_256) * cd[4] > msg.value:
                                                revert with 0, 'Insufficient AVAX'
                                            if cd[4] > !minted[msg.sender]:
                                                revert with 0, 17
                                            if uint256(sub_c56eb1dc.field_256) + 5 < cd[4] + minted[msg.sender]:
                                                revert with 0, 'Requested amount exceeds wallet mint limits'
                            if minted[msg.sender] > !cd[4]:
                                revert with 0, 17
                            minted[msg.sender] += cd[4]
                            if msg.sender != tx.origin:
                                revert with 1019298480
                            if cd[4] + sub_5b449c4e > MAX_SUPPLY - reserved:
                                revert with 0, 'Request amount exceeds total mint limits'
                            staticcall randomAddress.enoughRandom() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = MAX_SUPPLY - sub_5b449c4e
                            t = ext_call.return_data[0]
                            while idx < cd[4]:
                                if not s:
                                    revert with 0, 18
                                if sub_c1608d6b[s - 1]:
                                    sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = sub_c1608d6b[s - 1]
                                else:
                                    sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = s - 1
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if sub_c1608d6b[Mask(256, -idx, t) >> idx % s]:
                                    if ownerOf[stor358[Mask(256, -idx, t) >> idx % s]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[Mask(256, -idx, t) >> idx % s]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                            stor202[stor358[Mask(256, -idx, t) >> idx % s]] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[stor358[Mask(256, -idx, t) >> idx % s]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[stor358[Mask(256, -idx, t) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[stor358[Mask(256, -idx, t) >> idx % s]]
                                        stor204[stor358[Mask(256, -idx, t) >> idx % s]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                    mem[32] = 153
                                    ownerOf[stor358[Mask(256, -idx, t) >> idx % s]] = msg.sender
                                    emit Transfer(0, msg.sender, sub_c1608d6b[Mask(256, -idx, t) >> idx % s]);
                                else:
                                    if ownerOf[Mask(256, -idx, t) >> idx % s]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[Mask(256, -idx, t) >> idx % s] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = Mask(256, -idx, t) >> idx % s
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(256, -idx, t) >> idx % s
                                            stor202[Mask(256, -idx, t) >> idx % s] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[Mask(256, -idx, t) >> idx % s] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[Mask(256, -idx, t) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[Mask(256, -idx, t) >> idx % s]
                                        stor204[Mask(256, -idx, t) >> idx % s] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = Mask(256, -idx, t) >> idx % s
                                    mem[32] = 153
                                    ownerOf[Mask(256, -idx, t) >> idx % s] = msg.sender
                                    emit Transfer(0, msg.sender, Mask(256, -idx, t) >> idx % s);
                                idx = idx + 1
                                s = s - 1
                                t = Mask(256, -idx, t) >> idx
                                continue 
                            sub_5b449c4e += cd[4]
            else:
                if unknown_0xb8746e73(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xa22cb465(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x8c74bf0e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if sub_5b449c4e > !cd[4]:
                                revert with 0, 17
                            if sub_5b449c4e + cd[4] < cd[4]:
                                revert with 0, 17
                            staticcall randomAddress.enoughRandom() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = MAX_SUPPLY - sub_5b449c4e
                            t = ext_call.return_data[0]
                            while idx < cd[4]:
                                if not s:
                                    revert with 0, 18
                                if sub_c1608d6b[s - 1]:
                                    sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = sub_c1608d6b[s - 1]
                                else:
                                    sub_c1608d6b[Mask(256, -idx, t) >> idx % s] = s - 1
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if sub_c1608d6b[Mask(256, -idx, t) >> idx % s]:
                                    if ownerOf[stor358[Mask(256, -idx, t) >> idx % s]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[Mask(256, -idx, t) >> idx % s]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                            stor202[stor358[Mask(256, -idx, t) >> idx % s]] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[stor358[Mask(256, -idx, t) >> idx % s]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[stor358[Mask(256, -idx, t) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[stor358[Mask(256, -idx, t) >> idx % s]]
                                        stor204[stor358[Mask(256, -idx, t) >> idx % s]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = sub_c1608d6b[Mask(256, -idx, t) >> idx % s]
                                    mem[32] = 153
                                    ownerOf[stor358[Mask(256, -idx, t) >> idx % s]] = msg.sender
                                    emit Transfer(0, msg.sender, sub_c1608d6b[Mask(256, -idx, t) >> idx % s]);
                                else:
                                    if ownerOf[Mask(256, -idx, t) >> idx % s]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[Mask(256, -idx, t) >> idx % s] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = Mask(256, -idx, t) >> idx % s
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(256, -idx, t) >> idx % s
                                            stor202[Mask(256, -idx, t) >> idx % s] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[Mask(256, -idx, t) >> idx % s] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[Mask(256, -idx, t) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[Mask(256, -idx, t) >> idx % s]
                                        stor204[Mask(256, -idx, t) >> idx % s] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = Mask(256, -idx, t) >> idx % s
                                    mem[32] = 153
                                    ownerOf[Mask(256, -idx, t) >> idx % s] = msg.sender
                                    emit Transfer(0, msg.sender, Mask(256, -idx, t) >> idx % s);
                                idx = idx + 1
                                s = s - 1
                                t = Mask(256, -idx, t) >> idx
                                continue 
                            sub_5b449c4e += cd[4]
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if bool(stor152.length):
                                if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                                    revert with 0, 34
                                if bool(stor152.length):
                                    if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor152.length):
                                        if 31 < uint255(stor152.length) * 0.5:
                                            mem[160] = uint256(stor152.field_0)
                                            idx = 160
                                            s = 0
                                            while (uint255(stor152.length) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor152[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor152.length), data=mem[160 len ceil32(uint255(stor152.length) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor152.length.field_8)
                                else:
                                    if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor152.length.field_1 % 128:
                                        if 31 < stor152.length.field_1 % 128:
                                            mem[160] = uint256(stor152.field_0)
                                            idx = 160
                                            s = 0
                                            while stor152.length.field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = stor152[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor152.length), data=mem[160 len ceil32(uint255(stor152.length) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor152.length.field_8)
                                mem[ceil32(uint255(stor152.length) * 0.5) + 224 len ceil32(uint255(stor152.length) * 0.5)] = mem[160 len ceil32(uint255(stor152.length) * 0.5)]
                                if ceil32(uint255(stor152.length) * 0.5) > uint255(stor152.length) * 0.5:
                                    mem[(uint255(stor152.length) * 0.5) + ceil32(uint255(stor152.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor152.length), data=mem[160 len ceil32(uint255(stor152.length) * 0.5)], mem[(2 * ceil32(uint255(stor152.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor152.length) * 0.5)]), 
                            if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor152.length):
                                if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor152.length):
                                    if 31 < uint255(stor152.length) * 0.5:
                                        mem[160] = uint256(stor152.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor152.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor152[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor152.length % 128, data=mem[160 len ceil32(stor152.length.field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor152.length.field_8)
                            else:
                                if bool(stor152.length) == stor152.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor152.length.field_1 % 128:
                                    if 31 < stor152.length.field_1 % 128:
                                        mem[160] = uint256(stor152.field_0)
                                        idx = 160
                                        s = 0
                                        while stor152.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor152[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor152.length % 128, data=mem[160 len ceil32(stor152.length.field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor152.length.field_8)
                            mem[ceil32(stor152.length.field_1 % 128) + 224 len ceil32(stor152.length.field_1 % 128)] = mem[160 len ceil32(stor152.length.field_1 % 128)]
                            if ceil32(stor152.length.field_1 % 128) > stor152.length.field_1 % 128:
                                mem[stor152.length.field_1 % 128 + ceil32(stor152.length.field_1 % 128) + 224] = 0
                            return Array(len=stor152.length % 128, data=mem[160 len ceil32(stor152.length.field_1 % 128)], mem[(2 * ceil32(stor152.length.field_1 % 128)) + 224 len 2 * ceil32(stor152.length.field_1 % 128)]), 
                        if uint32(call.func_hash) >> 224 != unknown_0x9ef122ae(?????):
                        require not msg.value
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor366.length):
                                    if 31 < uint255(stor366.length) * 0.5:
                                        mem[160] = uint256(stor366.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor366.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor366[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor366.length), data=mem[160 len ceil32(uint255(stor366.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor366.length.field_8)
                            else:
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor366.length.field_1 % 128:
                                    if 31 < stor366.length.field_1 % 128:
                                        mem[160] = uint256(stor366.field_0)
                                        idx = 160
                                        s = 0
                                        while stor366.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor366[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor366.length), data=mem[160 len ceil32(uint255(stor366.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor366.length.field_8)
                            mem[ceil32(uint255(stor366.length) * 0.5) + 224 len ceil32(uint255(stor366.length) * 0.5)] = mem[160 len ceil32(uint255(stor366.length) * 0.5)]
                            if ceil32(uint255(stor366.length) * 0.5) > uint255(stor366.length) * 0.5:
                                mem[(uint255(stor366.length) * 0.5) + ceil32(uint255(stor366.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor366.length), data=mem[160 len ceil32(uint255(stor366.length) * 0.5)], mem[(2 * ceil32(uint255(stor366.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor366.length) * 0.5)]), 
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor366.length):
                                if 31 < uint255(stor366.length) * 0.5:
                                    mem[160] = uint256(stor366.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor366.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor366[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor366.length % 128, data=mem[160 len ceil32(stor366.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor366.length.field_8)
                        else:
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor366.length.field_1 % 128:
                                if 31 < stor366.length.field_1 % 128:
                                    mem[160] = uint256(stor366.field_0)
                                    idx = 160
                                    s = 0
                                    while stor366.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor366[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor366.length % 128, data=mem[160 len ceil32(stor366.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor366.length.field_8)
                        mem[ceil32(stor366.length.field_1 % 128) + 224 len ceil32(stor366.length.field_1 % 128)] = mem[160 len ceil32(stor366.length.field_1 % 128)]
                        if ceil32(stor366.length.field_1 % 128) > stor366.length.field_1 % 128:
                            mem[stor366.length.field_1 % 128 + ceil32(stor366.length.field_1 % 128) + 224] = 0
                        return Array(len=stor366.length % 128, data=mem[160 len ceil32(stor366.length.field_1 % 128)], mem[(2 * ceil32(stor366.length.field_1 % 128)) + 224 len 2 * ceil32(stor366.length.field_1 % 128)]), 
                    if unknown_0xa22cb465(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if msg.sender == address(cd[4]):
                            revert with 0, 'ERC721: approve to caller'
                        stor156[address(msg.sender)][address(cd[4])] = uint8(bool(cd[36]))
                        emit ApprovalForAll(bool(cd[36]), msg.sender, address(cd[4]));
                    if unknown_0xaae04cae(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < cd[36]:
                            mem[mem[64] + 4] = idx
                            staticcall sub_ac7b1c0aAddress.0x6352211e with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10837] == mem[_10837 + 12 len 20]
                            if mem[_10837 + 12 len 20]:
                                mem[mem[64] + 4] = idx
                                staticcall sub_ac7b1c0aAddress.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13465 = mem[_12665]
                                require mem[_12665] == mem[_12665 + 12 len 20]
                                mem[0] = idx
                                mem[32] = 358
                                if sub_c1608d6b[idx]:
                                    if sub_c1608d6b[stor352 + -stor356 - 1]:
                                        sub_c1608d6b[idx] = sub_c1608d6b[stor352 + -stor356 - 1]
                                        mem[mem[64] + 4] = idx
                                        staticcall sub_ac7b1c0aAddress.0xf454670b with:
                                                gas gas_remaining wei
                                               args idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14911 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14911] == bool(mem[_14911])
                                        if mem[_14911]:
                                            stor359[stor358[idx]] = 1
                                    else:
                                        sub_c1608d6b[idx] = MAX_SUPPLY + -sub_5b449c4e - 1
                                        mem[mem[64] + 4] = idx
                                        staticcall sub_ac7b1c0aAddress.0xf454670b with:
                                                gas gas_remaining wei
                                               args idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _14912 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_14912] == bool(mem[_14912])
                                        if mem[_14912]:
                                            stor359[stor358[idx]] = 1
                                    if not address(_13465):
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[stor358[idx]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[idx]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[idx]
                                    if address(_13465):
                                        if address(_13465):
                                            if not address(_13465):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(_13465)][stor154[address(_13465)]] = sub_c1608d6b[idx]
                                            stor202[stor358[idx]] = balanceOf[address(_13465)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[stor358[idx]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[stor358[idx]]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[stor358[idx]]
                                        stor204[stor358[idx]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(_13465)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(_13465)]++
                                    mem[0] = sub_c1608d6b[idx]
                                    mem[32] = 153
                                    ownerOf[stor358[idx]] = address(_13465)
                                    emit Transfer(0, address(_13465), sub_c1608d6b[idx]);
                                else:
                                    if sub_c1608d6b[stor352 + -stor356 - 1]:
                                        sub_c1608d6b[idx] = sub_c1608d6b[stor352 + -stor356 - 1]
                                        mem[mem[64] + 4] = idx
                                        staticcall sub_ac7b1c0aAddress.0xf454670b with:
                                                gas gas_remaining wei
                                               args idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15286 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_15286] == bool(mem[_15286])
                                        if mem[_15286]:
                                            stor359[idx] = 1
                                    else:
                                        sub_c1608d6b[idx] = MAX_SUPPLY + -sub_5b449c4e - 1
                                        mem[mem[64] + 4] = idx
                                        staticcall sub_ac7b1c0aAddress.0xf454670b with:
                                                gas gas_remaining wei
                                               args idx
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _15287 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_15287] == bool(mem[_15287])
                                        if mem[_15287]:
                                            stor359[idx] = 1
                                    if not address(_13465):
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[idx]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[idx] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = idx
                                    if address(_13465):
                                        if address(_13465):
                                            if not address(_13465):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(_13465)][stor154[address(_13465)]] = idx
                                            stor202[idx] = balanceOf[address(_13465)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[idx] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[idx]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[idx]
                                        stor204[idx] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(_13465)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(_13465)]++
                                    mem[0] = idx
                                    mem[32] = 153
                                    ownerOf[idx] = address(_13465)
                                    emit Transfer(0, address(_13465), idx);
                                mem[mem[64]] = 0x438534ad00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = idx
                                require ext_code.size(sub_ac7b1c0aAddress)
                                call sub_ac7b1c0aAddress.0x438534ad with:
                                     gas gas_remaining wei
                                    args idx
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_5b449c4e == -1:
                                    revert with 0, 17
                                sub_5b449c4e++
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    if unknown_0xac7b1c0a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_ac7b1c0aAddress
                    if unknown_0xb146e408(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(stor369[cd[4]])
                    if uint32(call.func_hash) >> 224 != unknown_0xb85e82f2(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if bool(stor370[cd[4]].field_0):
                        if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor370[cd[4]].field_0):
                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor370[cd[4]].field_0):
                                if 31 < uint255(stor370[cd[4]].field_0) * 0.5:
                                    mem[160] = stor370[cd[4]].field_0
                                    idx = 160
                                    s = 0
                                    while (uint255(stor370[cd[4]].field_0) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor370[cd[4]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                        else:
                            if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor370[cd[4]].field_1 % 128:
                                if 31 < stor370[cd[4]].field_1 % 128:
                                    mem[160] = stor370[cd[4]].field_0
                                    idx = 160
                                    s = 0
                                    while stor370[cd[4]].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor370[cd[4]][s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                        mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]
                        if ceil32(uint255(stor370[cd[4]].field_0) * 0.5) > uint255(stor370[cd[4]].field_0) * 0.5:
                            mem[(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor370[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor370[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor370[cd[4]].field_0) * 0.5)]), 
                    if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor370[cd[4]].field_0):
                        if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor370[cd[4]].field_0):
                            if 31 < uint255(stor370[cd[4]].field_0) * 0.5:
                                mem[160] = stor370[cd[4]].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor370[cd[4]].field_0) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor370[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                    else:
                        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor370[cd[4]].field_1 % 128:
                            if 31 < stor370[cd[4]].field_1 % 128:
                                mem[160] = stor370[cd[4]].field_0
                                idx = 160
                                s = 0
                                while stor370[cd[4]].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = stor370[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor370[cd[4]].field_8)
                    mem[ceil32(stor370[cd[4]].field_1 % 128) + 224 len ceil32(stor370[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor370[cd[4]].field_1 % 128)]
                    if ceil32(stor370[cd[4]].field_1 % 128) > stor370[cd[4]].field_1 % 128:
                        mem[stor370[cd[4]].field_1 % 128 + ceil32(stor370[cd[4]].field_1 % 128) + 224] = 0
                    return Array(len=stor370[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor370[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor370[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor370[cd[4]].field_1 % 128)]), 
                if unknown_0xba6027ee(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xba6027ee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        uint256(stor363[address(cd[4])]) = not uint8(stor363[address(cd[4])]) or Mask(248, 8, uint256(stor363[address(cd[4])]))
                    else:
                        if unknown_0xc0557691(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_46bc9d41 = cd[4]
                            emit 0xd5035c19: cd[4]
                        else:
                            if unknown_0xc1608d6b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                return sub_c1608d6b[cd[4]]
                            if uint32(call.func_hash) >> 224 != unknown_0xc21b471b(?????):
                                if unknown_0xc2ba1701(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require cd[4] == address(cd[4])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    sub_5cb1b9f3Address = address(cd[4])
                            else:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                require cd[36] == Mask(96, 0, cd[36])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if Mask(96, 0, cd[36]) > 10000:
                                    revert with 0, 'ERC2981: royalty fee will exceed salePrice'
                                if not address(cd[4]):
                                    revert with 0, 'ERC2981: invalid receiver'
                                address(stor101.field_0) = address(cd[4])
                                Mask(96, 0, stor101.field_160) = Mask(96, 0, cd[36])
                else:
                    if unknown_0xb8746e73(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b8746e73Address
                    if uint32(call.func_hash) >> 224 != unknown_0xb88d4fde(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xb90497e0(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xba58e17c(?????):
                            require not msg.value
                            return sub_ba58e17c
                        require not msg.value
                        if bool(stor365.length):
                            if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor365.length):
                                if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor365.length):
                                    if 31 < uint255(stor365.length) * 0.5:
                                        mem[160] = uint256(stor365.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor365.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor365[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor365.length), data=mem[160 len ceil32(uint255(stor365.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor365.length.field_8)
                            else:
                                if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor365.length.field_1 % 128:
                                    if 31 < stor365.length.field_1 % 128:
                                        mem[160] = uint256(stor365.field_0)
                                        idx = 160
                                        s = 0
                                        while stor365.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor365[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor365.length), data=mem[160 len ceil32(uint255(stor365.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor365.length.field_8)
                            mem[ceil32(uint255(stor365.length) * 0.5) + 224 len ceil32(uint255(stor365.length) * 0.5)] = mem[160 len ceil32(uint255(stor365.length) * 0.5)]
                            if ceil32(uint255(stor365.length) * 0.5) > uint255(stor365.length) * 0.5:
                                mem[(uint255(stor365.length) * 0.5) + ceil32(uint255(stor365.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor365.length), data=mem[160 len ceil32(uint255(stor365.length) * 0.5)], mem[(2 * ceil32(uint255(stor365.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor365.length) * 0.5)]), 
                        if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor365.length):
                            if bool(stor365.length) == uint255(stor365.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor365.length):
                                if 31 < uint255(stor365.length) * 0.5:
                                    mem[160] = uint256(stor365.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor365.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor365[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor365.length % 128, data=mem[160 len ceil32(stor365.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor365.length.field_8)
                        else:
                            if bool(stor365.length) == stor365.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor365.length.field_1 % 128:
                                if 31 < stor365.length.field_1 % 128:
                                    mem[160] = uint256(stor365.field_0)
                                    idx = 160
                                    s = 0
                                    while stor365.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor365[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor365.length % 128, data=mem[160 len ceil32(stor365.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor365.length.field_8)
                        mem[ceil32(stor365.length.field_1 % 128) + 224 len ceil32(stor365.length.field_1 % 128)] = mem[160 len ceil32(stor365.length.field_1 % 128)]
                        if ceil32(stor365.length.field_1 % 128) > stor365.length.field_1 % 128:
                            mem[stor365.length.field_1 % 128 + ceil32(stor365.length.field_1 % 128) + 224] = 0
                        return Array(len=stor365.length % 128, data=mem[160 len ceil32(stor365.length.field_1 % 128)], mem[(2 * ceil32(stor365.length.field_1 % 128)) + 224 len 2 * ceil32(stor365.length.field_1 % 128)]), 
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    if ('cd', 100).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 100).length
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: operator query for nonexistent token'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != msg.sender:
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        if approved[cd[68]] != msg.sender:
                            if not stor156[stor153[cd[68]]][address(msg.sender)]:
                                revert with 0, 'ERC721: transfer caller is not owner nor approved'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != address(cd[4]):
                        revert with 0, 'ERC721: transfer from incorrect owner'
                    if not address(cd[36]):
                        revert with 0, 'ERC721: transfer to the zero address'
                    if not address(cd[4]):
                        stor204[cd[68]] = tokenByIndex.length
                        tokenByIndex.length++
                        storA7CE[stor203.length] = cd[68]
                    else:
                        if address(cd[4]) != address(cd[36]):
                            if not address(cd[4]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            if balanceOf[address(cd[4])] < 1:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] - 1 != stor202[cd[68]]:
                                tokenOfOwnerByIndex[address(cd[4])][stor202[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1]
                                stor202[stor201[address(cd[4])][stor154[address(cd[4])] - 1]] = stor202[cd[68]]
                            stor202[cd[68]] = 0
                            tokenOfOwnerByIndex[address(cd[4])][stor154[address(cd[4])] - 1] = 0
                    if address(cd[36]):
                        if address(cd[36]) != address(cd[4]):
                            if not address(cd[36]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(cd[36])][stor154[address(cd[36])]] = cd[68]
                            stor202[cd[68]] = balanceOf[address(cd[36])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor204[cd[68]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor204[cd[68]]] = tokenByIndex[tokenByIndex.length]
                        stor204[stor203[stor203.length]] = stor204[cd[68]]
                        stor204[cd[68]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    approved[cd[68]] = 0
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[68]], 0, cd[68]);
                    if balanceOf[address(cd[4])] < 1:
                        revert with 0, 17
                    balanceOf[address(cd[4])]--
                    if balanceOf[address(cd[36])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[36])]++
                    ownerOf[cd[68]] = address(cd[36])
                    emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                    if ext_code.size(address(cd[36])):
                        mem[ceil32(ceil32(('cd', 100).length)) + 133] = msg.sender
                        mem[ceil32(ceil32(('cd', 100).length)) + 165] = address(cd[4])
                        mem[ceil32(ceil32(('cd', 100).length)) + 197] = cd[68]
                        mem[ceil32(ceil32(('cd', 100).length)) + 229] = 128
                        mem[ceil32(ceil32(('cd', 100).length)) + 261] = ('cd', 100).length
                        mem[ceil32(ceil32(('cd', 100).length)) + 293 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                            mem[('cd', 100).length + ceil32(ceil32(('cd', 100).length)) + 293] = 0
                        call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[4]), cd[68], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                        mem[ceil32(ceil32(('cd', 100).length)) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}
