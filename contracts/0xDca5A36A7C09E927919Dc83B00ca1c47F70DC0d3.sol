contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const _TOTALSUPPLY = 5000


address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
array of struct stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
address royaltiesAddress;
uint256 sub_ee7fc07f;
uint256 maxQuantity;
uint256 price;
uint256 stor16;
uint256 stor17;
uint256 sub_bb0034db;
uint256 stor19;
array of struct stor20;
array of struct stor21;
uint256 status;
uint256 whiteListMaxMint;
uint256 whitelistMerkleRoot;
uint256 sub_2632d5f8;
mapping of uint256 whiteListClaimedBy;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function whiteListClaimedBy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whiteListClaimedBy[arg1]
}

function status() {
    return status
}

function sub_2632d5f8(?) {
    return sub_2632d5f8
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

function royaltiesAddress() {
    return royaltiesAddress
}

function getStatus() {
    return status
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

function whiteListMaxMint() {
    return whiteListMaxMint
}

function owner() {
    return owner
}

function price() {
    return price
}

function whitelistMerkleRoot() {
    return whitelistMerkleRoot
}

function sub_bb0034db(?) {
    return sub_bb0034db
}

function maxQuantity() {
    return maxQuantity
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_ee7fc07f(?) {
    return sub_ee7fc07f
}

function _fallback() payable {
    revert
}

function getPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 and price > -1 / arg1:
        revert with 0, 17
    return (arg1 * price)
}

function sub_aebceff4(?) {
    require calldata.size - 4 >= 32
    if arg1 and sub_2632d5f8 > -1 / arg1:
        revert with 0, 17
    return (arg1 * sub_2632d5f8)
}

function sub_097f0e3c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function sub_631c58f0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxQuantity = arg1
}

function sub_8825b014(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2632d5f8 = arg1
}

function sub_91a84bc2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ee7fc07f = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_c79df986(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb0034db = arg1
}

function setStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    status = arg1
}

function setWhiteListMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whiteListMaxMint = arg1
}

function setWhitelistMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelistMerkleRoot = arg1
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltiesAddress = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return royaltiesAddress, 0
    if arg2 and stor19 > -1 / arg2:
        revert with 0, 17
    return royaltiesAddress, arg2 * stor19 / 100
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[msg.sender][address(arg1)] = uint8(arg2)
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
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function tokensOfOwner(address arg1) {
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
        mem[32] = sha3(address(arg1), 8)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_5c37809d(?) {
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
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
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
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while (uint255(stor20.length) * 0.5) + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_e5ec56a0(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == address(cd[36])
    mem[ceil32(32 * ('cd', 4).length) + 129] = address(cd[36])
    mem[ceil32(32 * ('cd', 4).length) + 97] = 20
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if s + sha3(address(cd[36])) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(address(cd[36]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(address(cd[36]))
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    return (s == whitelistMerkleRoot)
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor4[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if royaltiesAddress:
        if arg1:
            if not ext_code.size(arg1):
                require ext_code.size(royaltiesAddress)
                call royaltiesAddress.claimCommunity(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function _baseURI() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[(uint255(stor7.length) * 0.5) + ceil32(uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor4[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if royaltiesAddress:
        if arg1:
            if not ext_code.size(arg1):
                require ext_code.size(royaltiesAddress)
                call royaltiesAddress.claimCommunity(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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

function airDrop(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length > !arg2:
        revert with 0, 17
    if tokenByIndex.length + arg2 > 5000:
        revert with 0, 'reached max supply'
    idx = 0
    while idx < arg2:
        _228 = mem[64]
        mem[64] = mem[64] + 32
        mem[_228] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor16] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor16
        if arg1:
            if not arg1:
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = arg1
                emit Transfer(0, arg1, stor16);
                if not royaltiesAddress:
                    if ext_code.size(arg1):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_469] == Mask(32, 224, mem[_469])
                        if Mask(32, 224, mem[_469]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(arg1):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_471] == Mask(32, 224, mem[_471])
                        if Mask(32, 224, mem[_471]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not arg1:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = stor16
                stor9[stor16] = balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = arg1
                emit Transfer(0, arg1, stor16);
                if not royaltiesAddress:
                    if ext_code.size(arg1):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_473] == Mask(32, 224, mem[_473])
                        if Mask(32, 224, mem[_473]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(arg1):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_475] == Mask(32, 224, mem[_475])
                        if Mask(32, 224, mem[_475]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor16] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor16]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor16]
            stor11[stor16] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = stor16
            mem[32] = 3
            ownerOf[stor16] = arg1
            emit Transfer(0, arg1, stor16);
            if not royaltiesAddress:
                if ext_code.size(arg1):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _228 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _477 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_477] == Mask(32, 224, mem[_477])
                    if Mask(32, 224, mem[_477]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(arg1):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _228 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == Mask(32, 224, mem[_479])
                    if Mask(32, 224, mem[_479]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if stor16 == -1:
            revert with 0, 17
        stor16++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_9cc2a59c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor17 > !arg2:
        revert with 0, 17
    if stor17 + arg2 > 500:
        revert with 0, 'reached max supply'
    idx = 0
    while idx < arg2:
        _228 = mem[64]
        mem[64] = mem[64] + 32
        mem[_228] = 0
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor17]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor17] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor17
        if address(arg1):
            if not address(arg1):
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor17
                mem[32] = 3
                ownerOf[stor17] = address(arg1)
                emit Transfer(0, address(arg1), stor17);
                if not royaltiesAddress:
                    if ext_code.size(address(arg1)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor17
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor17, 128, 0
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
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_469] == Mask(32, 224, mem[_469])
                        if Mask(32, 224, mem[_469]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(address(arg1)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor17
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor17, 128, 0
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
                        _471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_471] == Mask(32, 224, mem[_471])
                        if Mask(32, 224, mem[_471]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not address(arg1):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = stor17
                stor9[stor17] = balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > -2:
                    revert with 0, 17
                balanceOf[address(arg1)]++
                mem[0] = stor17
                mem[32] = 3
                ownerOf[stor17] = address(arg1)
                emit Transfer(0, address(arg1), stor17);
                if not royaltiesAddress:
                    if ext_code.size(address(arg1)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor17
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor17, 128, 0
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
                        _473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_473] == Mask(32, 224, mem[_473])
                        if Mask(32, 224, mem[_473]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(address(arg1)):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor17
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _228 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor17, 128, 0
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
                        _475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_475] == Mask(32, 224, mem[_475])
                        if Mask(32, 224, mem[_475]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor17] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor17]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor17]
            stor11[stor17] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 0, 17
            balanceOf[address(arg1)]++
            mem[0] = stor17
            mem[32] = 3
            ownerOf[stor17] = address(arg1)
            emit Transfer(0, address(arg1), stor17);
            if not royaltiesAddress:
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor17
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _228 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor17, 128, 0
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
                    _477 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_477] == Mask(32, 224, mem[_477])
                    if Mask(32, 224, mem[_477]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(address(arg1)):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor17
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _228 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(arg1))
                    call address(arg1).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor17, 128, 0
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
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == Mask(32, 224, mem[_479])
                    if Mask(32, 224, mem[_479]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if stor17 == -1:
            revert with 0, 17
        stor17++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 5000:
        revert with 0, 'Sale end'
    if status != 2:
        revert with 0, 'Sale is not active '
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be lesser then MaxSupply'
    if stor16 > !arg1:
        revert with 0, 17
    if stor16 + arg1 < 1:
        revert with 0, 17
    if stor16 + arg1 - 1 > sub_ee7fc07f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be lesser then Batch Supply'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if price * arg1 < msg.value:
        revert with 0, 'Sent ether value is incorrect'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 4
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    if balanceOf[address(msg.sender)] + arg1 > maxQuantity:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Chosen Amount exceeds MaxQuantity'
    idx = 0
    while idx < arg1:
        _239 = mem[64]
        mem[64] = mem[64] + 32
        mem[_239] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor16] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor16
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, stor16);
                if not royaltiesAddress:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _239 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _480 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_480] == Mask(32, 224, mem[_480])
                        if Mask(32, 224, mem[_480]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _239 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_482] == Mask(32, 224, mem[_482])
                        if Mask(32, 224, mem[_482]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor16
                stor9[stor16] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, stor16);
                if not royaltiesAddress:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _239 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_484] == Mask(32, 224, mem[_484])
                        if Mask(32, 224, mem[_484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _239 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_486] == Mask(32, 224, mem[_486])
                        if Mask(32, 224, mem[_486]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor16] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor16]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor16]
            stor11[stor16] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor16
            mem[32] = 3
            ownerOf[stor16] = msg.sender
            emit Transfer(0, msg.sender, stor16);
            if not royaltiesAddress:
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _239 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _488 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_488] == Mask(32, 224, mem[_488])
                    if Mask(32, 224, mem[_488]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _239 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_490] == Mask(32, 224, mem[_490])
                    if Mask(32, 224, mem[_490]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if stor16 == -1:
            revert with 0, 17
        stor16++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_10157fc3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if status != 1:
        revert with 0, 'Sale is not active '
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be lesser then MaxSupply'
    if stor16 > !arg1:
        revert with 0, 17
    if stor16 + arg1 < 1:
        revert with 0, 17
    if stor16 + arg1 - 1 > sub_ee7fc07f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be lesser then Whitelist MaxSupply'
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 160] = address(msg.sender)
    mem[(32 * arg2.length) + 128] = 20
    mem[64] = (32 * arg2.length) + 180
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if s + sha3(msg.sender) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(msg.sender)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(msg.sender)
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    if s != whitelistMerkleRoot:
        revert with 0, 'You are not in presale'
    if arg1 and sub_2632d5f8 > -1 / arg1:
        revert with 0, 17
    if msg.value < arg1 * sub_2632d5f8:
        revert with 0, 'Try to send more ETH'
    if whiteListClaimedBy[msg.sender] > !arg1:
        revert with 0, 17
    whiteListClaimedBy[msg.sender] += arg1
    mem[0] = msg.sender
    mem[32] = 26
    if whiteListClaimedBy[msg.sender] > whiteListMaxMint:
        revert with 0, 'Purchase exceeds max allowed'
    idx = 0
    while idx < arg1:
        _484 = mem[64]
        mem[64] = mem[64] + 32
        mem[_484] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor16] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor16
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, stor16);
                if not royaltiesAddress:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _484 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _725 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_725] == Mask(32, 224, mem[_725])
                        if Mask(32, 224, mem[_725]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _484 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_727] == Mask(32, 224, mem[_727])
                        if Mask(32, 224, mem[_727]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor16
                stor9[stor16] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor16
                mem[32] = 3
                ownerOf[stor16] = msg.sender
                emit Transfer(0, msg.sender, stor16);
                if not royaltiesAddress:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _484 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_729] == Mask(32, 224, mem[_729])
                        if Mask(32, 224, mem[_729]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor16
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _484 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor16, 128, 0
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
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == Mask(32, 224, mem[_731])
                        if Mask(32, 224, mem[_731]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor16] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor16]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor16]
            stor11[stor16] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor16
            mem[32] = 3
            ownerOf[stor16] = msg.sender
            emit Transfer(0, msg.sender, stor16);
            if not royaltiesAddress:
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _484 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _733 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_733] == Mask(32, 224, mem[_733])
                    if Mask(32, 224, mem[_733]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor16
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _484 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor16, 128, 0
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
                    _735 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_735] == Mask(32, 224, mem[_735])
                    if Mask(32, 224, mem[_735]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if stor16 == -1:
            revert with 0, 17
        stor16++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if arg1 > sub_bb0034db:
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor21.length):
                if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor21.length):
                    if 31 < uint255(stor21.length) * 0.5:
                        mem[128] = uint256(stor21.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor21.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor21[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                    mem[128] = 256 * stor21.length.field_8
            else:
                if bool(stor21.length) == stor21.length.field_1 < 32:
                    revert with 0, 34
                if stor21.length.field_1:
                    if 31 < stor21.length.field_1:
                        mem[128] = uint256(stor21.field_0)
                        idx = 128
                        s = 0
                        while stor21.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor21[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                    mem[128] = 256 * stor21.length.field_8
            mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(uint255(stor21.length) * 0.5)] = mem[128 len ceil32(uint255(stor21.length) * 0.5)]
            if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                mem[(uint255(stor21.length) * 0.5) + ceil32(uint255(stor21.length) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)], mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor21.length) * 0.5)]), 
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor21.length):
                if 31 < uint255(stor21.length) * 0.5:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor21.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
        if ceil32(stor21.length.field_1) > stor21.length.field_1:
            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + 192] = 0
        return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20.length):
            if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor20.length):
                if uint255(stor20.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor20.length) * 0.5) + 224 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 231] = 32
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 263] = mem[ceil32(uint255(stor20.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])] = mem[ceil32(uint255(stor20.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192]) > mem[ceil32(uint255(stor20.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor20.length) * 0.5) + 192] + ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295] = 0
                    return Array(len=mem[ceil32(uint255(stor20.length) * 0.5) + 192], data=mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor20.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor20.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor20.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor20.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
                mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 193 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 128])] = mem[ceil32(uint255(stor20.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 198] = 32
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 230] = mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262] = 0
                return 32, mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 230 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor20.length) * 0.5:
                mem[128] = 256 * stor20.length.field_8
            else:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while (uint255(stor20.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 0, 34
            if stor20.length.field_1:
                if 31 >= stor20.length.field_1:
                    mem[128] = 256 * stor20.length.field_8
                else:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint255(stor20.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor20.length) * 0.5) + 224 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 231] = 32
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 263] = mem[ceil32(uint255(stor20.length) * 0.5) + 192]
            mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])] = mem[ceil32(uint255(stor20.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192]) > mem[ceil32(uint255(stor20.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor20.length) * 0.5) + 192] + ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295] = 0
            return Array(len=mem[ceil32(uint255(stor20.length) * 0.5) + 192], data=mem[ceil32(uint255(stor20.length) * 0.5) + (uint255(stor20.length) * 0.5) + 295 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor20.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor20.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor20.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor20.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor20.length) * 0.5)] = mem[128 len ceil32(uint255(stor20.length) * 0.5)]
        mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 193 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 128])] = mem[ceil32(uint255(stor20.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 198] = 32
        mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 230] = mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262] = 0
        return Array(len=mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor20.length) * 0.5) + 128] + ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + (uint255(stor20.length) * 0.5) + 262 len ceil32(mem[ceil32(uint255(stor20.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 0, 34
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20.length):
            if 31 >= uint255(stor20.length) * 0.5:
                mem[128] = 256 * stor20.length.field_8
            else:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while (uint255(stor20.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        if stor20.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor20.length.field_1) + 224 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 231] = 32
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 263] = mem[ceil32(stor20.length.field_1) + 192]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])] = mem[ceil32(stor20.length.field_1) + 224 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor20.length.field_1) + 192]) > mem[ceil32(stor20.length.field_1) + 192]:
                mem[mem[ceil32(stor20.length.field_1) + 192] + ceil32(stor20.length.field_1) + stor20.length.field_1 + 295] = 0
            return Array(len=mem[ceil32(stor20.length.field_1) + 192], data=mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]), 
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
        mem[ceil32(stor20.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor20.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor20.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor20.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193 len ceil32(mem[ceil32(stor20.length.field_1) + 128])] = mem[ceil32(stor20.length.field_1) + 160 len ceil32(mem[ceil32(stor20.length.field_1) + 128])]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 198] = 32
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 230] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor20.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262] = 0
        return Array(len=mem[ceil32(stor20.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 0, 34
    if not stor20.length.field_1:
        if stor20.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor20.length.field_1) + 224 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 231] = 32
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 263] = mem[ceil32(stor20.length.field_1) + 192]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])] = mem[ceil32(stor20.length.field_1) + 224 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor20.length.field_1) + 192]) > mem[ceil32(stor20.length.field_1) + 192]:
                mem[mem[ceil32(stor20.length.field_1) + 192] + ceil32(stor20.length.field_1) + stor20.length.field_1 + 295] = 0
            return Array(len=mem[ceil32(stor20.length.field_1) + 192], data=mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]), 
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
        mem[ceil32(stor20.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor20.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor20.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor20.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193 len ceil32(mem[ceil32(stor20.length.field_1) + 128])] = mem[ceil32(stor20.length.field_1) + 160 len ceil32(mem[ceil32(stor20.length.field_1) + 128])]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 198] = 32
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 230] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor20.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262] = 0
        return Array(len=mem[ceil32(stor20.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]), 
    if 31 >= stor20.length.field_1:
        mem[128] = 256 * stor20.length.field_8
        if stor20.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor20.length.field_1) + 224 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 231] = 32
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 263] = mem[ceil32(stor20.length.field_1) + 192]
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])] = mem[ceil32(stor20.length.field_1) + 224 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor20.length.field_1) + 192]) > mem[ceil32(stor20.length.field_1) + 192]:
                mem[mem[ceil32(stor20.length.field_1) + 192] + ceil32(stor20.length.field_1) + stor20.length.field_1 + 295] = 0
            return Array(len=mem[ceil32(stor20.length.field_1) + 192], data=mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]), 
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
        mem[ceil32(stor20.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor20.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor20.length.field_1) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor20.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193 len ceil32(mem[ceil32(stor20.length.field_1) + 128])] = mem[ceil32(stor20.length.field_1) + 160 len ceil32(mem[ceil32(stor20.length.field_1) + 128])]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 198] = 32
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 230] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]:
            mem[mem[ceil32(stor20.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262] = 0
        return Array(len=mem[ceil32(stor20.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]), 
    mem[128] = uint256(stor20.field_0)
    idx = 128
    s = 0
    while stor20.length.field_1 + 96 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor20.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor20.length.field_1) + 224 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 224] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 225] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 226] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 231] = 32
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 263] = mem[ceil32(stor20.length.field_1) + 192]
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])] = mem[ceil32(stor20.length.field_1) + 224 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor20.length.field_1) + 192]) > mem[ceil32(stor20.length.field_1) + 192]:
            mem[mem[ceil32(stor20.length.field_1) + 192] + ceil32(stor20.length.field_1) + stor20.length.field_1 + 295] = 0
        return Array(len=mem[ceil32(stor20.length.field_1) + 192], data=mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 295 len ceil32(mem[ceil32(stor20.length.field_1) + 192])]), 
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
    mem[ceil32(stor20.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor20.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor20.length.field_1) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor20.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 192] = 0x2f00000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193 len ceil32(mem[ceil32(stor20.length.field_1) + 128])] = mem[ceil32(stor20.length.field_1) + 160 len ceil32(mem[ceil32(stor20.length.field_1) + 128])]
    mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 198] = 32
    mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 230] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]
    mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor20.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor20.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160])]), 
    mem[mem[ceil32(stor20.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 262] = 0
    return 32, mem[mem[ceil32(stor20.length.field_1) + 128] + ceil32(stor20.length.field_1) + ceil32(s) + stor20.length.field_1 + 230 len ceil32(mem[ceil32(stor20.length.field_1) + ceil32(s) + 160]) + 32], 
}



}
