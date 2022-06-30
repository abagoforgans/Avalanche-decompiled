contract main {




// =====================  Runtime code  =====================


#
#  - sub_048d228b(?)
#  - sub_3e57bb14(?)
#  - walletOfOwner(address arg1)
#  - claimMintRewards()
#  - sub_b36a2064(?)
#  - tokenURI(uint256 arg1)
#  - _fallback()
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint8 stor7; offset 184
uint128 stor7; offset 184
uint128 stor7; offset 176
uint128 stor7; offset 160
address owner;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 cost;
uint256 maxSupply;
uint256 reservedSupply;
uint256 sub_2dfa9d00;
uint256 royalties;
uint256 dust;
uint256 mintRewards;
uint256 sub_e02f3993;
uint256 sub_28e3a0b2;
uint256 sub_bf72daad;
uint256 sub_dceb2629;
uint256 sub_dd76cba3;
mapping of uint256 stor23;
mapping of uint256 stor24;
address stor25;
address stor26;
array of struct sub_84917f4a;
uint256 totalSupply;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933505;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933506;
array of address stor26616959624788145501257665028759500958019551560565664426117466910078421933507;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933508;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function totalSupply() {
    return totalSupply
}

function mintRewards() {
    return mintRewards
}

function sub_28e3a0b2(?) {
    return sub_28e3a0b2
}

function sub_2dfa9d00(?) {
    return sub_2dfa9d00
}

function reservedSupply() {
    return reservedSupply
}

function sub_4f8a1db5(?) {
    return bool(uint8(stor7.field_184))
}

function revealed() {
    return bool(uint8(stor7.field_168))
}

function paused() {
    return bool(uint8(stor7.field_160))
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

function sub_84917f4a(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg1:
            if idx >= sub_84917f4a.length:
                revert with 0, 50
            return sub_84917f4a[idx].field_0, sub_84917f4a[idx].field_256, sub_84917f4a[idx].field_512, sub_84917f4a[idx].field_768
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 'ERC721 Marketplace: Token is not listed'
}

function owner() {
    return owner
}

function sub_a0ba1bbf(?) {
    return bool(uint8(stor7.field_176))
}

function sub_bf72daad(?) {
    return sub_bf72daad
}

function maxSupply() {
    return maxSupply
}

function sub_dceb2629(?) {
    return sub_dceb2629
}

function sub_dd76cba3(?) {
    return sub_dd76cba3
}

function sub_e02f3993(?) {
    return sub_e02f3993
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function royalties() {
    return royalties
}

function dust() {
    return dust
}

function setDust(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dust = arg1
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function sub_d6fb650c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintRewards = arg1
}

function sub_47d616bc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_28e3a0b2 = arg1
}

function sub_56fcf95b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e02f3993 = arg1
}

function sub_8d5190d9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bf72daad = arg1
}

function sub_8e6fe1a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2dfa9d00 = arg1
}

function setRoyalties(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royalties = arg1
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSupply = arg1
}

function sub_0798e5c9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor7.field_184) = Mask(72, 0, not uint8(stor7.field_184))
}

function sub_a17bd783(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor7.field_176) = Mask(80, 0, not uint8(stor7.field_176))
}

function flipPausedState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not uint8(stor7.field_160))
}

function setReservedSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reservedSupply = arg1
}

function sub_05e79db2(?) {
    require calldata.size - 4 >= 32
    if totalSupply < arg1:
        revert with 0, 'Query for nonexistent token'
    if sub_bf72daad < stor24[arg1]:
        revert with 0, 17
    return (sub_bf72daad - stor24[arg1])
}

function sub_82587574(?) {
    require calldata.size - 4 >= 32
    if totalSupply < arg1:
        revert with 0, 'Query for nonexistent token'
    if sub_28e3a0b2 < stor23[arg1]:
        revert with 0, 17
    return (sub_28e3a0b2 - stor23[arg1])
}

function sub_7ef6f656(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25 = address(arg1)
    stor26 = address(arg2)
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if royalties > !sub_e02f3993:
        revert with 0, 17
    if arg2 and royalties + sub_e02f3993 > -1 / arg2:
        revert with 0, 17
    return address(this.address), (royalties * arg2) + (sub_e02f3993 * arg2) / 10000
}

