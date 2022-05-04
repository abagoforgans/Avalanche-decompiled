contract main {




// =====================  Runtime code  =====================


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
address owner;
array of struct stor11;
array of struct stor12;
uint256 cost;
uint256 maxSupply;
uint256 maxMintAmount;
uint256 royaltyValue;
uint256 devShare;
uint256 adminShare;
uint8 paused;
address adminAddress; offset 8
address royaltyContractAddress;
mapping of uint256 cache;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function royaltyContract() {
    return royaltyContractAddress
}

function cache(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return cache[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function maxMintAmount() {
    return maxMintAmount
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function royaltyValue() {
    return royaltyValue
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function owner() {
    return owner
}

function adminShare() {
    return adminShare
}

function devShare() {
    return devShare
}

function maxSupply() {
    return maxSupply
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

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function setRoyaltyValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyValue = arg1
}

function setmaxMintAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintAmount = arg1
}

function setRoyaltyContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyContractAddress = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and royaltyValue > -1 / arg2:
        revert with 'NH{q', 17
    return royaltyContractAddress, arg2 * royaltyValue / 10000
}

function setDevShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devShare = arg1
    if 100 < arg1:
        revert with 'NH{q', 17
    adminShare = -arg1 + 100
}

function setAdminShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminShare = arg1
    if 100 < arg1:
        revert with 'NH{q', 17
    devShare = -arg1 + 100
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

function types(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 1:
        revert with 0, 'Invalid Token Id'
    if arg1 > 4444:
        revert with 0, 'Invalid Token Id'
    if arg1 <= 1111:
        return 'Karambit', 0
    if arg1 <= 2222:
        return 'Tactical', 0
    if arg1 <= 3333:
        return 'Butterfly', 0
    if arg1 > 4444:
        return ' '
    return 'Kunai', 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function walletOfOwner() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 6)
        if idx >= balanceOf[address(msg.sender)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len 32 * balanceOf[address(msg.sender)]])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setBaseExtension(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
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

function baseURI() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function baseExtension() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not paused
    require arg1 > 0
    require arg1 <= maxMintAmount
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    require tokenByIndex.length + arg1 <= maxSupply
    if msg.sender == owner:
        idx = 1
        while idx <= arg1:
            if maxSupply < tokenByIndex.length:
                revert with 'NH{q', 17
            _1103 = mem[64]
            mem[mem[64] + 32] = block.difficulty
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = maxSupply - tokenByIndex.length
            _1108 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _1110 = sha3(mem[_1108 + 32 len mem[_1108]])
            if not maxSupply - tokenByIndex.length:
                revert with 'NH{q', 18
            mem[0] = sha3(mem[_1108 + 32 len mem[_1108]]) % maxSupply - tokenByIndex.length
            if maxSupply - tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if maxSupply - tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if not cache[stor14 + -stor8.length - 1]:
                cache[_1110 % stor14 - stor8.length] = maxSupply + -tokenByIndex.length - 1
            else:
                cache[_1110 % stor14 - stor8.length] = cache[stor14 + -stor8.length - 1]
            if not cache[mem[0]]:
                if _1110 % maxSupply - tokenByIndex.length > -2:
                    revert with 'NH{q', 17
                mem[64] = _1103 + 160
                mem[_1103 + 128] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[(_1110 % stor14 - stor8.length) + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[(_1110 % stor14 - stor8.length) + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = (_1110 % maxSupply - tokenByIndex.length) + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_1110 % maxSupply - tokenByIndex.length) + 1
                    stor7[(_1110 % stor14 - stor8.length) + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[(_1110 % stor14 - stor8.length) + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[(_1110 % stor14 - tokenByIndex.length) + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[(_1110 % stor14 - stor8.length) + 1]
                    stor9[(_1110 % stor14 - stor8.length) + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = (_1110 % maxSupply - tokenByIndex.length) + 1
                mem[32] = 2
                ownerOf[(_1110 % stor14 - stor8.length) + 1] = msg.sender
                emit Transfer(0, msg.sender, (_1110 % maxSupply - tokenByIndex.length) + 1);
                if ext_code.size(msg.sender) > 0:
                    mem[_1103 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1103 + 164] = msg.sender
                    mem[_1103 + 196] = 0
                    mem[_1103 + 228] = (_1110 % maxSupply - tokenByIndex.length) + 1
                    mem[_1103 + 260] = 128
                    mem[_1103 + 292] = 0
                    s = 0
                    while s < 0:
                        mem[_1103 + s + 324] = mem[_1103 + s + 160]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, (_1110 % maxSupply - tokenByIndex.length) + 1, 128, 0
                    mem[_1103 + 160] = ext_call.return_data[0]
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
                    mem[64] = _1103 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if cache[_1110 % stor14 - stor8.length] > -2:
                    revert with 'NH{q', 17
                mem[64] = _1103 + 160
                mem[_1103 + 128] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor21[_1110 % stor14 - stor8.length] + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor21[_1110 % stor14 - stor8.length] + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = cache[_1110 % stor14 - stor8.length] + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = cache[_1110 % stor14 - stor8.length] + 1
                    stor7[stor21[_1110 % stor14 - stor8.length] + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor21[_1110 % stor14 - stor8.length] + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor21[_1110 % stor14 - tokenByIndex.length] + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor21[_1110 % stor14 - stor8.length] + 1]
                    stor9[stor21[_1110 % stor14 - stor8.length] + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = cache[_1110 % stor14 - stor8.length] + 1
                mem[32] = 2
                ownerOf[stor21[_1110 % stor14 - stor8.length] + 1] = msg.sender
                emit Transfer(0, msg.sender, cache[_1110 % stor14 - stor8.length] + 1);
                if ext_code.size(msg.sender) > 0:
                    mem[_1103 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_1103 + 164] = msg.sender
                    mem[_1103 + 196] = 0
                    mem[_1103 + 228] = cache[_1110 % stor14 - stor8.length] + 1
                    mem[_1103 + 260] = 128
                    mem[_1103 + 292] = 0
                    s = 0
                    while s < 0:
                        mem[_1103 + s + 324] = mem[_1103 + s + 160]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, cache[_1110 % stor14 - stor8.length] + 1, 128, 0
                    mem[_1103 + 160] = ext_call.return_data[0]
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
                    mem[64] = _1103 + ceil32(return_data.size) + 160
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == adminAddress:
            idx = 1
            while idx <= arg1:
                if maxSupply < tokenByIndex.length:
                    revert with 'NH{q', 17
                _1104 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = maxSupply - tokenByIndex.length
                _1113 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _1115 = sha3(mem[_1113 + 32 len mem[_1113]])
                if not maxSupply - tokenByIndex.length:
                    revert with 'NH{q', 18
                mem[0] = sha3(mem[_1113 + 32 len mem[_1113]]) % maxSupply - tokenByIndex.length
                if maxSupply - tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if maxSupply - tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if not cache[stor14 + -stor8.length - 1]:
                    cache[_1115 % stor14 - stor8.length] = maxSupply + -tokenByIndex.length - 1
                else:
                    cache[_1115 % stor14 - stor8.length] = cache[stor14 + -stor8.length - 1]
                if not cache[mem[0]]:
                    if _1115 % maxSupply - tokenByIndex.length > -2:
                        revert with 'NH{q', 17
                    mem[64] = _1104 + 160
                    mem[_1104 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[(_1115 % stor14 - stor8.length) + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[(_1115 % stor14 - stor8.length) + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = (_1115 % maxSupply - tokenByIndex.length) + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_1115 % maxSupply - tokenByIndex.length) + 1
                        stor7[(_1115 % stor14 - stor8.length) + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[(_1115 % stor14 - stor8.length) + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[(_1115 % stor14 - tokenByIndex.length) + 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[(_1115 % stor14 - stor8.length) + 1]
                        stor9[(_1115 % stor14 - stor8.length) + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = (_1115 % maxSupply - tokenByIndex.length) + 1
                    mem[32] = 2
                    ownerOf[(_1115 % stor14 - stor8.length) + 1] = msg.sender
                    emit Transfer(0, msg.sender, (_1115 % maxSupply - tokenByIndex.length) + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1104 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1104 + 164] = msg.sender
                        mem[_1104 + 196] = 0
                        mem[_1104 + 228] = (_1115 % maxSupply - tokenByIndex.length) + 1
                        mem[_1104 + 260] = 128
                        mem[_1104 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1104 + s + 324] = mem[_1104 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (_1115 % maxSupply - tokenByIndex.length) + 1, 128, 0
                        mem[_1104 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1104 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if cache[_1115 % stor14 - stor8.length] > -2:
                        revert with 'NH{q', 17
                    mem[64] = _1104 + 160
                    mem[_1104 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor21[_1115 % stor14 - stor8.length] + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor21[_1115 % stor14 - stor8.length] + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = cache[_1115 % stor14 - stor8.length] + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = cache[_1115 % stor14 - stor8.length] + 1
                        stor7[stor21[_1115 % stor14 - stor8.length] + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor21[_1115 % stor14 - stor8.length] + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor21[_1115 % stor14 - tokenByIndex.length] + 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor21[_1115 % stor14 - stor8.length] + 1]
                        stor9[stor21[_1115 % stor14 - stor8.length] + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = cache[_1115 % stor14 - stor8.length] + 1
                    mem[32] = 2
                    ownerOf[stor21[_1115 % stor14 - stor8.length] + 1] = msg.sender
                    emit Transfer(0, msg.sender, cache[_1115 % stor14 - stor8.length] + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1104 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1104 + 164] = msg.sender
                        mem[_1104 + 196] = 0
                        mem[_1104 + 228] = cache[_1115 % stor14 - stor8.length] + 1
                        mem[_1104 + 260] = 128
                        mem[_1104 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1104 + s + 324] = mem[_1104 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cache[_1115 % stor14 - stor8.length] + 1, 128, 0
                        mem[_1104 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1104 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if cost and arg1 > -1 / cost:
                revert with 'NH{q', 17
            require msg.value >= cost * arg1
            idx = 1
            while idx <= arg1:
                if maxSupply < tokenByIndex.length:
                    revert with 'NH{q', 17
                _1105 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = maxSupply - tokenByIndex.length
                _1118 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _1120 = sha3(mem[_1118 + 32 len mem[_1118]])
                if not maxSupply - tokenByIndex.length:
                    revert with 'NH{q', 18
                mem[0] = sha3(mem[_1118 + 32 len mem[_1118]]) % maxSupply - tokenByIndex.length
                if maxSupply - tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if maxSupply - tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if not cache[stor14 + -stor8.length - 1]:
                    cache[_1120 % stor14 - stor8.length] = maxSupply + -tokenByIndex.length - 1
                else:
                    cache[_1120 % stor14 - stor8.length] = cache[stor14 + -stor8.length - 1]
                if not cache[mem[0]]:
                    if _1120 % maxSupply - tokenByIndex.length > -2:
                        revert with 'NH{q', 17
                    mem[64] = _1105 + 160
                    mem[_1105 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[(_1120 % stor14 - stor8.length) + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[(_1120 % stor14 - stor8.length) + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = (_1120 % maxSupply - tokenByIndex.length) + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_1120 % maxSupply - tokenByIndex.length) + 1
                        stor7[(_1120 % stor14 - stor8.length) + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[(_1120 % stor14 - stor8.length) + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[(_1120 % stor14 - tokenByIndex.length) + 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[(_1120 % stor14 - stor8.length) + 1]
                        stor9[(_1120 % stor14 - stor8.length) + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = (_1120 % maxSupply - tokenByIndex.length) + 1
                    mem[32] = 2
                    ownerOf[(_1120 % stor14 - stor8.length) + 1] = msg.sender
                    emit Transfer(0, msg.sender, (_1120 % maxSupply - tokenByIndex.length) + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1105 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1105 + 164] = msg.sender
                        mem[_1105 + 196] = 0
                        mem[_1105 + 228] = (_1120 % maxSupply - tokenByIndex.length) + 1
                        mem[_1105 + 260] = 128
                        mem[_1105 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1105 + s + 324] = mem[_1105 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, (_1120 % maxSupply - tokenByIndex.length) + 1, 128, 0
                        mem[_1105 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1105 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if cache[_1120 % stor14 - stor8.length] > -2:
                        revert with 'NH{q', 17
                    mem[64] = _1105 + 160
                    mem[_1105 + 128] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor21[_1120 % stor14 - stor8.length] + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor21[_1120 % stor14 - stor8.length] + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = cache[_1120 % stor14 - stor8.length] + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = cache[_1120 % stor14 - stor8.length] + 1
                        stor7[stor21[_1120 % stor14 - stor8.length] + 1] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor21[_1120 % stor14 - stor8.length] + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor21[_1120 % stor14 - tokenByIndex.length] + 1]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor21[_1120 % stor14 - stor8.length] + 1]
                        stor9[stor21[_1120 % stor14 - stor8.length] + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = cache[_1120 % stor14 - stor8.length] + 1
                    mem[32] = 2
                    ownerOf[stor21[_1120 % stor14 - stor8.length] + 1] = msg.sender
                    emit Transfer(0, msg.sender, cache[_1120 % stor14 - stor8.length] + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[_1105 + 160] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_1105 + 164] = msg.sender
                        mem[_1105 + 196] = 0
                        mem[_1105 + 228] = cache[_1120 % stor14 - stor8.length] + 1
                        mem[_1105 + 260] = 128
                        mem[_1105 + 292] = 0
                        s = 0
                        while s < 0:
                            mem[_1105 + s + 324] = mem[_1105 + s + 160]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cache[_1120 % stor14 - stor8.length] + 1, 128, 0
                        mem[_1105 + 160] = ext_call.return_data[0]
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
                        mem[64] = _1105 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    if msg.value and devShare > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and adminShare > -1 / msg.value:
        revert with 'NH{q', 17
    call owner with:
       value msg.value * devShare / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call adminAddress with:
       value msg.value * adminShare / 100 wei
         gas 2300 * is_zero(value) wei
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor11.length.field_1
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7178 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7178) > _7178:
                                        mem[_7178 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7178) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7264 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7264) > _7264:
                                    mem[_7264 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7264) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7183 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7183) > _7183:
                                        mem[_7183 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7183) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7267 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7267) > _7267:
                                    mem[_7267 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7267) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18806 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18806) > _18806:
                                            mem[_18806 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18806) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18999 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18999) > _18999:
                                        mem[_18999 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18999) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19000 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19000) > _19000:
                                            mem[_19000 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19000) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19144 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19144) > _19144:
                                        mem[_19144 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19144) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18811 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18811) > _18811:
                                            mem[_18811 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18811) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19004 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19004) > _19004:
                                        mem[_19004 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19004) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19005 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19005) > _19005:
                                            mem[_19005 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19005) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19147 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19147) > _19147:
                                        mem[_19147 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19147) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18816 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18816) > _18816:
                                            mem[_18816 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18816) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19009 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19009) > _19009:
                                        mem[_19009 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19009) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19010 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19010) > _19010:
                                            mem[_19010 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19010) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19150 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19150) > _19150:
                                        mem[_19150 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19150) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18821 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18821) > _18821:
                                            mem[_18821 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18821) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19014 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19014) > _19014:
                                        mem[_19014 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19014) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19015 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19015) > _19015:
                                            mem[_19015 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19015) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19153 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19153) > _19153:
                                        mem[_19153 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19153) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7192 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7192) > _7192:
                                            mem[_7192 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7192) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7273 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7273) > _7273:
                                        mem[_7273 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7273) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7197 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7197) > _7197:
                                            mem[_7197 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7197) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7276 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7276) > _7276:
                                        mem[_7276 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7276) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18834 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18834) > _18834:
                                                mem[_18834 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18834) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19027 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19027) > _19027:
                                            mem[_19027 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19027) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19028 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19028) > _19028:
                                                mem[_19028 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19028) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19156 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19156) > _19156:
                                            mem[_19156 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19156) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18839 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18839) > _18839:
                                                mem[_18839 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18839) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19032 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19032) > _19032:
                                            mem[_19032 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19032) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19033 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19033) > _19033:
                                                mem[_19033 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19033) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19159 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19159) > _19159:
                                            mem[_19159 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19159) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18844 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18844) > _18844:
                                                mem[_18844 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18844) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19037 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19037) > _19037:
                                            mem[_19037 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19037) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19038 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19038) > _19038:
                                                mem[_19038 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19038) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19162 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19162) > _19162:
                                            mem[_19162 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19162) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18849 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18849) > _18849:
                                                mem[_18849 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18849) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19042 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19042) > _19042:
                                            mem[_19042 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19042) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19043 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19043) > _19043:
                                                mem[_19043 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19043) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19165 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19165) > _19165:
                                            mem[_19165 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19165) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13362 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(_13362)
                                if ceil32(_13362) > _13362:
                                    mem[_13362 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13362) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13426 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(_13426)
                            if ceil32(_13426) > _13426:
                                mem[_13426 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13426) + -mem[64] + 64
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13367 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(_13367)
                            if ceil32(_13367) > _13367:
                                mem[_13367 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13367) + -mem[64] + 64
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _13429 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_13429) > _13429:
                                    mem[_13429 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13429) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23582 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23582) > _23582:
                                                mem[_23582 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23582) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23791 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23791) > _23791:
                                            mem[_23791 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23791) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23792 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23792) > _23792:
                                                mem[_23792 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23792) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23904 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23904) > _23904:
                                            mem[_23904 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23904) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23587 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23587) > _23587:
                                                mem[_23587 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23587) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23796 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23796) > _23796:
                                            mem[_23796 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23796) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23797 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23797) > _23797:
                                                mem[_23797 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23797) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23907 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23907) > _23907:
                                            mem[_23907 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23907) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23592 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23592) > _23592:
                                                mem[_23592 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23592) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23801 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23801) > _23801:
                                            mem[_23801 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23801) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23802 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23802) > _23802:
                                                mem[_23802 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23802) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23910 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23910) > _23910:
                                            mem[_23910 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23910) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23597 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23597) > _23597:
                                                mem[_23597 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23597) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23806 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23806) > _23806:
                                            mem[_23806 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23806) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23807 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23807) > _23807:
                                                mem[_23807 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23807) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23913 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23913) > _23913:
                                            mem[_23913 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23913) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7204 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7204) > _7204:
                                        mem[_7204 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7204) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7281 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7281) > _7281:
                                    mem[_7281 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7281) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7209 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7209) > _7209:
                                        mem[_7209 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7209) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7284 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7284) > _7284:
                                    mem[_7284 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7284) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18854 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18854) > _18854:
                                            mem[_18854 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18854) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19047 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19047) > _19047:
                                        mem[_19047 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19047) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19048 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19048) > _19048:
                                            mem[_19048 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19048) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19168 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19168) > _19168:
                                        mem[_19168 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19168) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18859 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18859) > _18859:
                                            mem[_18859 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18859) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19052 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19052) > _19052:
                                        mem[_19052 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19052) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19053 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19053) > _19053:
                                            mem[_19053 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19053) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19171 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19171) > _19171:
                                        mem[_19171 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19171) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18864 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18864) > _18864:
                                            mem[_18864 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18864) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19057 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19057) > _19057:
                                        mem[_19057 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19057) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19058 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19058) > _19058:
                                            mem[_19058 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19058) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19174 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19174) > _19174:
                                        mem[_19174 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19174) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18869 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18869) > _18869:
                                            mem[_18869 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18869) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19062 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19062) > _19062:
                                        mem[_19062 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19062) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19063 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19063) > _19063:
                                            mem[_19063 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19063) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19177 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19177) > _19177:
                                        mem[_19177 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19177) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7218 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7218) > _7218:
                                            mem[_7218 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7218) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7290 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7290) > _7290:
                                        mem[_7290 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7290) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7223 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7223) > _7223:
                                            mem[_7223 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7223) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7293 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7293) > _7293:
                                        mem[_7293 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7293) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18882 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18882) > _18882:
                                                mem[_18882 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18882) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19075 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19075) > _19075:
                                            mem[_19075 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19075) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19076 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19076) > _19076:
                                                mem[_19076 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19076) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19180 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19180) > _19180:
                                            mem[_19180 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19180) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18887 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18887) > _18887:
                                                mem[_18887 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18887) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19080 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19080) > _19080:
                                            mem[_19080 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19080) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19081 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19081) > _19081:
                                                mem[_19081 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19081) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19183 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19183) > _19183:
                                            mem[_19183 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19183) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18892 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18892) > _18892:
                                                mem[_18892 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18892) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19085 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19085) > _19085:
                                            mem[_19085 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19085) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19086 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19086) > _19086:
                                                mem[_19086 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19086) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19186 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19186) > _19186:
                                            mem[_19186 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19186) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18897 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18897) > _18897:
                                                mem[_18897 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18897) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19090 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19090) > _19090:
                                            mem[_19090 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19090) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _19091 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_19091) > _19091:
                                                mem[_19091 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_19091) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19189 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19189) > _19189:
                                            mem[_19189 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19189) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13390 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var89001 = ceil32(_13390)
                                if ceil32(_13390) > _13390:
                                    mem[_13390 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13390) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13434 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var90001 = ceil32(_13434)
                            if ceil32(_13434) > _13434:
                                mem[_13434 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13434) + -mem[64] + 64
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13395 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var90001 = ceil32(_13395)
                            if ceil32(_13395) > _13395:
                                mem[_13395 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13395) + -mem[64] + 64
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _13437 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_13437) > _13437:
                                    mem[_13437 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13437) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    s = 0
                    idx = arg1
                    while idx:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23634 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23634) > _23634:
                                                mem[_23634 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23634) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23843 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23843) > _23843:
                                            mem[_23843 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23843) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23844 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23844) > _23844:
                                                mem[_23844 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23844) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23916 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23916) > _23916:
                                            mem[_23916 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23916) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23639 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23639) > _23639:
                                                mem[_23639 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23639) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23848 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23848) > _23848:
                                            mem[_23848 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23848) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23849 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23849) > _23849:
                                                mem[_23849 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23849) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23919 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23919) > _23919:
                                            mem[_23919 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23919) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23644 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23644) > _23644:
                                                mem[_23644 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23644) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23853 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23853) > _23853:
                                            mem[_23853 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23853) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23854 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23854) > _23854:
                                                mem[_23854 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23854) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23922 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23922) > _23922:
                                            mem[_23922 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23922) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23649 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23649) > _23649:
                                                mem[_23649 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23649) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23858 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23858) > _23858:
                                            mem[_23858 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23858) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23859 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23859) > _23859:
                                                mem[_23859 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23859) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23925 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23925) > _23925:
                                            mem[_23925 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23925) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7126 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7126) > _7126:
                                    mem[_7126 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7126) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7230 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7230) > _7230:
                                mem[_7230 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7230) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7131 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7131) > _7131:
                                    mem[_7131 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7131) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7233 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7233) > _7233:
                                mem[_7233 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7233) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18710 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18710) > _18710:
                                        mem[_18710 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18710) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18903 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18903) > _18903:
                                    mem[_18903 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18903) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18904 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18904) > _18904:
                                        mem[_18904 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18904) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19096 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19096) > _19096:
                                    mem[_19096 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19096) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18715 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18715) > _18715:
                                        mem[_18715 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18715) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18908 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18908) > _18908:
                                    mem[_18908 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18908) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18909 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18909) > _18909:
                                        mem[_18909 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18909) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19099 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19099) > _19099:
                                    mem[_19099 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19099) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18720 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18720) > _18720:
                                        mem[_18720 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18720) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18913 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18913) > _18913:
                                    mem[_18913 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18913) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18914 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18914) > _18914:
                                        mem[_18914 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18914) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19102 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19102) > _19102:
                                    mem[_19102 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19102) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18725 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18725) > _18725:
                                        mem[_18725 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18725) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18918 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18918) > _18918:
                                    mem[_18918 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18918) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18919 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18919) > _18919:
                                        mem[_18919 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18919) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19105 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19105) > _19105:
                                    mem[_19105 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19105) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        else:
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7140 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7140) > _7140:
                                        mem[_7140 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7140) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7239 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7239) > _7239:
                                    mem[_7239 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7239) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7145 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7145) > _7145:
                                        mem[_7145 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7145) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7242 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7242) > _7242:
                                    mem[_7242 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7242) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18738 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18738) > _18738:
                                            mem[_18738 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18738) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18931 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18931) > _18931:
                                        mem[_18931 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18931) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18932 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18932) > _18932:
                                            mem[_18932 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18932) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19108 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19108) > _19108:
                                        mem[_19108 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19108) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18743 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18743) > _18743:
                                            mem[_18743 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18743) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18936 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18936) > _18936:
                                        mem[_18936 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18936) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18937 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18937) > _18937:
                                            mem[_18937 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18937) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19111 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19111) > _19111:
                                        mem[_19111 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19111) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18748 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18748) > _18748:
                                            mem[_18748 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18748) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18941 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18941) > _18941:
                                        mem[_18941 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18941) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18942 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18942) > _18942:
                                            mem[_18942 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18942) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19114 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19114) > _19114:
                                        mem[_19114 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19114) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18753 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18753) > _18753:
                                            mem[_18753 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18753) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18946 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18946) > _18946:
                                        mem[_18946 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18946) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18947 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18947) > _18947:
                                            mem[_18947 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18947) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19117 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19117) > _19117:
                                        mem[_19117 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19117) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                mem[0] = 11
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var86001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                            mem[64] = 0
                            _13306 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var87001 = ceil32(_13306)
                            if ceil32(_13306) > _13306:
                                mem[_13306 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13306) + -mem[64] + 64
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        mem[64] = 0
                        _13410 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(_13410)
                        if ceil32(_13410) > _13410:
                            mem[_13410 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13410) + -mem[64] + 64
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        mem[64] = 0
                        _13311 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(_13311)
                        if ceil32(_13311) > _13311:
                            mem[_13311 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13311) + -mem[64] + 64
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _13413 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_13413) > _13413:
                                mem[_13413 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13413) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1) + 128] = s
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    if var55001 < stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + var55001 + 192] = mem[var55001 + 128]
                        var55001 = var55001 + 32
                        continue 
                    if var55001 <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23478 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23478) > _23478:
                                            mem[_23478 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23478) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23687 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23687) > _23687:
                                        mem[_23687 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23687) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23688 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23688) > _23688:
                                            mem[_23688 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23688) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23880 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23880) > _23880:
                                        mem[_23880 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23880) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23483 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23483) > _23483:
                                            mem[_23483 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23483) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23692 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23692) > _23692:
                                        mem[_23692 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23692) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23693 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23693) > _23693:
                                            mem[_23693 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23693) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23883 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23883) > _23883:
                                        mem[_23883 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23883) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23488 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23488) > _23488:
                                            mem[_23488 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23488) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23697 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23697) > _23697:
                                        mem[_23697 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23697) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23698 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23698) > _23698:
                                            mem[_23698 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23698) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23886 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23886) > _23886:
                                        mem[_23886 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23886) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23493 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23493) > _23493:
                                            mem[_23493 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23493) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23702 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23702) > _23702:
                                        mem[_23702 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23702) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23703 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23703) > _23703:
                                            mem[_23703 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23703) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23889 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23889) > _23889:
                                        mem[_23889 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23889) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if stor11.length.field_1:
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7166 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7166) > _7166:
                                    mem[_7166 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7166) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7256 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7256) > _7256:
                                mem[_7256 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7256) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7171 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7171) > _7171:
                                    mem[_7171 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7171) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    else:
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7259 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7259) > _7259:
                                mem[_7259 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7259) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18786 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18786) > _18786:
                                        mem[_18786 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18786) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18979 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18979) > _18979:
                                    mem[_18979 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18979) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18980 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18980) > _18980:
                                        mem[_18980 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18980) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19132 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19132) > _19132:
                                    mem[_19132 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19132) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18791 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18791) > _18791:
                                        mem[_18791 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18791) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18984 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18984) > _18984:
                                    mem[_18984 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18984) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18985 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18985) > _18985:
                                        mem[_18985 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18985) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19135 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19135) > _19135:
                                    mem[_19135 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19135) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18796 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18796) > _18796:
                                        mem[_18796 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18796) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18989 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18989) > _18989:
                                    mem[_18989 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18989) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18990 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18990) > _18990:
                                        mem[_18990 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18990) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19138 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19138) > _19138:
                                    mem[_19138 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19138) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18801 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18801) > _18801:
                                        mem[_18801 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18801) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18994 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18994) > _18994:
                                    mem[_18994 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18994) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18995 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18995) > _18995:
                                        mem[_18995 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18995) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _19141 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_19141) > _19141:
                                    mem[_19141 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19141) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        else:
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while stor11.length.field_1 + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        mem[64] = 0
                        _13334 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(_13334)
                        if ceil32(_13334) > _13334:
                            mem[_13334 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13334) + -mem[64] + 64
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    mem[64] = 0
                    _13418 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var89001 = ceil32(_13418)
                    if ceil32(_13418) > _13418:
                        mem[_13418 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13418) + -mem[64] + 64
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    mem[64] = 0
                    _13339 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var89001 = ceil32(_13339)
                    if ceil32(_13339) > _13339:
                        mem[_13339 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13339) + -mem[64] + 64
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _13421 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_13421) > _13421:
                            mem[_13421 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13421) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23530 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23530) > _23530:
                                        mem[_23530 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23530) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23739 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23739) > _23739:
                                    mem[_23739 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23739) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23740 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23740) > _23740:
                                        mem[_23740 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23740) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23892 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23892) > _23892:
                                    mem[_23892 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23892) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23535 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23535) > _23535:
                                        mem[_23535 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23535) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23744 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23744) > _23744:
                                    mem[_23744 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23744) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23745 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23745) > _23745:
                                        mem[_23745 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23745) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23895 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23895) > _23895:
                                    mem[_23895 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23895) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23540 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23540) > _23540:
                                        mem[_23540 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23540) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23749 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23749) > _23749:
                                    mem[_23749 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23749) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23750 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23750) > _23750:
                                        mem[_23750 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23750) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23898 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23898) > _23898:
                                    mem[_23898 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23898) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23545 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23545) > _23545:
                                        mem[_23545 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23545) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23754 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23754) > _23754:
                                    mem[_23754 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23754) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _23755 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_23755) > _23755:
                                        mem[_23755 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23755) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _23901 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_23901) > _23901:
                                    mem[_23901 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23901) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 128] = 1
        mem[ceil32(stor11.length.field_1) + 160] = '0'
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7152 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7152) > _7152:
                            mem[_7152 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7152) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7247 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7247) > _7247:
                        mem[_7247 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7247) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                else:
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7157 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7157) > _7157:
                            mem[_7157 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7157) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7250 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7250) > _7250:
                        mem[_7250 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7250) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor11.length.field_1) + 128] = s
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _12492 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18758 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18758) > _18758:
                            mem[_18758 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18758) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22054 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192] = 32
                    _22886 = mem[_22054]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224] = mem[_22054]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 256 len ceil32(_22886)] = mem[_22054 + 32 len ceil32(_22886)]
                    if ceil32(_22886) > _22886:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + _22886 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224 len ceil32(_22886) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18951 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18951) > _18951:
                        mem[_18951 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18951) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22055 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192] = 32
                _22887 = mem[_22055]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224] = mem[_22055]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 256 len ceil32(_22887)] = mem[_22055 + 32 len ceil32(_22887)]
                if ceil32(_22887) > _22887:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + _22887 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224 len ceil32(_22887) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18952 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18952) > _18952:
                        mem[_18952 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18952) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22056 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192] = 32
                _22888 = mem[_22056]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224] = mem[_22056]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 256 len ceil32(_22888)] = mem[_22056 + 32 len ceil32(_22888)]
                if ceil32(_22888) > _22888:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + _22888 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224 len ceil32(_22888) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19120 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19120) > _19120:
                    mem[_19120 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19120) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22057 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 192] = 32
            _22889 = mem[_22057]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224] = mem[_22057]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 256 len ceil32(_22889)] = mem[_22057 + 32 len ceil32(_22889)]
            if ceil32(_22889) > _22889:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + _22889 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12492 + stor12.length.field_1 + 224 len ceil32(_22889) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _12594 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18763 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18763) > _18763:
                        mem[_18763 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18763) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22058 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192] = 32
                _22890 = mem[_22058]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224] = mem[_22058]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 256 len ceil32(_22890)] = mem[_22058 + 32 len ceil32(_22890)]
                if ceil32(_22890) > _22890:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + _22890 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224 len ceil32(_22890) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _18956 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18956) > _18956:
                    mem[_18956 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18956) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22059 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192] = 32
            _22891 = mem[_22059]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224] = mem[_22059]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 256 len ceil32(_22891)] = mem[_22059 + 32 len ceil32(_22891)]
            if ceil32(_22891) > _22891:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + _22891 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224 len ceil32(_22891) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _18957 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18957) > _18957:
                    mem[_18957 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18957) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22060 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192] = 32
            _22892 = mem[_22060]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224] = mem[_22060]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 256 len ceil32(_22892)] = mem[_22060 + 32 len ceil32(_22892)]
            if ceil32(_22892) > _22892:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + _22892 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224 len ceil32(_22892) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _19123 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19123) > _19123:
                mem[_19123 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19123) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22061 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 192] = 32
        _22893 = mem[_22061]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224] = mem[_22061]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 256 len ceil32(_22893)] = mem[_22061 + 32 len ceil32(_22893)]
        if ceil32(_22893) > _22893:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + _22893 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12594 + stor12.length.field_1 + 224 len ceil32(_22893) + 32], 
    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
        _12493 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18768 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18768) > _18768:
                        mem[_18768 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18768) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22062 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192] = 32
                _22894 = mem[_22062]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224] = mem[_22062]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 256 len ceil32(_22894)] = mem[_22062 + 32 len ceil32(_22894)]
                if ceil32(_22894) > _22894:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + _22894 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224 len ceil32(_22894) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _18961 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18961) > _18961:
                    mem[_18961 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18961) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22063 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192] = 32
            _22895 = mem[_22063]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224] = mem[_22063]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 256 len ceil32(_22895)] = mem[_22063 + 32 len ceil32(_22895)]
            if ceil32(_22895) > _22895:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + _22895 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224 len ceil32(_22895) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _18962 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18962) > _18962:
                    mem[_18962 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18962) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22064 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192] = 32
            _22896 = mem[_22064]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224] = mem[_22064]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 256 len ceil32(_22896)] = mem[_22064 + 32 len ceil32(_22896)]
            if ceil32(_22896) > _22896:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + _22896 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224 len ceil32(_22896) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _19126 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19126) > _19126:
                mem[_19126 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19126) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22065 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 192] = 32
        _22897 = mem[_22065]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224] = mem[_22065]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 256 len ceil32(_22897)] = mem[_22065 + 32 len ceil32(_22897)]
        if ceil32(_22897) > _22897:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + _22897 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12493 + stor12.length.field_1 + 224 len ceil32(_22897) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    _12595 = mem[ceil32(stor11.length.field_1) + 128]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _18773 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_18773) > _18773:
                    mem[_18773 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18773) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22066 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192] = 32
            _22898 = mem[_22066]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224] = mem[_22066]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 256 len ceil32(_22898)] = mem[_22066 + 32 len ceil32(_22898)]
            if ceil32(_22898) > _22898:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + _22898 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224 len ceil32(_22898) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _18966 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_18966) > _18966:
                mem[_18966 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_18966) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22067 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192] = 32
        _22899 = mem[_22067]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224] = mem[_22067]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 256 len ceil32(_22899)] = mem[_22067 + 32 len ceil32(_22899)]
        if ceil32(_22899) > _22899:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + _22899 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224 len ceil32(_22899) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _18967 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_18967) > _18967:
                mem[_18967 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_18967) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22068 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192] = 32
        _22900 = mem[_22068]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224] = mem[_22068]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 256 len ceil32(_22900)] = mem[_22068 + 32 len ceil32(_22900)]
        if ceil32(_22900) > _22900:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + _22900 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224 len ceil32(_22900) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor12.length) != 1:
        mem[64] = 0
        _19129 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(_19129) > _19129:
            mem[_19129 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_19129) + -mem[64] + 64
    mem[0] = 12
    idx = 0
    t = 0
    while idx < stor12.length.field_1:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    _22069 = mem[64]
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 192] = 32
    _22901 = mem[_22069]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224] = mem[_22069]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 256 len ceil32(_22901)] = mem[_22069 + 32 len ceil32(_22901)]
    if ceil32(_22901) > _22901:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + _22901 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12595 + stor12.length.field_1 + 224 len ceil32(_22901) + 32], 
}



}
