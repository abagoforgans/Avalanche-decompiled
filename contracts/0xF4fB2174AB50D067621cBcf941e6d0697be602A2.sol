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
        call arg2.0x150b7a02 with:
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

function adminMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_c1608d6b[stor352 + -stor356 - 1]:
        sub_c1608d6b[arg1] = sub_c1608d6b[stor352 + -stor356 - 1]
    else:
        sub_c1608d6b[arg1] = MAX_SUPPLY + -sub_5b449c4e - 1
    staticcall sub_ac7b1c0aAddress.0xf454670b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_c1608d6b[arg1]:
        if ext_call.return_data[0]:
            stor359[stor358[arg1]] = 1
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor358[arg1]]:
            revert with 0, 'ERC721: token already minted'
        stor204[stor358[arg1]] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = sub_c1608d6b[arg1]
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[arg1]
                stor202[stor358[arg1]] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor204[stor358[arg1]] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor204[stor358[arg1]]] = tokenByIndex[tokenByIndex.length]
            stor204[stor203[stor203.length]] = stor204[stor358[arg1]]
            stor204[stor358[arg1]] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor358[arg1]] = msg.sender
        emit Transfer(0, msg.sender, sub_c1608d6b[arg1]);
    else:
        if ext_call.return_data[0]:
            stor359[arg1] = 1
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
                    revert with 0, 'ERC721: balance query for the zero address'
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
    if sub_5b449c4e == -1:
        revert with 0, 17
    sub_5b449c4e++
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
        call arg2.0x150b7a02 with:
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
                               0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
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
                               0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
                               0
                    return Array(len=2 * Mask(256, -1, stor371[arg1].field_0), data=mem[128 len ceil32(uint255(stor371[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
        if 0 == uint255(stor371[arg1].field_0) * 0.5:
            return 32, 45, 
                   0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[arg1].field_0) * 0.5) + 205 len 19] >> 104,
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
                           0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
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
                           0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
                           0
                return Array(len=stor371[arg1].field_0 % 128, data=mem[128 len ceil32(stor371[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor371[arg1].field_8)
    if 0 == stor371[arg1].field_1 % 128:
        return 32, 45, 
               0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[arg1].field_1 % 128) + 205 len 19] >> 104,
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
    idx = arg1
    while idx < arg2:
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

function reservedMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5b449c4e > !arg1:
        revert with 0, 17
    if sub_5b449c4e + arg1 < arg1:
        revert with 0, 17
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = MAX_SUPPLY - sub_5b449c4e
    while idx < arg1:
        if not s:
            revert with 0, 18
        if sub_c1608d6b[s - 1]:
            sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = sub_c1608d6b[s - 1]
        else:
            sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = s - 1
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
            if ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]:
                revert with 0, 'ERC721: token already minted'
            stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                    stor202[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]
                stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
            mem[32] = 153
            ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = msg.sender
            emit Transfer(0, msg.sender, sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]);
        else:
            if ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                revert with 0, 'ERC721: token already minted'
            stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                    stor202[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
            mem[32] = 153
            ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = msg.sender
            emit Transfer(0, msg.sender, Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s);
        idx = idx + 1
        s = s - 1
        continue 
    sub_5b449c4e += arg1
}

function sub_e59b625f(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 370
    if not bool(stor370[arg1].field_0):
        if bool(stor370[arg1].field_0) == stor370[arg1].field_1 % 128 < 32:
            revert with 0, 34
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
        mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 204] = 32
        mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 236] = mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160]:
            mem[mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268] = 0
        return Array(len=mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor370[arg1].field_1 % 128) + 128] + ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 268 len ceil32(mem[ceil32(stor370[arg1].field_1 % 128) + ceil32(s) + 160])]), 
    if bool(stor370[arg1].field_0) == uint255(stor370[arg1].field_0) * 0.5 < 32:
        revert with 0, 34
    mem[96] = uint255(stor370[arg1].field_0) * 0.5
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
                mem[0] = sha3(arg1, 370)
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
                mem[0] = sha3(arg1, 370)
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
    mem[64] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 204
    mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 204] = 32
    mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 236] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160]:
        mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268] = 0
    return Array(len=mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + 128] + ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 268 len ceil32(mem[ceil32(uint255(stor370[arg1].field_0) * 0.5) + ceil32(s) + 160])]), 
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
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = MAX_SUPPLY - sub_5b449c4e
    while idx < arg1:
        if not s:
            revert with 0, 18
        if sub_c1608d6b[s - 1]:
            sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = sub_c1608d6b[s - 1]
        else:
            sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = s - 1
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
            if ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]:
                revert with 0, 'ERC721: token already minted'
            stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                    stor202[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]
                stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
            mem[32] = 153
            ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = msg.sender
            emit Transfer(0, msg.sender, sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]);
        else:
            if ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                revert with 0, 'ERC721: token already minted'
            stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = tokenByIndex.length
            tokenByIndex.length++
            storA7CE[stor203.length] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                    stor202[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                stor204[stor203[stor203.length]] = stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
            mem[32] = 153
            ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = msg.sender
            emit Transfer(0, msg.sender, Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s);
        idx = idx + 1
        s = s - 1
        continue 
    sub_5b449c4e += arg1
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
                                    call address(cd[36]).0x150b7a02 with:
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
                                            _16100 = mem[192]
                                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                            if ceil32(_16100) > _16100:
                                                mem[_16100 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_16100) + -mem[64] + 64
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
                                        _16241 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_16241) > _16241:
                                            mem[_16241 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_16241) + -mem[64] + 64
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
                                            _25941 = mem[192]
                                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                            if ceil32(_25941) > _25941:
                                                mem[_25941 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_25941) + -mem[64] + 64
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
                                        _26081 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_26081) > _26081:
                                            mem[_26081 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_26081) + -mem[64] + 64
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
                                    _15934 = mem[192]
                                    mem[(uint255(stor366.length) * 0.5) + 33] = mem[192]
                                    mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_15934)] = mem[224 len ceil32(_15934)]
                                    if ceil32(_15934) > _15934:
                                        mem[_15934 + (uint255(stor366.length) * 0.5) + 65] = 0
                                    return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_15934) + 32]
                                if bool(stor366.length) != 1:
                                    mem[64] = 0
                                    _16110 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_16110) > _16110:
                                        mem[_16110 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_16110) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + 1] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _24190 = mem[64]
                                mem[64] = (uint255(stor366.length) * 0.5) + 1
                                mem[(uint255(stor366.length) * 0.5) + 1] = 32
                                _24708 = mem[_24190]
                                mem[(uint255(stor366.length) * 0.5) + 33] = mem[_24190]
                                mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_24708)] = mem[_24190 + 32 len ceil32(_24708)]
                                if ceil32(_24708) > _24708:
                                    mem[_24708 + (uint255(stor366.length) * 0.5) + 65] = 0
                                return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_24708) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[1] = Mask(248, 8, stor366.length)
                                mem[64] = stor366.length.field_1 % 128 + 1
                                mem[stor366.length.field_1 % 128 + 1] = 32
                                _16111 = mem[192]
                                mem[stor366.length.field_1 % 128 + 33] = mem[192]
                                mem[stor366.length.field_1 % 128 + 65 len ceil32(_16111)] = mem[224 len ceil32(_16111)]
                                if ceil32(_16111) > _16111:
                                    mem[_16111 + stor366.length.field_1 % 128 + 65] = 0
                                return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_16111) + 32]
                            if bool(stor366.length) != 1:
                                mem[64] = 0
                                _16247 = mem[192]
                                mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(_16247) > _16247:
                                    mem[_16247 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_16247) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + 1] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _24191 = mem[64]
                            mem[64] = stor366.length.field_1 % 128 + 1
                            mem[stor366.length.field_1 % 128 + 1] = 32
                            _24709 = mem[_24191]
                            mem[stor366.length.field_1 % 128 + 33] = mem[_24191]
                            mem[stor366.length.field_1 % 128 + 65 len ceil32(_24709)] = mem[_24191 + 32 len ceil32(_24709)]
                            if ceil32(_24709) > _24709:
                                mem[_24709 + stor366.length.field_1 % 128 + 65] = 0
                            return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_24709) + 32]
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
                                        _16118 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_16118) > _16118:
                                            mem[_16118 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_16118) + -mem[64] + 64
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
                                    _16251 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_16251) > _16251:
                                        mem[_16251 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_16251) + -mem[64] + 64
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
                                        _25965 = mem[192]
                                        mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                        if ceil32(_25965) > _25965:
                                            mem[_25965 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_25965) + -mem[64] + 64
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
                                    _26085 = mem[192]
                                    mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                    if ceil32(_26085) > _26085:
                                        mem[_26085 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_26085) + -mem[64] + 64
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
                                _15948 = mem[192]
                                mem[(uint255(stor366.length) * 0.5) + 33] = mem[192]
                                mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_15948)] = mem[224 len ceil32(_15948)]
                                if ceil32(_15948) > _15948:
                                    mem[_15948 + (uint255(stor366.length) * 0.5) + 65] = 0
                                return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_15948) + 32]
                            if bool(stor366.length) != 1:
                                mem[64] = 0
                                _16128 = mem[192]
                                mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                                if ceil32(_16128) > _16128:
                                    mem[_16128 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_16128) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + 1] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _24198 = mem[64]
                            mem[64] = (uint255(stor366.length) * 0.5) + 1
                            mem[(uint255(stor366.length) * 0.5) + 1] = 32
                            _24716 = mem[_24198]
                            mem[(uint255(stor366.length) * 0.5) + 33] = mem[_24198]
                            mem[(uint255(stor366.length) * 0.5) + 65 len ceil32(_24716)] = mem[_24198 + 32 len ceil32(_24716)]
                            if ceil32(_24716) > _24716:
                                mem[_24716 + (uint255(stor366.length) * 0.5) + 65] = 0
                            return 32, mem[(uint255(stor366.length) * 0.5) + 33 len ceil32(_24716) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[1] = Mask(248, 8, stor366.length)
                            mem[64] = stor366.length.field_1 % 128 + 1
                            mem[stor366.length.field_1 % 128 + 1] = 32
                            _16129 = mem[192]
                            mem[stor366.length.field_1 % 128 + 33] = mem[192]
                            mem[stor366.length.field_1 % 128 + 65 len ceil32(_16129)] = mem[224 len ceil32(_16129)]
                            if ceil32(_16129) > _16129:
                                mem[_16129 + stor366.length.field_1 % 128 + 65] = 0
                            return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_16129) + 32]
                        if bool(stor366.length) != 1:
                            mem[64] = 0
                            _16257 = mem[192]
                            mem[64 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                            if ceil32(_16257) > _16257:
                                mem[_16257 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_16257) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + 1] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _24199 = mem[64]
                        mem[64] = stor366.length.field_1 % 128 + 1
                        mem[stor366.length.field_1 % 128 + 1] = 32
                        _24717 = mem[_24199]
                        mem[stor366.length.field_1 % 128 + 33] = mem[_24199]
                        mem[stor366.length.field_1 % 128 + 65 len ceil32(_24717)] = mem[_24199 + 32 len ceil32(_24717)]
                        if ceil32(_24717) > _24717:
                            mem[_24717 + stor366.length.field_1 % 128 + 65] = 0
                        return 32, mem[stor366.length.field_1 % 128 + 33 len ceil32(_24717) + 32]
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
                        _24080 = mem[64]
                        if bool(stor364.length):
                            if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor364.length):
                                mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                                _24896 = mem[128]
                                mem[mem[64] + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(_24896) <= _24896:
                                    if bool(stor366.length):
                                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor366.length):
                                            mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = Mask(248, 8, stor366.length)
                                            _32664 = mem[64]
                                            mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32
                                            mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32] = 32
                                            _32864 = mem[_32664]
                                            mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64] = mem[_32664]
                                            mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32864)] = mem[_32664 + 32 len ceil32(_32864)]
                                            if ceil32(_32864) > _32864:
                                                mem[_32864 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96] = 0
                                            return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32864) + 32], 
                                        if bool(stor366.length) != 1:
                                            _32745 = mem[64]
                                            mem[64] = 0
                                            mem[0] = 32
                                            _32921 = mem[_32745]
                                            mem[32] = mem[_32745]
                                            mem[64 len ceil32(_32921)] = mem[_32745 + 32 len ceil32(_32921)]
                                            if ceil32(_32921) > _32921:
                                                mem[_32921 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_32921) + -mem[64] + 64
                                        mem[0] = 366
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = stor366[s].field_0
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        _35236 = mem[64]
                                        mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _35716 = mem[_35236]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64] = mem[_35236]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35716)] = mem[_35236 + 32 len ceil32(_35716)]
                                        if ceil32(_35716) > _35716:
                                            mem[_35716 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35716) + 32], 
                                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = Mask(248, 8, stor366.length)
                                        _32746 = mem[64]
                                        mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32] = 32
                                        _32922 = mem[_32746]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64] = mem[_32746]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96 len ceil32(_32922)] = mem[_32746 + 32 len ceil32(_32922)]
                                        if ceil32(_32922) > _32922:
                                            mem[_32922 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96] = 0
                                        return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64 len ceil32(_32922) + 32]
                                    if bool(stor366.length) != 1:
                                        _32802 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _33145 = mem[_32802]
                                        mem[32] = mem[_32802]
                                        mem[64 len ceil32(_33145)] = mem[_32802 + 32 len ceil32(_33145)]
                                        if ceil32(_33145) > _33145:
                                            mem[_33145 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_33145) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35237 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32] = 32
                                    _35717 = mem[_35237]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64] = mem[_35237]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96 len ceil32(_35717)] = mem[_35237 + 32 len ceil32(_35717)]
                                    if ceil32(_35717) > _35717:
                                        mem[_35717 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64 len ceil32(_35717) + 32]
                                mem[_24896 + _24080 + (uint255(stor364.length) * 0.5) + 32] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = Mask(248, 8, stor366.length)
                                        _32665 = mem[64]
                                        mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _32867 = mem[_32665]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64] = mem[_32665]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32867)] = mem[_32665 + 32 len ceil32(_32867)]
                                        if ceil32(_32867) > _32867:
                                            mem[_32867 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32867) + 32], 
                                    if bool(stor366.length) != 1:
                                        _32748 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32925 = mem[_32748]
                                        mem[32] = mem[_32748]
                                        mem[64 len ceil32(_32925)] = mem[_32748 + 32 len ceil32(_32925)]
                                        if ceil32(_32925) > _32925:
                                            mem[_32925 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32925) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35238 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _35718 = mem[_35238]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64] = mem[_35238]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35718)] = mem[_35238 + 32 len ceil32(_35718)]
                                    if ceil32(_35718) > _35718:
                                        mem[_35718 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35718) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = Mask(248, 8, stor366.length)
                                    _32749 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32] = 32
                                    _32926 = mem[_32749]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64] = mem[_32749]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96 len ceil32(_32926)] = mem[_32749 + 32 len ceil32(_32926)]
                                    if ceil32(_32926) > _32926:
                                        mem[_32926 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64 len ceil32(_32926) + 32]
                                if bool(stor366.length) != 1:
                                    _32805 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33147 = mem[_32805]
                                    mem[32] = mem[_32805]
                                    mem[64 len ceil32(_33147)] = mem[_32805 + 32 len ceil32(_33147)]
                                    if ceil32(_33147) > _33147:
                                        mem[_33147 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33147) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _24896 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35239 = mem[64]
                                mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 32] = 32
                                _35719 = mem[_35239]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64] = mem[_35239]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96 len ceil32(_35719)] = mem[_35239 + 32 len ceil32(_35719)]
                                if ceil32(_35719) > _35719:
                                    mem[_35719 + _24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _24896 + stor366.length.field_1 % 128 + 64 len ceil32(_35719) + 32]
                            if bool(stor364.length) != 1:
                                _25110 = mem[128]
                                mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(_25110) <= _25110:
                                    if bool(stor366.length):
                                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor366.length):
                                            mem[_25110] = Mask(248, 8, stor366.length)
                                            _32666 = mem[64]
                                            mem[64] = _25110 + (uint255(stor366.length) * 0.5)
                                            mem[_25110 + (uint255(stor366.length) * 0.5)] = 32
                                            _32872 = mem[_32666]
                                            mem[_25110 + (uint255(stor366.length) * 0.5) + 32] = mem[_32666]
                                            mem[_25110 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32872)] = mem[_32666 + 32 len ceil32(_32872)]
                                            if ceil32(_32872) > _32872:
                                                mem[_32872 + _25110 + (uint255(stor366.length) * 0.5) + 64] = 0
                                            return 32, mem[_25110 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32872) + 32]
                                        if bool(stor366.length) != 1:
                                            _32751 = mem[64]
                                            mem[64] = 0
                                            mem[0] = 32
                                            _32931 = mem[_32751]
                                            mem[32] = mem[_32751]
                                            mem[64 len ceil32(_32931)] = mem[_32751 + 32 len ceil32(_32931)]
                                            if ceil32(_32931) > _32931:
                                                mem[_32931 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_32931) + -mem[64] + 64
                                        mem[0] = 366
                                        idx = 0
                                        s = 0
                                        while idx < uint255(stor366.length) * 0.5:
                                            mem[idx + _25110] = stor[s + sha3(mem[0])]
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        _35240 = mem[64]
                                        mem[64] = _25110 + (uint255(stor366.length) * 0.5)
                                        mem[_25110 + (uint255(stor366.length) * 0.5)] = 32
                                        _35720 = mem[_35240]
                                        mem[_25110 + (uint255(stor366.length) * 0.5) + 32] = mem[_35240]
                                        mem[_25110 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35720)] = mem[_35240 + 32 len ceil32(_35720)]
                                        if ceil32(_35720) > _35720:
                                            mem[_35720 + _25110 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_25110 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35720) + 32]
                                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_25110] = Mask(248, 8, stor366.length)
                                        _32752 = mem[64]
                                        mem[64] = _25110 + stor366.length.field_1 % 128
                                        mem[_25110 + stor366.length.field_1 % 128] = 32
                                        _32932 = mem[_32752]
                                        mem[_25110 + stor366.length.field_1 % 128 + 32] = mem[_32752]
                                        mem[_25110 + stor366.length.field_1 % 128 + 64 len ceil32(_32932)] = mem[_32752 + 32 len ceil32(_32932)]
                                        if ceil32(_32932) > _32932:
                                            mem[_32932 + _25110 + stor366.length.field_1 % 128 + 64] = 0
                                        return 32, mem[_25110 + stor366.length.field_1 % 128 + 32 len ceil32(_32932) + 32]
                                    if bool(stor366.length) != 1:
                                        _32808 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _33151 = mem[_32808]
                                        mem[32] = mem[_32808]
                                        mem[64 len ceil32(_33151)] = mem[_32808 + 32 len ceil32(_33151)]
                                        if ceil32(_33151) > _33151:
                                            mem[_33151 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_33151) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < stor366.length.field_1 % 128:
                                        mem[idx + _25110] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35241 = mem[64]
                                    mem[64] = _25110 + stor366.length.field_1 % 128
                                    mem[_25110 + stor366.length.field_1 % 128] = 32
                                    _35721 = mem[_35241]
                                    mem[_25110 + stor366.length.field_1 % 128 + 32] = mem[_35241]
                                    mem[_25110 + stor366.length.field_1 % 128 + 64 len ceil32(_35721)] = mem[_35241 + 32 len ceil32(_35721)]
                                    if ceil32(_35721) > _35721:
                                        mem[_35721 + _25110 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_25110 + stor366.length.field_1 % 128 + 32 len ceil32(_35721) + 32]
                                mem[_25110] = 0
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_25110] = Mask(248, 8, stor366.length)
                                        _32667 = mem[64]
                                        mem[64] = _25110 + (uint255(stor366.length) * 0.5)
                                        mem[_25110 + (uint255(stor366.length) * 0.5)] = 32
                                        _32875 = mem[_32667]
                                        mem[_25110 + (uint255(stor366.length) * 0.5) + 32] = mem[_32667]
                                        mem[_25110 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32875)] = mem[_32667 + 32 len ceil32(_32875)]
                                        if ceil32(_32875) > _32875:
                                            mem[_32875 + _25110 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_25110 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32875) + 32]
                                    if bool(stor366.length) != 1:
                                        _32754 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32935 = mem[_32754]
                                        mem[32] = mem[_32754]
                                        mem[64 len ceil32(_32935)] = mem[_32754 + 32 len ceil32(_32935)]
                                        if ceil32(_32935) > _32935:
                                            mem[_32935 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32935) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _25110] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35242 = mem[64]
                                    mem[64] = _25110 + (uint255(stor366.length) * 0.5)
                                    mem[_25110 + (uint255(stor366.length) * 0.5)] = 32
                                    _35722 = mem[_35242]
                                    mem[_25110 + (uint255(stor366.length) * 0.5) + 32] = mem[_35242]
                                    mem[_25110 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35722)] = mem[_35242 + 32 len ceil32(_35722)]
                                    if ceil32(_35722) > _35722:
                                        mem[_35722 + _25110 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25110 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35722) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25110] = Mask(248, 8, stor366.length)
                                    _32755 = mem[64]
                                    mem[64] = _25110 + stor366.length.field_1 % 128
                                    mem[_25110 + stor366.length.field_1 % 128] = 32
                                    _32936 = mem[_32755]
                                    mem[_25110 + stor366.length.field_1 % 128 + 32] = mem[_32755]
                                    mem[_25110 + stor366.length.field_1 % 128 + 64 len ceil32(_32936)] = mem[_32755 + 32 len ceil32(_32936)]
                                    if ceil32(_32936) > _32936:
                                        mem[_32936 + _25110 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_25110 + stor366.length.field_1 % 128 + 32 len ceil32(_32936) + 32]
                                if bool(stor366.length) != 1:
                                    _32811 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33153 = mem[_32811]
                                    mem[32] = mem[_32811]
                                    mem[64 len ceil32(_33153)] = mem[_32811 + 32 len ceil32(_33153)]
                                    if ceil32(_33153) > _33153:
                                        mem[_33153 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33153) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _25110] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35243 = mem[64]
                                mem[64] = _25110 + stor366.length.field_1 % 128
                                mem[_25110 + stor366.length.field_1 % 128] = 32
                                _35723 = mem[_35243]
                                mem[_25110 + stor366.length.field_1 % 128 + 32] = mem[_35243]
                                mem[_25110 + stor366.length.field_1 % 128 + 64 len ceil32(_35723)] = mem[_35243 + 32 len ceil32(_35723)]
                                if ceil32(_35723) > _35723:
                                    mem[_35723 + _25110 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25110 + stor366.length.field_1 % 128 + 32 len ceil32(_35723) + 32]
                            mem[0] = 364
                            idx = 0
                            s = 0
                            while idx < uint255(stor364.length) * 0.5:
                                mem[idx + _24080 + 32] = stor364[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _32020 = mem[128]
                            mem[_24080 + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_32020) <= _32020:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = Mask(248, 8, stor366.length)
                                        _35840 = mem[64]
                                        mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _36084 = mem[_35840]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64] = mem[_35840]
                                        mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36084)] = mem[_35840 + 32 len ceil32(_36084)]
                                        if ceil32(_36084) > _36084:
                                            mem[_36084 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36084) + 32], 
                                    if bool(stor366.length) != 1:
                                        _35893 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _36117 = mem[_35893]
                                        mem[32] = mem[_35893]
                                        mem[64 len ceil32(_36117)] = mem[_35893 + 32 len ceil32(_36117)]
                                        if ceil32(_36117) > _36117:
                                            mem[_36117 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_36117) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _37348 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _37748 = mem[_37348]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64] = mem[_37348]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37748)] = mem[_37348 + 32 len ceil32(_37748)]
                                    if ceil32(_37748) > _37748:
                                        mem[_37748 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37748) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = Mask(248, 8, stor366.length)
                                    _35894 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32] = 32
                                    _36118 = mem[_35894]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64] = mem[_35894]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96 len ceil32(_36118)] = mem[_35894 + 32 len ceil32(_36118)]
                                    if ceil32(_36118) > _36118:
                                        mem[_36118 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64 len ceil32(_36118) + 32]
                                if bool(stor366.length) != 1:
                                    _35990 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _36285 = mem[_35990]
                                    mem[32] = mem[_35990]
                                    mem[64 len ceil32(_36285)] = mem[_35990 + 32 len ceil32(_36285)]
                                    if ceil32(_36285) > _36285:
                                        mem[_36285 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_36285) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _37349 = mem[64]
                                mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32] = 32
                                _37749 = mem[_37349]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64] = mem[_37349]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96 len ceil32(_37749)] = mem[_37349 + 32 len ceil32(_37749)]
                                if ceil32(_37749) > _37749:
                                    mem[_37749 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64 len ceil32(_37749) + 32]
                            mem[_32020 + _24080 + (uint255(stor364.length) * 0.5) + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = Mask(248, 8, stor366.length)
                                    _35841 = mem[64]
                                    mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _36087 = mem[_35841]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64] = mem[_35841]
                                    mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36087)] = mem[_35841 + 32 len ceil32(_36087)]
                                    if ceil32(_36087) > _36087:
                                        mem[_36087 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36087) + 32], 
                                if bool(stor366.length) != 1:
                                    _35896 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _36121 = mem[_35896]
                                    mem[32] = mem[_35896]
                                    mem[64 len ceil32(_36121)] = mem[_35896 + 32 len ceil32(_36121)]
                                    if ceil32(_36121) > _36121:
                                        mem[_36121 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_36121) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _37350 = mem[64]
                                mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _37750 = mem[_37350]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64] = mem[_37350]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37750)] = mem[_37350 + 32 len ceil32(_37750)]
                                if ceil32(_37750) > _37750:
                                    mem[_37750 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37750) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = Mask(248, 8, stor366.length)
                                _35897 = mem[64]
                                mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32] = 32
                                _36122 = mem[_35897]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64] = mem[_35897]
                                mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96 len ceil32(_36122)] = mem[_35897 + 32 len ceil32(_36122)]
                                if ceil32(_36122) > _36122:
                                    mem[_36122 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64 len ceil32(_36122) + 32]
                            if bool(stor366.length) != 1:
                                _35993 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36287 = mem[_35993]
                                mem[32] = mem[_35993]
                                mem[64 len ceil32(_36287)] = mem[_35993 + 32 len ceil32(_36287)]
                                if ceil32(_36287) > _36287:
                                    mem[_36287 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36287) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24080 + (uint255(stor364.length) * 0.5) + _32020 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37351 = mem[64]
                            mem[64] = _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32
                            mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 32] = 32
                            _37751 = mem[_37351]
                            mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64] = mem[_37351]
                            mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96 len ceil32(_37751)] = mem[_37351 + 32 len ceil32(_37751)]
                            if ceil32(_37751) > _37751:
                                mem[_37751 + _24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24080 + (uint255(stor364.length) * 0.5) + _32020 + stor366.length.field_1 % 128 + 64 len ceil32(_37751) + 32]
                        if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor364.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                            _25111 = mem[128]
                            mem[mem[64] + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_25111) <= _25111:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[mem[64] + stor364.length.field_1 % 128 + _25111 + 32] = Mask(248, 8, stor366.length)
                                        _32668 = mem[64]
                                        mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _32878 = mem[_32668]
                                        mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64] = mem[_32668]
                                        mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32878)] = mem[_32668 + 32 len ceil32(_32878)]
                                        if ceil32(_32878) > _32878:
                                            mem[_32878 + _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32878) + 32]
                                    if bool(stor366.length) != 1:
                                        _32757 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32939 = mem[_32757]
                                        mem[32] = mem[_32757]
                                        mem[64 len ceil32(_32939)] = mem[_32757 + 32 len ceil32(_32939)]
                                        if ceil32(_32939) > _32939:
                                            mem[_32939 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32939) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _24080 + stor364.length.field_1 % 128 + _25111 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35244 = mem[64]
                                    mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _35724 = mem[_35244]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64] = mem[_35244]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35724)] = mem[_35244 + 32 len ceil32(_35724)]
                                    if ceil32(_35724) > _35724:
                                        mem[_35724 + _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35724) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[mem[64] + stor364.length.field_1 % 128 + _25111 + 32] = Mask(248, 8, stor366.length)
                                    _32758 = mem[64]
                                    mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32] = 32
                                    _32940 = mem[_32758]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64] = mem[_32758]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96 len ceil32(_32940)] = mem[_32758 + 32 len ceil32(_32940)]
                                    if ceil32(_32940) > _32940:
                                        mem[_32940 + _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64 len ceil32(_32940) + 32]
                                if bool(stor366.length) != 1:
                                    _32814 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33155 = mem[_32814]
                                    mem[32] = mem[_32814]
                                    mem[64 len ceil32(_33155)] = mem[_32814 + 32 len ceil32(_33155)]
                                    if ceil32(_33155) > _33155:
                                        mem[_33155 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33155) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _24080 + stor364.length.field_1 % 128 + _25111 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35245 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32] = 32
                                _35725 = mem[_35245]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64] = mem[_35245]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96 len ceil32(_35725)] = mem[_35245 + 32 len ceil32(_35725)]
                                if ceil32(_35725) > _35725:
                                    mem[_35725 + _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64 len ceil32(_35725) + 32]
                            mem[_25111 + mem[64] + stor364.length.field_1 % 128 + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + 32] = Mask(248, 8, stor366.length)
                                    _32669 = mem[64]
                                    mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _32881 = mem[_32669]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64] = mem[_32669]
                                    mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32881)] = mem[_32669 + 32 len ceil32(_32881)]
                                    if ceil32(_32881) > _32881:
                                        mem[_32881 + _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32881) + 32]
                                if bool(stor366.length) != 1:
                                    _32760 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32943 = mem[_32760]
                                    mem[32] = mem[_32760]
                                    mem[64 len ceil32(_32943)] = mem[_32760 + 32 len ceil32(_32943)]
                                    if ceil32(_32943) > _32943:
                                        mem[_32943 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32943) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24080 + stor364.length.field_1 % 128 + _25111 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35246 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _35726 = mem[_35246]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64] = mem[_35246]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35726)] = mem[_35246 + 32 len ceil32(_35726)]
                                if ceil32(_35726) > _35726:
                                    mem[_35726 + _24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35726) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + 32] = Mask(248, 8, stor366.length)
                                _32761 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32] = 32
                                _32944 = mem[_32761]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64] = mem[_32761]
                                mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96 len ceil32(_32944)] = mem[_32761 + 32 len ceil32(_32944)]
                                if ceil32(_32944) > _32944:
                                    mem[_32944 + _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64 len ceil32(_32944) + 32]
                            if bool(stor366.length) != 1:
                                _32817 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33157 = mem[_32817]
                                mem[32] = mem[_32817]
                                mem[64 len ceil32(_33157)] = mem[_32817 + 32 len ceil32(_33157)]
                                if ceil32(_33157) > _33157:
                                    mem[_33157 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33157) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24080 + stor364.length.field_1 % 128 + _25111 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35247 = mem[64]
                            mem[64] = _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32
                            mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 32] = 32
                            _35727 = mem[_35247]
                            mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64] = mem[_35247]
                            mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96 len ceil32(_35727)] = mem[_35247 + 32 len ceil32(_35727)]
                            if ceil32(_35727) > _35727:
                                mem[_35727 + _24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24080 + stor364.length.field_1 % 128 + _25111 + stor366.length.field_1 % 128 + 64 len ceil32(_35727) + 32]
                        if bool(stor364.length) != 1:
                            _25470 = mem[128]
                            mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_25470) <= _25470:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_25470] = Mask(248, 8, stor366.length)
                                        _32670 = mem[64]
                                        mem[64] = _25470 + (uint255(stor366.length) * 0.5)
                                        mem[_25470 + (uint255(stor366.length) * 0.5)] = 32
                                        _32886 = mem[_32670]
                                        mem[_25470 + (uint255(stor366.length) * 0.5) + 32] = mem[_32670]
                                        mem[_25470 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32886)] = mem[_32670 + 32 len ceil32(_32886)]
                                        if ceil32(_32886) > _32886:
                                            mem[_32886 + _25470 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_25470 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32886) + 32]
                                    if bool(stor366.length) != 1:
                                        _32763 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32949 = mem[_32763]
                                        mem[32] = mem[_32763]
                                        mem[64 len ceil32(_32949)] = mem[_32763 + 32 len ceil32(_32949)]
                                        if ceil32(_32949) > _32949:
                                            mem[_32949 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32949) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _25470] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35248 = mem[64]
                                    mem[64] = _25470 + (uint255(stor366.length) * 0.5)
                                    mem[_25470 + (uint255(stor366.length) * 0.5)] = 32
                                    _35728 = mem[_35248]
                                    mem[_25470 + (uint255(stor366.length) * 0.5) + 32] = mem[_35248]
                                    mem[_25470 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35728)] = mem[_35248 + 32 len ceil32(_35728)]
                                    if ceil32(_35728) > _35728:
                                        mem[_35728 + _25470 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25470 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35728) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25470] = Mask(248, 8, stor366.length)
                                    _32764 = mem[64]
                                    mem[64] = _25470 + stor366.length.field_1 % 128
                                    mem[_25470 + stor366.length.field_1 % 128] = 32
                                    _32950 = mem[_32764]
                                    mem[_25470 + stor366.length.field_1 % 128 + 32] = mem[_32764]
                                    mem[_25470 + stor366.length.field_1 % 128 + 64 len ceil32(_32950)] = mem[_32764 + 32 len ceil32(_32950)]
                                    if ceil32(_32950) > _32950:
                                        mem[_32950 + _25470 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_25470 + stor366.length.field_1 % 128 + 32 len ceil32(_32950) + 32]
                                if bool(stor366.length) != 1:
                                    _32820 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33161 = mem[_32820]
                                    mem[32] = mem[_32820]
                                    mem[64 len ceil32(_33161)] = mem[_32820 + 32 len ceil32(_33161)]
                                    if ceil32(_33161) > _33161:
                                        mem[_33161 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33161) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _25470] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35249 = mem[64]
                                mem[64] = _25470 + stor366.length.field_1 % 128
                                mem[_25470 + stor366.length.field_1 % 128] = 32
                                _35729 = mem[_35249]
                                mem[_25470 + stor366.length.field_1 % 128 + 32] = mem[_35249]
                                mem[_25470 + stor366.length.field_1 % 128 + 64 len ceil32(_35729)] = mem[_35249 + 32 len ceil32(_35729)]
                                if ceil32(_35729) > _35729:
                                    mem[_35729 + _25470 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25470 + stor366.length.field_1 % 128 + 32 len ceil32(_35729) + 32]
                            mem[_25470] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25470] = Mask(248, 8, stor366.length)
                                    _32671 = mem[64]
                                    mem[64] = _25470 + (uint255(stor366.length) * 0.5)
                                    mem[_25470 + (uint255(stor366.length) * 0.5)] = 32
                                    _32889 = mem[_32671]
                                    mem[_25470 + (uint255(stor366.length) * 0.5) + 32] = mem[_32671]
                                    mem[_25470 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32889)] = mem[_32671 + 32 len ceil32(_32889)]
                                    if ceil32(_32889) > _32889:
                                        mem[_32889 + _25470 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25470 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32889) + 32]
                                if bool(stor366.length) != 1:
                                    _32766 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32953 = mem[_32766]
                                    mem[32] = mem[_32766]
                                    mem[64 len ceil32(_32953)] = mem[_32766 + 32 len ceil32(_32953)]
                                    if ceil32(_32953) > _32953:
                                        mem[_32953 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32953) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _25470] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35250 = mem[64]
                                mem[64] = _25470 + (uint255(stor366.length) * 0.5)
                                mem[_25470 + (uint255(stor366.length) * 0.5)] = 32
                                _35730 = mem[_35250]
                                mem[_25470 + (uint255(stor366.length) * 0.5) + 32] = mem[_35250]
                                mem[_25470 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35730)] = mem[_35250 + 32 len ceil32(_35730)]
                                if ceil32(_35730) > _35730:
                                    mem[_35730 + _25470 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_25470 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35730) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_25470] = Mask(248, 8, stor366.length)
                                _32767 = mem[64]
                                mem[64] = _25470 + stor366.length.field_1 % 128
                                mem[_25470 + stor366.length.field_1 % 128] = 32
                                _32954 = mem[_32767]
                                mem[_25470 + stor366.length.field_1 % 128 + 32] = mem[_32767]
                                mem[_25470 + stor366.length.field_1 % 128 + 64 len ceil32(_32954)] = mem[_32767 + 32 len ceil32(_32954)]
                                if ceil32(_32954) > _32954:
                                    mem[_32954 + _25470 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25470 + stor366.length.field_1 % 128 + 32 len ceil32(_32954) + 32]
                            if bool(stor366.length) != 1:
                                _32823 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33163 = mem[_32823]
                                mem[32] = mem[_32823]
                                mem[64 len ceil32(_33163)] = mem[_32823 + 32 len ceil32(_33163)]
                                if ceil32(_33163) > _33163:
                                    mem[_33163 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33163) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _25470] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35251 = mem[64]
                            mem[64] = _25470 + stor366.length.field_1 % 128
                            mem[_25470 + stor366.length.field_1 % 128] = 32
                            _35731 = mem[_35251]
                            mem[_25470 + stor366.length.field_1 % 128 + 32] = mem[_35251]
                            mem[_25470 + stor366.length.field_1 % 128 + 64 len ceil32(_35731)] = mem[_35251 + 32 len ceil32(_35731)]
                            if ceil32(_35731) > _35731:
                                mem[_35731 + _25470 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_25470 + stor366.length.field_1 % 128 + 32 len ceil32(_35731) + 32]
                        mem[0] = 364
                        idx = 0
                        s = 0
                        while idx < stor364.length.field_1 % 128:
                            mem[idx + _24080 + 32] = stor364[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _32021 = mem[128]
                        mem[_24080 + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_32021) <= _32021:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24080 + stor364.length.field_1 % 128 + _32021 + 32] = Mask(248, 8, stor366.length)
                                    _35850 = mem[64]
                                    mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _36090 = mem[_35850]
                                    mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64] = mem[_35850]
                                    mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36090)] = mem[_35850 + 32 len ceil32(_36090)]
                                    if ceil32(_36090) > _36090:
                                        mem[_36090 + _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36090) + 32]
                                if bool(stor366.length) != 1:
                                    _35899 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _36141 = mem[_35899]
                                    mem[32] = mem[_35899]
                                    mem[64 len ceil32(_36141)] = mem[_35899 + 32 len ceil32(_36141)]
                                    if ceil32(_36141) > _36141:
                                        mem[_36141 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_36141) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24080 + stor364.length.field_1 % 128 + _32021 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _37352 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _37752 = mem[_37352]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64] = mem[_37352]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37752)] = mem[_37352 + 32 len ceil32(_37752)]
                                if ceil32(_37752) > _37752:
                                    mem[_37752 + _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37752) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + 32] = Mask(248, 8, stor366.length)
                                _35900 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32] = 32
                                _36142 = mem[_35900]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64] = mem[_35900]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96 len ceil32(_36142)] = mem[_35900 + 32 len ceil32(_36142)]
                                if ceil32(_36142) > _36142:
                                    mem[_36142 + _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64 len ceil32(_36142) + 32]
                            if bool(stor366.length) != 1:
                                _35996 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36289 = mem[_35996]
                                mem[32] = mem[_35996]
                                mem[64 len ceil32(_36289)] = mem[_35996 + 32 len ceil32(_36289)]
                                if ceil32(_36289) > _36289:
                                    mem[_36289 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36289) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24080 + stor364.length.field_1 % 128 + _32021 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37353 = mem[64]
                            mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32] = 32
                            _37753 = mem[_37353]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64] = mem[_37353]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96 len ceil32(_37753)] = mem[_37353 + 32 len ceil32(_37753)]
                            if ceil32(_37753) > _37753:
                                mem[_37753 + _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64 len ceil32(_37753) + 32]
                        mem[_32021 + _24080 + stor364.length.field_1 % 128 + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + 32] = Mask(248, 8, stor366.length)
                                _35851 = mem[64]
                                mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _36093 = mem[_35851]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64] = mem[_35851]
                                mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36093)] = mem[_35851 + 32 len ceil32(_36093)]
                                if ceil32(_36093) > _36093:
                                    mem[_36093 + _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36093) + 32]
                            if bool(stor366.length) != 1:
                                _35902 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36145 = mem[_35902]
                                mem[32] = mem[_35902]
                                mem[64 len ceil32(_36145)] = mem[_35902 + 32 len ceil32(_36145)]
                                if ceil32(_36145) > _36145:
                                    mem[_36145 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36145) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _24080 + stor364.length.field_1 % 128 + _32021 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37354 = mem[64]
                            mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _37754 = mem[_37354]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64] = mem[_37354]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37754)] = mem[_37354 + 32 len ceil32(_37754)]
                            if ceil32(_37754) > _37754:
                                mem[_37754 + _24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37754) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + 32] = Mask(248, 8, stor366.length)
                            _35903 = mem[64]
                            mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32] = 32
                            _36146 = mem[_35903]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64] = mem[_35903]
                            mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96 len ceil32(_36146)] = mem[_35903 + 32 len ceil32(_36146)]
                            if ceil32(_36146) > _36146:
                                mem[_36146 + _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64 len ceil32(_36146) + 32]
                        if bool(stor366.length) != 1:
                            _35999 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _36291 = mem[_35999]
                            mem[32] = mem[_35999]
                            mem[64 len ceil32(_36291)] = mem[_35999 + 32 len ceil32(_36291)]
                            if ceil32(_36291) > _36291:
                                mem[_36291 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_36291) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _24080 + stor364.length.field_1 % 128 + _32021 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _37355 = mem[64]
                        mem[64] = _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32
                        mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 32] = 32
                        _37755 = mem[_37355]
                        mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64] = mem[_37355]
                        mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96 len ceil32(_37755)] = mem[_37355 + 32 len ceil32(_37755)]
                        if ceil32(_37755) > _37755:
                            mem[_37755 + _24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_24080 + stor364.length.field_1 % 128 + _32021 + stor366.length.field_1 % 128 + 64 len ceil32(_37755) + 32]
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
                    _24081 = mem[64]
                    if bool(stor364.length):
                        if bool(stor364.length) == uint255(stor364.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor364.length):
                            mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                            _24898 = mem[128]
                            mem[mem[64] + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_24898) <= _24898:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = Mask(248, 8, stor366.length)
                                        _32672 = mem[64]
                                        mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32
                                        mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32] = 32
                                        _32892 = mem[_32672]
                                        mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64] = mem[_32672]
                                        mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32892)] = mem[_32672 + 32 len ceil32(_32892)]
                                        if ceil32(_32892) > _32892:
                                            mem[_32892 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96] = 0
                                        return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32892) + 32], 
                                    if bool(stor366.length) != 1:
                                        _32769 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32957 = mem[_32769]
                                        mem[32] = mem[_32769]
                                        mem[64 len ceil32(_32957)] = mem[_32769 + 32 len ceil32(_32957)]
                                        if ceil32(_32957) > _32957:
                                            mem[_32957 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32957) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = stor366[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35252 = mem[64]
                                    mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _35732 = mem[_35252]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64] = mem[_35252]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35732)] = mem[_35252 + 32 len ceil32(_35732)]
                                    if ceil32(_35732) > _35732:
                                        mem[_35732 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35732) + 32], 
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = Mask(248, 8, stor366.length)
                                    _32770 = mem[64]
                                    mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32] = 32
                                    _32958 = mem[_32770]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64] = mem[_32770]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96 len ceil32(_32958)] = mem[_32770 + 32 len ceil32(_32958)]
                                    if ceil32(_32958) > _32958:
                                        mem[_32958 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96] = 0
                                    return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64 len ceil32(_32958) + 32]
                                if bool(stor366.length) != 1:
                                    _32826 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33165 = mem[_32826]
                                    mem[32] = mem[_32826]
                                    mem[64 len ceil32(_33165)] = mem[_32826 + 32 len ceil32(_33165)]
                                    if ceil32(_33165) > _33165:
                                        mem[_33165 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33165) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35253 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32] = 32
                                _35733 = mem[_35253]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64] = mem[_35253]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96 len ceil32(_35733)] = mem[_35253 + 32 len ceil32(_35733)]
                                if ceil32(_35733) > _35733:
                                    mem[_35733 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64 len ceil32(_35733) + 32]
                            mem[_24898 + _24081 + (uint255(stor364.length) * 0.5) + 32] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = Mask(248, 8, stor366.length)
                                    _32673 = mem[64]
                                    mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _32895 = mem[_32673]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64] = mem[_32673]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32895)] = mem[_32673 + 32 len ceil32(_32895)]
                                    if ceil32(_32895) > _32895:
                                        mem[_32895 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32895) + 32], 
                                if bool(stor366.length) != 1:
                                    _32772 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32961 = mem[_32772]
                                    mem[32] = mem[_32772]
                                    mem[64 len ceil32(_32961)] = mem[_32772 + 32 len ceil32(_32961)]
                                    if ceil32(_32961) > _32961:
                                        mem[_32961 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32961) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35254 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _35734 = mem[_35254]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64] = mem[_35254]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35734)] = mem[_35254 + 32 len ceil32(_35734)]
                                if ceil32(_35734) > _35734:
                                    mem[_35734 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35734) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = Mask(248, 8, stor366.length)
                                _32773 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32] = 32
                                _32962 = mem[_32773]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64] = mem[_32773]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96 len ceil32(_32962)] = mem[_32773 + 32 len ceil32(_32962)]
                                if ceil32(_32962) > _32962:
                                    mem[_32962 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64 len ceil32(_32962) + 32]
                            if bool(stor366.length) != 1:
                                _32829 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33167 = mem[_32829]
                                mem[32] = mem[_32829]
                                mem[64 len ceil32(_33167)] = mem[_32829 + 32 len ceil32(_33167)]
                                if ceil32(_33167) > _33167:
                                    mem[_33167 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33167) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _24898 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35255 = mem[64]
                            mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 32] = 32
                            _35735 = mem[_35255]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64] = mem[_35255]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96 len ceil32(_35735)] = mem[_35255 + 32 len ceil32(_35735)]
                            if ceil32(_35735) > _35735:
                                mem[_35735 + _24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _24898 + stor366.length.field_1 % 128 + 64 len ceil32(_35735) + 32]
                        if bool(stor364.length) != 1:
                            _25113 = mem[128]
                            mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_25113) <= _25113:
                                if bool(stor366.length):
                                    if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor366.length):
                                        mem[_25113] = Mask(248, 8, stor366.length)
                                        _32674 = mem[64]
                                        mem[64] = _25113 + (uint255(stor366.length) * 0.5)
                                        mem[_25113 + (uint255(stor366.length) * 0.5)] = 32
                                        _32900 = mem[_32674]
                                        mem[_25113 + (uint255(stor366.length) * 0.5) + 32] = mem[_32674]
                                        mem[_25113 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32900)] = mem[_32674 + 32 len ceil32(_32900)]
                                        if ceil32(_32900) > _32900:
                                            mem[_32900 + _25113 + (uint255(stor366.length) * 0.5) + 64] = 0
                                        return 32, mem[_25113 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32900) + 32]
                                    if bool(stor366.length) != 1:
                                        _32775 = mem[64]
                                        mem[64] = 0
                                        mem[0] = 32
                                        _32967 = mem[_32775]
                                        mem[32] = mem[_32775]
                                        mem[64 len ceil32(_32967)] = mem[_32775 + 32 len ceil32(_32967)]
                                        if ceil32(_32967) > _32967:
                                            mem[_32967 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_32967) + -mem[64] + 64
                                    mem[0] = 366
                                    idx = 0
                                    s = 0
                                    while idx < uint255(stor366.length) * 0.5:
                                        mem[idx + _25113] = stor[s + sha3(mem[0])]
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    _35256 = mem[64]
                                    mem[64] = _25113 + (uint255(stor366.length) * 0.5)
                                    mem[_25113 + (uint255(stor366.length) * 0.5)] = 32
                                    _35736 = mem[_35256]
                                    mem[_25113 + (uint255(stor366.length) * 0.5) + 32] = mem[_35256]
                                    mem[_25113 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35736)] = mem[_35256 + 32 len ceil32(_35736)]
                                    if ceil32(_35736) > _35736:
                                        mem[_35736 + _25113 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25113 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35736) + 32]
                                if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25113] = Mask(248, 8, stor366.length)
                                    _32776 = mem[64]
                                    mem[64] = _25113 + stor366.length.field_1 % 128
                                    mem[_25113 + stor366.length.field_1 % 128] = 32
                                    _32968 = mem[_32776]
                                    mem[_25113 + stor366.length.field_1 % 128 + 32] = mem[_32776]
                                    mem[_25113 + stor366.length.field_1 % 128 + 64 len ceil32(_32968)] = mem[_32776 + 32 len ceil32(_32968)]
                                    if ceil32(_32968) > _32968:
                                        mem[_32968 + _25113 + stor366.length.field_1 % 128 + 64] = 0
                                    return 32, mem[_25113 + stor366.length.field_1 % 128 + 32 len ceil32(_32968) + 32]
                                if bool(stor366.length) != 1:
                                    _32832 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _33171 = mem[_32832]
                                    mem[32] = mem[_32832]
                                    mem[64 len ceil32(_33171)] = mem[_32832 + 32 len ceil32(_33171)]
                                    if ceil32(_33171) > _33171:
                                        mem[_33171 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_33171) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < stor366.length.field_1 % 128:
                                    mem[idx + _25113] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35257 = mem[64]
                                mem[64] = _25113 + stor366.length.field_1 % 128
                                mem[_25113 + stor366.length.field_1 % 128] = 32
                                _35737 = mem[_35257]
                                mem[_25113 + stor366.length.field_1 % 128 + 32] = mem[_35257]
                                mem[_25113 + stor366.length.field_1 % 128 + 64 len ceil32(_35737)] = mem[_35257 + 32 len ceil32(_35737)]
                                if ceil32(_35737) > _35737:
                                    mem[_35737 + _25113 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25113 + stor366.length.field_1 % 128 + 32 len ceil32(_35737) + 32]
                            mem[_25113] = 0
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25113] = Mask(248, 8, stor366.length)
                                    _32675 = mem[64]
                                    mem[64] = _25113 + (uint255(stor366.length) * 0.5)
                                    mem[_25113 + (uint255(stor366.length) * 0.5)] = 32
                                    _32903 = mem[_32675]
                                    mem[_25113 + (uint255(stor366.length) * 0.5) + 32] = mem[_32675]
                                    mem[_25113 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32903)] = mem[_32675 + 32 len ceil32(_32903)]
                                    if ceil32(_32903) > _32903:
                                        mem[_32903 + _25113 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25113 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32903) + 32]
                                if bool(stor366.length) != 1:
                                    _32778 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32971 = mem[_32778]
                                    mem[32] = mem[_32778]
                                    mem[64 len ceil32(_32971)] = mem[_32778 + 32 len ceil32(_32971)]
                                    if ceil32(_32971) > _32971:
                                        mem[_32971 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32971) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _25113] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35258 = mem[64]
                                mem[64] = _25113 + (uint255(stor366.length) * 0.5)
                                mem[_25113 + (uint255(stor366.length) * 0.5)] = 32
                                _35738 = mem[_35258]
                                mem[_25113 + (uint255(stor366.length) * 0.5) + 32] = mem[_35258]
                                mem[_25113 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35738)] = mem[_35258 + 32 len ceil32(_35738)]
                                if ceil32(_35738) > _35738:
                                    mem[_35738 + _25113 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_25113 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35738) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_25113] = Mask(248, 8, stor366.length)
                                _32779 = mem[64]
                                mem[64] = _25113 + stor366.length.field_1 % 128
                                mem[_25113 + stor366.length.field_1 % 128] = 32
                                _32972 = mem[_32779]
                                mem[_25113 + stor366.length.field_1 % 128 + 32] = mem[_32779]
                                mem[_25113 + stor366.length.field_1 % 128 + 64 len ceil32(_32972)] = mem[_32779 + 32 len ceil32(_32972)]
                                if ceil32(_32972) > _32972:
                                    mem[_32972 + _25113 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25113 + stor366.length.field_1 % 128 + 32 len ceil32(_32972) + 32]
                            if bool(stor366.length) != 1:
                                _32835 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33173 = mem[_32835]
                                mem[32] = mem[_32835]
                                mem[64 len ceil32(_33173)] = mem[_32835 + 32 len ceil32(_33173)]
                                if ceil32(_33173) > _33173:
                                    mem[_33173 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33173) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _25113] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35259 = mem[64]
                            mem[64] = _25113 + stor366.length.field_1 % 128
                            mem[_25113 + stor366.length.field_1 % 128] = 32
                            _35739 = mem[_35259]
                            mem[_25113 + stor366.length.field_1 % 128 + 32] = mem[_35259]
                            mem[_25113 + stor366.length.field_1 % 128 + 64 len ceil32(_35739)] = mem[_35259 + 32 len ceil32(_35739)]
                            if ceil32(_35739) > _35739:
                                mem[_35739 + _25113 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_25113 + stor366.length.field_1 % 128 + 32 len ceil32(_35739) + 32]
                        mem[0] = 364
                        idx = 0
                        s = 0
                        while idx < uint255(stor364.length) * 0.5:
                            mem[idx + _24081 + 32] = stor364[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _32022 = mem[128]
                        mem[_24081 + (uint255(stor364.length) * 0.5) + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_32022) <= _32022:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = Mask(248, 8, stor366.length)
                                    _35860 = mem[64]
                                    mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _36096 = mem[_35860]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64] = mem[_35860]
                                    mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36096)] = mem[_35860 + 32 len ceil32(_36096)]
                                    if ceil32(_36096) > _36096:
                                        mem[_36096 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36096) + 32], 
                                if bool(stor366.length) != 1:
                                    _35905 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _36165 = mem[_35905]
                                    mem[32] = mem[_35905]
                                    mem[64 len ceil32(_36165)] = mem[_35905 + 32 len ceil32(_36165)]
                                    if ceil32(_36165) > _36165:
                                        mem[_36165 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_36165) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _37356 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _37756 = mem[_37356]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64] = mem[_37356]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37756)] = mem[_37356 + 32 len ceil32(_37756)]
                                if ceil32(_37756) > _37756:
                                    mem[_37756 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37756) + 32], 
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = Mask(248, 8, stor366.length)
                                _35906 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32] = 32
                                _36166 = mem[_35906]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64] = mem[_35906]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96 len ceil32(_36166)] = mem[_35906 + 32 len ceil32(_36166)]
                                if ceil32(_36166) > _36166:
                                    mem[_36166 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64 len ceil32(_36166) + 32]
                            if bool(stor366.length) != 1:
                                _36002 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36293 = mem[_36002]
                                mem[32] = mem[_36002]
                                mem[64 len ceil32(_36293)] = mem[_36002 + 32 len ceil32(_36293)]
                                if ceil32(_36293) > _36293:
                                    mem[_36293 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36293) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37357 = mem[64]
                            mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32] = 32
                            _37757 = mem[_37357]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64] = mem[_37357]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96 len ceil32(_37757)] = mem[_37357 + 32 len ceil32(_37757)]
                            if ceil32(_37757) > _37757:
                                mem[_37757 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64 len ceil32(_37757) + 32]
                        mem[_32022 + _24081 + (uint255(stor364.length) * 0.5) + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = Mask(248, 8, stor366.length)
                                _35861 = mem[64]
                                mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _36099 = mem[_35861]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64] = mem[_35861]
                                mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36099)] = mem[_35861 + 32 len ceil32(_36099)]
                                if ceil32(_36099) > _36099:
                                    mem[_36099 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36099) + 32], 
                            if bool(stor366.length) != 1:
                                _35908 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36169 = mem[_35908]
                                mem[32] = mem[_35908]
                                mem[64 len ceil32(_36169)] = mem[_35908 + 32 len ceil32(_36169)]
                                if ceil32(_36169) > _36169:
                                    mem[_36169 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36169) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37358 = mem[64]
                            mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _37758 = mem[_37358]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64] = mem[_37358]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37758)] = mem[_37358 + 32 len ceil32(_37758)]
                            if ceil32(_37758) > _37758:
                                mem[_37758 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37758) + 32], 
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = Mask(248, 8, stor366.length)
                            _35909 = mem[64]
                            mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32] = 32
                            _36170 = mem[_35909]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64] = mem[_35909]
                            mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96 len ceil32(_36170)] = mem[_35909 + 32 len ceil32(_36170)]
                            if ceil32(_36170) > _36170:
                                mem[_36170 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64 len ceil32(_36170) + 32]
                        if bool(stor366.length) != 1:
                            _36005 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _36295 = mem[_36005]
                            mem[32] = mem[_36005]
                            mem[64 len ceil32(_36295)] = mem[_36005 + 32 len ceil32(_36295)]
                            if ceil32(_36295) > _36295:
                                mem[_36295 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_36295) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _24081 + (uint255(stor364.length) * 0.5) + _32022 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _37359 = mem[64]
                        mem[64] = _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32
                        mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 32] = 32
                        _37759 = mem[_37359]
                        mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64] = mem[_37359]
                        mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96 len ceil32(_37759)] = mem[_37359 + 32 len ceil32(_37759)]
                        if ceil32(_37759) > _37759:
                            mem[_37759 + _24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_24081 + (uint255(stor364.length) * 0.5) + _32022 + stor366.length.field_1 % 128 + 64 len ceil32(_37759) + 32]
                    if bool(stor364.length) == stor364.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor364.length):
                        mem[mem[64] + 32] = Mask(248, 8, stor364.length)
                        _25114 = mem[128]
                        mem[mem[64] + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_25114) <= _25114:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[mem[64] + stor364.length.field_1 % 128 + _25114 + 32] = Mask(248, 8, stor366.length)
                                    _32676 = mem[64]
                                    mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32
                                    mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32] = 32
                                    _32906 = mem[_32676]
                                    mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64] = mem[_32676]
                                    mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32906)] = mem[_32676 + 32 len ceil32(_32906)]
                                    if ceil32(_32906) > _32906:
                                        mem[_32906 + _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96] = 0
                                    return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32906) + 32]
                                if bool(stor366.length) != 1:
                                    _32781 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32975 = mem[_32781]
                                    mem[32] = mem[_32781]
                                    mem[64 len ceil32(_32975)] = mem[_32781 + 32 len ceil32(_32975)]
                                    if ceil32(_32975) > _32975:
                                        mem[_32975 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32975) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _24081 + stor364.length.field_1 % 128 + _25114 + 32] = stor366[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35260 = mem[64]
                                mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _35740 = mem[_35260]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64] = mem[_35260]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35740)] = mem[_35260 + 32 len ceil32(_35740)]
                                if ceil32(_35740) > _35740:
                                    mem[_35740 + _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35740) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[mem[64] + stor364.length.field_1 % 128 + _25114 + 32] = Mask(248, 8, stor366.length)
                                _32782 = mem[64]
                                mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32] = 32
                                _32976 = mem[_32782]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64] = mem[_32782]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96 len ceil32(_32976)] = mem[_32782 + 32 len ceil32(_32976)]
                                if ceil32(_32976) > _32976:
                                    mem[_32976 + _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96] = 0
                                return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64 len ceil32(_32976) + 32]
                            if bool(stor366.length) != 1:
                                _32838 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33175 = mem[_32838]
                                mem[32] = mem[_32838]
                                mem[64 len ceil32(_33175)] = mem[_32838 + 32 len ceil32(_33175)]
                                if ceil32(_33175) > _33175:
                                    mem[_33175 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33175) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _24081 + stor364.length.field_1 % 128 + _25114 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35261 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32] = 32
                            _35741 = mem[_35261]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64] = mem[_35261]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96 len ceil32(_35741)] = mem[_35261 + 32 len ceil32(_35741)]
                            if ceil32(_35741) > _35741:
                                mem[_35741 + _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64 len ceil32(_35741) + 32]
                        mem[_25114 + mem[64] + stor364.length.field_1 % 128 + 32] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + 32] = Mask(248, 8, stor366.length)
                                _32677 = mem[64]
                                mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _32909 = mem[_32677]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64] = mem[_32677]
                                mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_32909)] = mem[_32677 + 32 len ceil32(_32909)]
                                if ceil32(_32909) > _32909:
                                    mem[_32909 + _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32909) + 32]
                            if bool(stor366.length) != 1:
                                _32784 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _32979 = mem[_32784]
                                mem[32] = mem[_32784]
                                mem[64 len ceil32(_32979)] = mem[_32784 + 32 len ceil32(_32979)]
                                if ceil32(_32979) > _32979:
                                    mem[_32979 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_32979) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _24081 + stor364.length.field_1 % 128 + _25114 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35262 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _35742 = mem[_35262]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64] = mem[_35262]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_35742)] = mem[_35262 + 32 len ceil32(_35742)]
                            if ceil32(_35742) > _35742:
                                mem[_35742 + _24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35742) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + 32] = Mask(248, 8, stor366.length)
                            _32785 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32] = 32
                            _32980 = mem[_32785]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64] = mem[_32785]
                            mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96 len ceil32(_32980)] = mem[_32785 + 32 len ceil32(_32980)]
                            if ceil32(_32980) > _32980:
                                mem[_32980 + _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64 len ceil32(_32980) + 32]
                        if bool(stor366.length) != 1:
                            _32841 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _33177 = mem[_32841]
                            mem[32] = mem[_32841]
                            mem[64 len ceil32(_33177)] = mem[_32841 + 32 len ceil32(_33177)]
                            if ceil32(_33177) > _33177:
                                mem[_33177 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_33177) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _24081 + stor364.length.field_1 % 128 + _25114 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _35263 = mem[64]
                        mem[64] = _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32
                        mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 32] = 32
                        _35743 = mem[_35263]
                        mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64] = mem[_35263]
                        mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96 len ceil32(_35743)] = mem[_35263 + 32 len ceil32(_35743)]
                        if ceil32(_35743) > _35743:
                            mem[_35743 + _24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_24081 + stor364.length.field_1 % 128 + _25114 + stor366.length.field_1 % 128 + 64 len ceil32(_35743) + 32]
                    if bool(stor364.length) != 1:
                        _25471 = mem[128]
                        mem[0 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                        if ceil32(_25471) <= _25471:
                            if bool(stor366.length):
                                if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                    revert with 0, 34
                                if not bool(stor366.length):
                                    mem[_25471] = Mask(248, 8, stor366.length)
                                    _32678 = mem[64]
                                    mem[64] = _25471 + (uint255(stor366.length) * 0.5)
                                    mem[_25471 + (uint255(stor366.length) * 0.5)] = 32
                                    _32914 = mem[_32678]
                                    mem[_25471 + (uint255(stor366.length) * 0.5) + 32] = mem[_32678]
                                    mem[_25471 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32914)] = mem[_32678 + 32 len ceil32(_32914)]
                                    if ceil32(_32914) > _32914:
                                        mem[_32914 + _25471 + (uint255(stor366.length) * 0.5) + 64] = 0
                                    return 32, mem[_25471 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32914) + 32]
                                if bool(stor366.length) != 1:
                                    _32787 = mem[64]
                                    mem[64] = 0
                                    mem[0] = 32
                                    _32985 = mem[_32787]
                                    mem[32] = mem[_32787]
                                    mem[64 len ceil32(_32985)] = mem[_32787 + 32 len ceil32(_32985)]
                                    if ceil32(_32985) > _32985:
                                        mem[_32985 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_32985) + -mem[64] + 64
                                mem[0] = 366
                                idx = 0
                                s = 0
                                while idx < uint255(stor366.length) * 0.5:
                                    mem[idx + _25471] = stor[s + sha3(mem[0])]
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                _35264 = mem[64]
                                mem[64] = _25471 + (uint255(stor366.length) * 0.5)
                                mem[_25471 + (uint255(stor366.length) * 0.5)] = 32
                                _35744 = mem[_35264]
                                mem[_25471 + (uint255(stor366.length) * 0.5) + 32] = mem[_35264]
                                mem[_25471 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35744)] = mem[_35264 + 32 len ceil32(_35744)]
                                if ceil32(_35744) > _35744:
                                    mem[_35744 + _25471 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_25471 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35744) + 32]
                            if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_25471] = Mask(248, 8, stor366.length)
                                _32788 = mem[64]
                                mem[64] = _25471 + stor366.length.field_1 % 128
                                mem[_25471 + stor366.length.field_1 % 128] = 32
                                _32986 = mem[_32788]
                                mem[_25471 + stor366.length.field_1 % 128 + 32] = mem[_32788]
                                mem[_25471 + stor366.length.field_1 % 128 + 64 len ceil32(_32986)] = mem[_32788 + 32 len ceil32(_32986)]
                                if ceil32(_32986) > _32986:
                                    mem[_32986 + _25471 + stor366.length.field_1 % 128 + 64] = 0
                                return 32, mem[_25471 + stor366.length.field_1 % 128 + 32 len ceil32(_32986) + 32]
                            if bool(stor366.length) != 1:
                                _32844 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _33181 = mem[_32844]
                                mem[32] = mem[_32844]
                                mem[64 len ceil32(_33181)] = mem[_32844 + 32 len ceil32(_33181)]
                                if ceil32(_33181) > _33181:
                                    mem[_33181 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_33181) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < stor366.length.field_1 % 128:
                                mem[idx + _25471] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35265 = mem[64]
                            mem[64] = _25471 + stor366.length.field_1 % 128
                            mem[_25471 + stor366.length.field_1 % 128] = 32
                            _35745 = mem[_35265]
                            mem[_25471 + stor366.length.field_1 % 128 + 32] = mem[_35265]
                            mem[_25471 + stor366.length.field_1 % 128 + 64 len ceil32(_35745)] = mem[_35265 + 32 len ceil32(_35745)]
                            if ceil32(_35745) > _35745:
                                mem[_35745 + _25471 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_25471 + stor366.length.field_1 % 128 + 32 len ceil32(_35745) + 32]
                        mem[_25471] = 0
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_25471] = Mask(248, 8, stor366.length)
                                _32679 = mem[64]
                                mem[64] = _25471 + (uint255(stor366.length) * 0.5)
                                mem[_25471 + (uint255(stor366.length) * 0.5)] = 32
                                _32917 = mem[_32679]
                                mem[_25471 + (uint255(stor366.length) * 0.5) + 32] = mem[_32679]
                                mem[_25471 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_32917)] = mem[_32679 + 32 len ceil32(_32917)]
                                if ceil32(_32917) > _32917:
                                    mem[_32917 + _25471 + (uint255(stor366.length) * 0.5) + 64] = 0
                                return 32, mem[_25471 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_32917) + 32]
                            if bool(stor366.length) != 1:
                                _32790 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _32989 = mem[_32790]
                                mem[32] = mem[_32790]
                                mem[64 len ceil32(_32989)] = mem[_32790 + 32 len ceil32(_32989)]
                                if ceil32(_32989) > _32989:
                                    mem[_32989 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_32989) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _25471] = stor[s + sha3(mem[0])]
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _35266 = mem[64]
                            mem[64] = _25471 + (uint255(stor366.length) * 0.5)
                            mem[_25471 + (uint255(stor366.length) * 0.5)] = 32
                            _35746 = mem[_35266]
                            mem[_25471 + (uint255(stor366.length) * 0.5) + 32] = mem[_35266]
                            mem[_25471 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_35746)] = mem[_35266 + 32 len ceil32(_35746)]
                            if ceil32(_35746) > _35746:
                                mem[_35746 + _25471 + (uint255(stor366.length) * 0.5) + 64] = 0
                            return 32, mem[_25471 + (uint255(stor366.length) * 0.5) + 32 len ceil32(_35746) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_25471] = Mask(248, 8, stor366.length)
                            _32791 = mem[64]
                            mem[64] = _25471 + stor366.length.field_1 % 128
                            mem[_25471 + stor366.length.field_1 % 128] = 32
                            _32990 = mem[_32791]
                            mem[_25471 + stor366.length.field_1 % 128 + 32] = mem[_32791]
                            mem[_25471 + stor366.length.field_1 % 128 + 64 len ceil32(_32990)] = mem[_32791 + 32 len ceil32(_32990)]
                            if ceil32(_32990) > _32990:
                                mem[_32990 + _25471 + stor366.length.field_1 % 128 + 64] = 0
                            return 32, mem[_25471 + stor366.length.field_1 % 128 + 32 len ceil32(_32990) + 32]
                        if bool(stor366.length) != 1:
                            _32847 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _33183 = mem[_32847]
                            mem[32] = mem[_32847]
                            mem[64 len ceil32(_33183)] = mem[_32847 + 32 len ceil32(_33183)]
                            if ceil32(_33183) > _33183:
                                mem[_33183 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_33183) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _25471] = stor[s + sha3(mem[0])]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _35267 = mem[64]
                        mem[64] = _25471 + stor366.length.field_1 % 128
                        mem[_25471 + stor366.length.field_1 % 128] = 32
                        _35747 = mem[_35267]
                        mem[_25471 + stor366.length.field_1 % 128 + 32] = mem[_35267]
                        mem[_25471 + stor366.length.field_1 % 128 + 64 len ceil32(_35747)] = mem[_35267 + 32 len ceil32(_35747)]
                        if ceil32(_35747) > _35747:
                            mem[_35747 + _25471 + stor366.length.field_1 % 128 + 64] = 0
                        return 32, mem[_25471 + stor366.length.field_1 % 128 + 32 len ceil32(_35747) + 32]
                    mem[0] = 364
                    idx = 0
                    s = 0
                    while idx < stor364.length.field_1 % 128:
                        mem[idx + _24081 + 32] = stor364[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _32023 = mem[128]
                    mem[_24081 + stor364.length.field_1 % 128 + 32 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                    if ceil32(_32023) <= _32023:
                        if bool(stor366.length):
                            if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor366.length):
                                mem[_24081 + stor364.length.field_1 % 128 + _32023 + 32] = Mask(248, 8, stor366.length)
                                _35870 = mem[64]
                                mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32
                                mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32] = 32
                                _36102 = mem[_35870]
                                mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64] = mem[_35870]
                                mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36102)] = mem[_35870 + 32 len ceil32(_36102)]
                                if ceil32(_36102) > _36102:
                                    mem[_36102 + _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96] = 0
                                return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36102) + 32]
                            if bool(stor366.length) != 1:
                                _35911 = mem[64]
                                mem[64] = 0
                                mem[0] = 32
                                _36189 = mem[_35911]
                                mem[32] = mem[_35911]
                                mem[64 len ceil32(_36189)] = mem[_35911 + 32 len ceil32(_36189)]
                                if ceil32(_36189) > _36189:
                                    mem[_36189 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_36189) + -mem[64] + 64
                            mem[0] = 366
                            idx = 0
                            s = 0
                            while idx < uint255(stor366.length) * 0.5:
                                mem[idx + _24081 + stor364.length.field_1 % 128 + _32023 + 32] = stor366[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            _37360 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _37760 = mem[_37360]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64] = mem[_37360]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37760)] = mem[_37360 + 32 len ceil32(_37760)]
                            if ceil32(_37760) > _37760:
                                mem[_37760 + _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37760) + 32]
                        if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + 32] = Mask(248, 8, stor366.length)
                            _35912 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32] = 32
                            _36190 = mem[_35912]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64] = mem[_35912]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96 len ceil32(_36190)] = mem[_35912 + 32 len ceil32(_36190)]
                            if ceil32(_36190) > _36190:
                                mem[_36190 + _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64 len ceil32(_36190) + 32]
                        if bool(stor366.length) != 1:
                            _36008 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _36297 = mem[_36008]
                            mem[32] = mem[_36008]
                            mem[64 len ceil32(_36297)] = mem[_36008 + 32 len ceil32(_36297)]
                            if ceil32(_36297) > _36297:
                                mem[_36297 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_36297) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < stor366.length.field_1 % 128:
                            mem[idx + _24081 + stor364.length.field_1 % 128 + _32023 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _37361 = mem[64]
                        mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32] = 32
                        _37761 = mem[_37361]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64] = mem[_37361]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96 len ceil32(_37761)] = mem[_37361 + 32 len ceil32(_37761)]
                        if ceil32(_37761) > _37761:
                            mem[_37761 + _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64 len ceil32(_37761) + 32]
                    mem[_32023 + _24081 + stor364.length.field_1 % 128 + 32] = 0
                    if bool(stor366.length):
                        if bool(stor366.length) == uint255(stor366.length) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor366.length):
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + 32] = Mask(248, 8, stor366.length)
                            _35871 = mem[64]
                            mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32] = 32
                            _36105 = mem[_35871]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64] = mem[_35871]
                            mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_36105)] = mem[_35871 + 32 len ceil32(_36105)]
                            if ceil32(_36105) > _36105:
                                mem[_36105 + _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96] = 0
                            return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_36105) + 32]
                        if bool(stor366.length) != 1:
                            _35914 = mem[64]
                            mem[64] = 0
                            mem[0] = 32
                            _36193 = mem[_35914]
                            mem[32] = mem[_35914]
                            mem[64 len ceil32(_36193)] = mem[_35914 + 32 len ceil32(_36193)]
                            if ceil32(_36193) > _36193:
                                mem[_36193 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_36193) + -mem[64] + 64
                        mem[0] = 366
                        idx = 0
                        s = 0
                        while idx < uint255(stor366.length) * 0.5:
                            mem[idx + _24081 + stor364.length.field_1 % 128 + _32023 + 32] = stor366[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _37362 = mem[64]
                        mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 32] = 32
                        _37762 = mem[_37362]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64] = mem[_37362]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96 len ceil32(_37762)] = mem[_37362 + 32 len ceil32(_37762)]
                        if ceil32(_37762) > _37762:
                            mem[_37762 + _24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 96] = 0
                        return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + (uint255(stor366.length) * 0.5) + 64 len ceil32(_37762) + 32]
                    if bool(stor366.length) == stor366.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if not bool(stor366.length):
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + 32] = Mask(248, 8, stor366.length)
                        _35915 = mem[64]
                        mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32] = 32
                        _36194 = mem[_35915]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64] = mem[_35915]
                        mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96 len ceil32(_36194)] = mem[_35915 + 32 len ceil32(_36194)]
                        if ceil32(_36194) > _36194:
                            mem[_36194 + _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96] = 0
                        return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64 len ceil32(_36194) + 32]
                    if bool(stor366.length) != 1:
                        _36011 = mem[64]
                        mem[64] = 0
                        mem[0] = 32
                        _36299 = mem[_36011]
                        mem[32] = mem[_36011]
                        mem[64 len ceil32(_36299)] = mem[_36011 + 32 len ceil32(_36299)]
                        if ceil32(_36299) > _36299:
                            mem[_36299 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_36299) + -mem[64] + 64
                    mem[0] = 366
                    idx = 0
                    s = 0
                    while idx < stor366.length.field_1 % 128:
                        mem[idx + _24081 + stor364.length.field_1 % 128 + _32023 + 32] = stor366[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _37363 = mem[64]
                    mem[64] = _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32
                    mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 32] = 32
                    _37763 = mem[_37363]
                    mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64] = mem[_37363]
                    mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96 len ceil32(_37763)] = mem[_37363 + 32 len ceil32(_37763)]
                    if ceil32(_37763) > _37763:
                        mem[_37763 + _24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 96] = 0
                    return 32, mem[_24081 + stor364.length.field_1 % 128 + _32023 + stor366.length.field_1 % 128 + 64 len ceil32(_37763) + 32]
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
                                                       0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
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
                                                       0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
                                                       0
                                            return Array(len=2 * Mask(256, -1, stor371[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor371[cd[4]].field_0) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                                if 0 == uint255(stor371[cd[4]].field_0) * 0.5:
                                    return 32, 45, 
                                           0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(uint255(stor371[cd[4]].field_0) * 0.5) + 237 len 19] >> 104,
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
                                                   0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
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
                                                   0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
                                                   0
                                        return Array(len=stor371[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor371[cd[4]].field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor371[cd[4]].field_8)
                            if 0 == stor371[cd[4]].field_1 % 128:
                                return 32, 45, 
                                       0x3254686973204d69646761726469616e27732073746f727920686173206e6f74206265656e207772697474656e, mem[ceil32(stor371[cd[4]].field_1 % 128) + 237 len 19] >> 104,
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
                        mem[0] = cd[4]
                        mem[32] = 370
                        if bool(stor370[cd[4]].field_0):
                            if bool(stor370[cd[4]].field_0) == uint255(stor370[cd[4]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[128] = uint255(stor370[cd[4]].field_0) * 0.5
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
                                        mem[0] = sha3(cd[4], 370)
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
                                        mem[0] = sha3(cd[4], 370)
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
                            mem[64] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 236
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 236] = 32
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 268] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]
                            mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])] = mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])]
                            if ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]) > mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192]:
                                mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192] + mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300] = 0
                            return Array(len=mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192], data=mem[mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + 160] + ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 300 len ceil32(mem[ceil32(uint255(stor370[cd[4]].field_0) * 0.5) + ceil32(s) + 192])]), 
                        if bool(stor370[cd[4]].field_0) == stor370[cd[4]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[128] = stor370[cd[4]].field_1 % 128
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
                                    mem[0] = sha3(cd[4], 370)
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
                                    mem[0] = sha3(cd[4], 370)
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
                        mem[64] = mem[ceil32(stor370[cd[4]].field_1 % 128) + 160] + ceil32(stor370[cd[4]].field_1 % 128) + ceil32(s) + 236
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
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = MAX_SUPPLY - sub_5b449c4e
                            while idx < cd[4]:
                                if not s:
                                    revert with 0, 18
                                if sub_c1608d6b[s - 1]:
                                    sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = sub_c1608d6b[s - 1]
                                else:
                                    sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = s - 1
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                                    if ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                            stor202[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]
                                        stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                    mem[32] = 153
                                    ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = msg.sender
                                    emit Transfer(0, msg.sender, sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]);
                                else:
                                    if ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                            stor202[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                        stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                    mem[32] = 153
                                    ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = msg.sender
                                    emit Transfer(0, msg.sender, Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(4 * ceil32(return_data.size)) + 212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s);
                                idx = idx + 1
                                s = s - 1
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
                            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = MAX_SUPPLY - sub_5b449c4e
                            while idx < cd[4]:
                                if not s:
                                    revert with 0, 18
                                if sub_c1608d6b[s - 1]:
                                    sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = sub_c1608d6b[s - 1]
                                else:
                                    sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = s - 1
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                                    if ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                            stor202[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]]
                                        stor204[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                    mem[32] = 153
                                    ownerOf[stor358[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = msg.sender
                                    emit Transfer(0, msg.sender, sub_c1608d6b[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]);
                                else:
                                    if ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                    if msg.sender:
                                        if msg.sender:
                                            if not msg.sender:
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                            stor202[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = balanceOf[address(msg.sender)]
                                    else:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        if stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] >= tokenByIndex.length:
                                            revert with 0, 50
                                        tokenByIndex[stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]] = tokenByIndex[tokenByIndex.length]
                                        stor204[stor203[stor203.length]] = stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s]
                                        stor204[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        tokenByIndex[tokenByIndex.length] = 0
                                        tokenByIndex.length--
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    mem[0] = Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s
                                    mem[32] = 153
                                    ownerOf[Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], stor356, block.timestamp, msg.sender)) >> idx % s] = msg.sender
                                    emit Transfer(0, msg.sender, Mask(-idx + 256, 0, sha3(block.hash(block.number), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[212 len 12] >> 160, ext_call.return_data[0], sub_5b449c4e, block.timestamp, msg.sender)) >> idx % s);
                                idx = idx + 1
                                s = s - 1
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
                        idx = cd[4]
                        while idx < cd[36]:
                            mem[mem[64] + 4] = idx
                            staticcall sub_ac7b1c0aAddress.0x6352211e with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _13224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_13224] == mem[_13224 + 12 len 20]
                            if mem[_13224 + 12 len 20]:
                                mem[mem[64] + 4] = idx
                                staticcall sub_ac7b1c0aAddress.0x6352211e with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14961 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _15601 = mem[_14961]
                                require mem[_14961] == mem[_14961 + 12 len 20]
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
                                        _17741 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_17741] == bool(mem[_17741])
                                        if mem[_17741]:
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
                                        _17742 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_17742] == bool(mem[_17742])
                                        if mem[_17742]:
                                            stor359[stor358[idx]] = 1
                                    if not address(_15601):
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[stor358[idx]]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[stor358[idx]] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = sub_c1608d6b[idx]
                                    if address(_15601):
                                        if address(_15601):
                                            if not address(_15601):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(_15601)][stor154[address(_15601)]] = sub_c1608d6b[idx]
                                            stor202[stor358[idx]] = balanceOf[address(_15601)]
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
                                    if balanceOf[address(_15601)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(_15601)]++
                                    mem[0] = sub_c1608d6b[idx]
                                    mem[32] = 153
                                    ownerOf[stor358[idx]] = address(_15601)
                                    emit Transfer(0, address(_15601), sub_c1608d6b[idx]);
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
                                        _17840 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_17840] == bool(mem[_17840])
                                        if mem[_17840]:
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
                                        _17841 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_17841] == bool(mem[_17841])
                                        if mem[_17841]:
                                            stor359[idx] = 1
                                    if not address(_15601):
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[idx]:
                                        revert with 0, 'ERC721: token already minted'
                                    stor204[idx] = tokenByIndex.length
                                    tokenByIndex.length++
                                    storA7CE[stor203.length] = idx
                                    if address(_15601):
                                        if address(_15601):
                                            if not address(_15601):
                                                revert with 0, 'ERC721: balance query for the zero address'
                                            tokenOfOwnerByIndex[address(_15601)][stor154[address(_15601)]] = idx
                                            stor202[idx] = balanceOf[address(_15601)]
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
                                    if balanceOf[address(_15601)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(_15601)]++
                                    mem[0] = idx
                                    mem[32] = 153
                                    ownerOf[idx] = address(_15601)
                                    emit Transfer(0, address(_15601), idx);
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
                if unknown_0xc0557691(?????) <= uint32(call.func_hash) >> 224:
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
                        if uint32(call.func_hash) >> 224 != unknown_0xc1f26123(?????):
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
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if sub_c1608d6b[stor352 + -stor356 - 1]:
                                sub_c1608d6b[cd[4]] = sub_c1608d6b[stor352 + -stor356 - 1]
                            else:
                                sub_c1608d6b[cd[4]] = MAX_SUPPLY + -sub_5b449c4e - 1
                            staticcall sub_ac7b1c0aAddress.0xf454670b with:
                                    gas gas_remaining wei
                                   args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if sub_c1608d6b[cd[4]]:
                                if ext_call.return_data[0]:
                                    stor359[stor358[cd[4]]] = 1
                                if not msg.sender:
                                    revert with 0, 'ERC721: mint to the zero address'
                                if ownerOf[stor358[cd[4]]]:
                                    revert with 0, 'ERC721: token already minted'
                                stor204[stor358[cd[4]]] = tokenByIndex.length
                                tokenByIndex.length++
                                storA7CE[stor203.length] = sub_c1608d6b[cd[4]]
                                if msg.sender:
                                    if msg.sender:
                                        if not msg.sender:
                                            revert with 0, 'ERC721: balance query for the zero address'
                                        tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = sub_c1608d6b[cd[4]]
                                        stor202[stor358[cd[4]]] = balanceOf[address(msg.sender)]
                                else:
                                    if tokenByIndex.length < 1:
                                        revert with 0, 17
                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                        revert with 0, 50
                                    if stor204[stor358[cd[4]]] >= tokenByIndex.length:
                                        revert with 0, 50
                                    tokenByIndex[stor204[stor358[cd[4]]]] = tokenByIndex[tokenByIndex.length]
                                    stor204[stor203[stor203.length]] = stor204[stor358[cd[4]]]
                                    stor204[stor358[cd[4]]] = 0
                                    if not tokenByIndex.length:
                                        revert with 0, 49
                                    tokenByIndex[tokenByIndex.length] = 0
                                    tokenByIndex.length--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                ownerOf[stor358[cd[4]]] = msg.sender
                                emit Transfer(0, msg.sender, sub_c1608d6b[cd[4]]);
                            else:
                                if ext_call.return_data[0]:
                                    stor359[cd[4]] = 1
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
                            if sub_5b449c4e == -1:
                                revert with 0, 17
                            sub_5b449c4e++
                else:
                    if unknown_0xb8746e73(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b8746e73Address
                    if uint32(call.func_hash) >> 224 != unknown_0xb88d4fde(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xb90497e0(?????):
                            if unknown_0xba58e17c(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_ba58e17c
                            if unknown_0xba6027ee(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                uint256(stor363[address(cd[4])]) = not uint8(stor363[address(cd[4])]) or Mask(248, 8, uint256(stor363[address(cd[4])]))
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
                        call address(cd[36]).0x150b7a02 with:
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