function isTokenListed(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg1:
            return 1, idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_b5350ebf(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        revert with 0, 18
    if msg.value / totalSupply and totalSupply > -1 / msg.value / totalSupply:
        revert with 0, 17
    if sub_28e3a0b2 > !(msg.value / totalSupply):
        revert with 0, 17
    sub_28e3a0b2 += msg.value / totalSupply
    if sub_dceb2629 > !(msg.value / totalSupply * totalSupply):
        revert with 0, 17
    sub_dceb2629 += msg.value / totalSupply * totalSupply
    emit 0xf47d3b55: msg.value
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                        'sfer funds' << 176
    else:
        if not ext_call.success:
            revert with 0, 32, 42, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds' << 176
    ('bool', 'ext_call.success')
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

function getListings() {
    mem[64] = (32 * sub_84917f4a.length) + 128
    mem[96] = sub_84917f4a.length
    s = 128
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = sub_84917f4a[idx].field_0
        mem[_13 + 32] = sub_84917f4a[idx].field_256
        mem[_13 + 64] = sub_84917f4a[idx].field_512
        mem[_13 + 96] = sub_84917f4a[idx].field_768
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _15:
        _22 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_22 + 32]
        mem[s + 64] = mem[_22 + 76 len 20]
        mem[s + 96] = mem[_22 + 96]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _14 + (128 * _15) + -mem[64] + 64
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_aff72141(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setUnrevealedURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while (uint255(stor8.length) * 0.5) + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function reveal(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor7.field_168) = 1
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while (uint255(stor9.length) * 0.5) + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function createListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not uint8(stor7.field_176):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721 Marketplace: Listings are currently disabled'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Invalid listing price'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Caller is not the owner'
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Token is already listed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_84917f4a.length++
    stor3AD8[stor27.length] = arg1
    stor3AD8[stor27.length] = arg2
    stor3AD8[stor27.length] = msg.sender
    stor3AD8[stor27.length] = block.timestamp
    emit 0xda5118e1: arg2, arg1, msg.sender
    stor6 = 1
}

function sub_42bba11a(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of a token can claim rewards'
    if totalSupply < arg1:
        revert with 0, 'Query for nonexistent token'
    if sub_bf72daad < stor24[arg1]:
        revert with 0, 17
    if sub_bf72daad - stor24[arg1] <= 0:
        revert with 0, 'You don't have any rewards'
    if sub_dd76cba3 < sub_bf72daad - stor24[arg1]:
        revert with 0, 17
    sub_dd76cba3 = sub_dd76cba3 - sub_bf72daad + stor24[arg1]
    stor24[arg1] = sub_bf72daad
    call ownerOf[arg1] with:
       value sub_bf72daad - stor24[arg1] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                        'sfer funds' << 176
    else:
        if not ext_call.success:
            revert with 0, 32, 42, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds' << 176
    ('bool', 'ext_call.success')
    emit 0xd5803ea2: (sub_bf72daad - stor24[arg1]), ownerOf[arg1], 2
    stor6 = 1
}

function sub_f1629d13(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner of a token can claim rewards'
    if totalSupply < arg1:
        revert with 0, 'Query for nonexistent token'
    if sub_28e3a0b2 < stor23[arg1]:
        revert with 0, 17
    if sub_28e3a0b2 - stor23[arg1] <= 0:
        revert with 0, 'You don't have any rewards'
    if sub_dceb2629 < sub_28e3a0b2 - stor23[arg1]:
        revert with 0, 17
    sub_dceb2629 = sub_dceb2629 - sub_28e3a0b2 + stor23[arg1]
    stor23[arg1] = sub_28e3a0b2
    call ownerOf[arg1] with:
       value sub_28e3a0b2 - stor23[arg1] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                        'sfer funds' << 176
    else:
        if not ext_call.success:
            revert with 0, 32, 42, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds' << 176
    ('bool', 'ext_call.success')
    emit 0xd5803ea2: (sub_28e3a0b2 - stor23[arg1]), ownerOf[arg1], 1
    stor6 = 1
}

function sub_aec6e273(?) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_84917f4a.length:
            revert with 0, 50
        if sub_84917f4a[idx].field_512 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Caller is not the owner'
        if sub_84917f4a.length < 1:
            revert with 0, 17
        if sub_84917f4a.length - 1 >= sub_84917f4a.length:
            revert with 0, 50
        if idx >= sub_84917f4a.length:
            revert with 0, 50
        sub_84917f4a[idx].field_0 = sub_84917f4a[sub_84917f4a.length - 1].field_0
        sub_84917f4a[idx].field_256 = sub_84917f4a[sub_84917f4a.length - 1].field_256
        sub_84917f4a[idx].field_512 = sub_84917f4a[sub_84917f4a.length - 1].field_512
        sub_84917f4a[idx].field_768 = sub_84917f4a[sub_84917f4a.length - 1].field_768
        if not sub_84917f4a.length:
            revert with 0, 49
        sub_84917f4a[sub_84917f4a.length - 1].field_0 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_256 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_512 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_768 = 0
        sub_84917f4a.length--
        emit 0xd61f1a8b: arg1
        stor6 = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Token is not listed'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721 Marketplace: Unable to transfer a listed token'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg3:
            revert with 0, 'ERC721 Marketplace: Unable to transfer a listed token'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 == arg3:
            revert with 0, 'ERC721 Marketplace: Unable to transfer a listed token'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
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
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_dceb2629 > !sub_dd76cba3:
        revert with 0, 17
    if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
        revert with 0, 17
    if eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    if (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    call stor25 with:
       value 3 * (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        63,
                        0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                        'sfer funds to community wallet!'
        call stor26 with:
           value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            62,
                            0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                            'sfer funds to donation wallet!'
            if sub_dceb2629 + sub_dd76cba3 > !dust:
                revert with 0, 17
            if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3 + dust:
                revert with 0, 17
            call owner with:
               value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 - dust wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                63,
                                0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261,
                                'sfer funds to the owner wallet!'
            else:
                if not ext_call.success:
                    revert with 0, 32, 63, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to the owner wallet!'
        else:
            if not ext_call.success:
                revert with 0, 32, 62, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to donation wallet!'
            if sub_dceb2629 + sub_dd76cba3 > !dust:
                revert with 0, 17
            if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3 + dust:
                revert with 0, 17
            call owner with:
               value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 - dust wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 32, 63, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to the owner wallet!'
    else:
        if not ext_call.success:
            revert with 0, 32, 63, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to community wallet!'
        call stor26 with:
           value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 32, 62, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to donation wallet!'
        if sub_dceb2629 + sub_dd76cba3 > !dust:
            revert with 0, 17
        if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3 + dust:
            revert with 0, 17
        call owner with:
           value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 - dust wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 32, 63, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds to the owner wallet!'
    ('bool', 'ext_call.success')
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not arg1:
        revert with 0, 'Invalid mint amount'
    if arg1 > sub_2dfa9d00:
        revert with 0, 'Invalid mint amount'
    if totalSupply > !arg1:
        revert with 0, 17
    if totalSupply + arg1 > maxSupply:
        revert with 0, 'Max token supply exceeded'
    if maxSupply < reservedSupply:
        revert with 0, 17
    if totalSupply + arg1 > maxSupply - reservedSupply:
        revert with 0, 'Remaining tokens are reserved'
    if uint8(stor7.field_160):
        revert with 0, 'Minting is paused'
    if cost and arg1 > -1 / cost:
        revert with 0, 17
    if msg.value < cost * arg1:
        revert with 0, 'Insufficient funds'
    idx = 0
    while idx < arg1:
        totalSupply++
        _58 = mem[64]
        mem[64] = mem[64] + 32
        mem[_58] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor28]:
            revert with 0, 'ERC721: token already minted'
        s = 0
        while s < sub_84917f4a.length:
            mem[0] = 27
            if sub_84917f4a[s].field_0 == totalSupply:
                revert with 0, 'ERC721 Marketplace: Unable to transfer a listed token'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = totalSupply
        mem[32] = 2
        ownerOf[stor28] = msg.sender
        emit Transfer(0, msg.sender, totalSupply);
        if ext_code.size(msg.sender):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = totalSupply
            mem[mem[64] + 100] = 128
            _111 = mem[_58]
            mem[mem[64] + 132] = mem[_58]
            s = 0
            while s < _111:
                mem[s + mem[64] + 164] = mem[s + _58 + 32]
                s = s + 32
                continue 
            if ceil32(_111) <= _111:
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalSupply, 128, mem[mem[64] + 132 len ceil32(_111) + 32]
                mem[mem[64]] = ext_call.return_data[0]
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
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_145] == Mask(32, 224, mem[_145])
                if Mask(32, 224, mem[_145]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[_111 + mem[64] + 164] = 0
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, totalSupply, 128, mem[mem[64] + 132 len ceil32(_111) + 32]
                mem[mem[64]] = ext_call.return_data[0]
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
                _146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_146] == Mask(32, 224, mem[_146])
                if Mask(32, 224, mem[_146]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = totalSupply
    t = 0
    while idx < arg1:
        if not s:
            if s == -1:
                revert with 0, 17
            mem[0] = s + 1
            mem[32] = 23
            stor23[s + 1] = sub_28e3a0b2
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if msg.value and mintRewards > -1 / msg.value:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if not s:
            revert with 0, 18
        if msg.value * mintRewards / 10000 / arg1 / s and s > -1 / msg.value * mintRewards / 10000 / arg1 / s:
            revert with 0, 17
        if t > !(msg.value * mintRewards / 10000 / arg1 / s * s):
            revert with 0, 17
        if sub_28e3a0b2 > !(msg.value * mintRewards / 10000 / arg1 / s):
            revert with 0, 17
        sub_28e3a0b2 += msg.value * mintRewards / 10000 / arg1 / s
        if s == -1:
            revert with 0, 17
        mem[0] = s + 1
        mem[32] = 23
        stor23[s + 1] = sub_28e3a0b2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        t = t + (msg.value * mintRewards / 10000 / arg1 / s * s)
        continue 
    if sub_dceb2629 > !t:
        revert with 0, 17
    sub_dceb2629 += t
    stor6 = 1
}

function sub_3912fc85(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    idx = 0
    while idx < sub_84917f4a.length:
        mem[0] = 27
        if sub_84917f4a[idx].field_0 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_84917f4a.length:
            revert with 0, 50
        mem[128] = sub_84917f4a[idx].field_256
        mem[160] = sub_84917f4a[idx].field_512
        mem[192] = sub_84917f4a[idx].field_768
        if sub_84917f4a[idx].field_512 == msg.sender:
            revert with 0, 'ERC721 Marketplace: Buyer and seller must be be different addresses'
        if msg.value < sub_84917f4a[idx].field_256:
            revert with 0, 'ERC721 Marketplace: Insufficient funds'
        if msg.value and royalties > -1 / msg.value:
            revert with 0, 17
        if totalSupply < 1:
            revert with 0, 17
        if msg.value and sub_e02f3993 > -1 / msg.value:
            revert with 0, 17
        if not totalSupply - 1:
            revert with 0, 18
        if totalSupply < 1:
            revert with 0, 17
        if msg.value * sub_e02f3993 / 10000 / totalSupply - 1 and totalSupply - 1 > -1 / msg.value * sub_e02f3993 / 10000 / totalSupply - 1:
            revert with 0, 17
        if sub_84917f4a.length < 1:
            revert with 0, 17
        if sub_84917f4a.length - 1 >= sub_84917f4a.length:
            revert with 0, 50
        if idx >= sub_84917f4a.length:
            revert with 0, 50
        sub_84917f4a[idx].field_0 = sub_84917f4a[sub_84917f4a.length - 1].field_0
        sub_84917f4a[idx].field_256 = sub_84917f4a[sub_84917f4a.length - 1].field_256
        sub_84917f4a[idx].field_512 = sub_84917f4a[sub_84917f4a.length - 1].field_512
        sub_84917f4a[idx].field_768 = sub_84917f4a[sub_84917f4a.length - 1].field_768
        if not sub_84917f4a.length:
            revert with 0, 49
        sub_84917f4a[sub_84917f4a.length - 1].field_0 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_256 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_512 = 0
        sub_84917f4a[sub_84917f4a.length - 1].field_768 = 0
        sub_84917f4a.length--
        if sub_bf72daad > !(msg.value * sub_e02f3993 / 10000 / totalSupply - 1):
            revert with 0, 17
        sub_bf72daad += msg.value * sub_e02f3993 / 10000 / totalSupply - 1
        if stor24[arg1] > !(msg.value * sub_e02f3993 / 10000 / totalSupply - 1):
            revert with 0, 17
        stor24[arg1] += msg.value * sub_e02f3993 / 10000 / totalSupply - 1
        if sub_dd76cba3 > !(-(msg.value * sub_e02f3993 / 10000 / totalSupply - 1) + (totalSupply * msg.value * sub_e02f3993 / 10000 / totalSupply - 1)):
            revert with 0, 17
        sub_dd76cba3 = sub_dd76cba3 - (msg.value * sub_e02f3993 / 10000 / totalSupply - 1) + (totalSupply * msg.value * sub_e02f3993 / 10000 / totalSupply - 1)
        emit 0x3d5eb834: msg.value, arg1, sub_84917f4a[idx].field_512, msg.sender
        mem[224] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != sub_84917f4a[idx].field_512:
            revert with 0, 'ERC721: transfer from incorrect owner'
        if not msg.sender:
            revert with 0, 'ERC721: transfer to the zero address'
        s = 0
        while s < sub_84917f4a.length:
            mem[0] = 27
            if sub_84917f4a[s].field_0 == arg1:
                revert with 0, 'ERC721 Marketplace: Unable to transfer a listed token'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[stor27[idx].field_512] < 1:
            revert with 0, 17
        balanceOf[stor27[idx].field_512]--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[arg1] = msg.sender
        emit Transfer(sub_84917f4a[idx].field_512, msg.sender, arg1);
        if ext_code.size(msg.sender):
            mem[256] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[260] = msg.sender
            mem[292] = sub_84917f4a[idx].field_512
            mem[324] = arg1
            mem[356] = 128
            mem[388] = 0
            s = 0
            while s < 0:
                mem[s + 420] = mem[s + 256]
                s = s + 32
                continue 
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, sub_84917f4a[idx].field_512, arg1, 128, 0
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not sub_84917f4a[idx].field_0:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len sub_84917f4a[idx].field_0
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if msg.value * royalties / 10000 > !(-(msg.value * sub_e02f3993 / 10000 / totalSupply - 1) + (totalSupply * msg.value * sub_e02f3993 / 10000 / totalSupply - 1)):
            revert with 0, 17
        if msg.value < (msg.value * royalties / 10000) - (msg.value * sub_e02f3993 / 10000 / totalSupply - 1) + (totalSupply * msg.value * sub_e02f3993 / 10000 / totalSupply - 1):
            revert with 0, 17
        call sub_84917f4a[idx].field_512 with:
           value msg.value - (msg.value * royalties / 10000) + (msg.value * sub_e02f3993 / 10000 / totalSupply - 1) - (totalSupply * msg.value * sub_e02f3993 / 10000 / totalSupply - 1) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 32, 42, 0xfe41564158205472616e73616374696f6e3a204661696c656420746f20747261, 'sfer funds' << 176
        stor6 = 1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Token is not listed'
}

function sub_f9daade4(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 1
    if not ('cd', 4).length:
        revert with 0, 1
    if not ('cd', 36).length:
        revert with 0, 1
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == uint8(cd[((32 * idx) + cd[36] + 36)])
        if s > !uint8(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint8(cd[((32 * idx) + cd[36] + 36)])
        continue 
    if totalSupply > !(s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length):
        revert with 0, 17
    if totalSupply + (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) > maxSupply:
        revert with 0, 'Max token supply exceeded'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == uint8(cd[((32 * idx) + cd[36] + 36)])
        s = 0
        while s < uint8(cd[((32 * idx) + cd[36] + 36)]):
            totalSupply++
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _145 = mem[64]
            mem[64] = mem[64] + 32
            mem[_145] = 0
            if not address(cd[((32 * idx) + cd[4] + 36)]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor28]:
                revert with 0, 'ERC721: token already minted'
            t = 0
            while t < sub_84917f4a.length:
                mem[0] = 27
                if sub_84917f4a[t].field_0 == totalSupply:
                    revert with 0, 'ERC721 Marketplace: Unable to transfer a listed token'
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > -2:
                revert with 0, 17
            balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]++
            mem[0] = totalSupply
            mem[32] = 2
            ownerOf[stor28] = address(cd[((32 * idx) + cd[4] + 36)])
            emit Transfer(0, address(cd[((32 * idx) + cd[4] + 36)]), totalSupply);
            if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = totalSupply
                mem[mem[64] + 100] = 128
                _198 = mem[_145]
                mem[mem[64] + 132] = mem[_145]
                t = 0
                while t < _198:
                    mem[t + mem[64] + 164] = mem[t + _145 + 32]
                    t = t + 32
                    continue 
                if ceil32(_198) <= _198:
                    call address(cd[((32 * idx) + cd[4] + 36)]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalSupply, 128, mem[mem[64] + 132 len ceil32(_198) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _234 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_234] == Mask(32, 224, mem[_234])
                    if Mask(32, 224, mem[_234]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    mem[_198 + mem[64] + 164] = 0
                    call address(cd[((32 * idx) + cd[4] + 36)]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, totalSupply, 128, mem[mem[64] + 132 len ceil32(_198) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
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
                    _235 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_235] == Mask(32, 224, mem[_235])
                    if Mask(32, 224, mem[_235]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = totalSupply
            mem[32] = 23
            stor23[stor28] = sub_28e3a0b2
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
