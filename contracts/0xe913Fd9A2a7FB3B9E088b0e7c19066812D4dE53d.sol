contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#  - tokenURI(uint256 arg1)
#  - buy(uint256 arg1)
#
const MAX_HUSKY = 5000


mapping of uint8 stor0;
mapping of struct bazaar;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
array of struct stor9;
array of struct stor11;
uint8 hasSaleStarted; offset 160
uint128 stor12; offset 160
address owner;
uint256 stor13;
uint256 stor14;
array of address persons;
array of struct nftForSale;
mapping of uint256 nbNFTHolders;
mapping of uint256 tokenGrant;
address contractowner;
array of struct stor20;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function nbNFTHolders(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nbNFTHolders[arg1]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function hasSaleStarted() {
    return bool(hasSaleStarted)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 'NH{q', 50
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getTokenGrant(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenGrant[address(arg1)]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    if arg1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[arg1].field_0
}

function contractowner() {
    return contractowner
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    return tokenByIndex[stor5[arg1] - 1].field_256
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function Bazaar(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bazaar[arg1].field_512 >= 5:
        revert with 'NH{q', 33
    return bazaar[arg1].field_0, bazaar[arg1].field_256, bazaar[arg1].field_512
}

function owner() {
    return owner
}

function persons(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < persons.length
    return persons[arg1]
}

function NftForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < nftForSale.length
    return nftForSale[arg1].field_0
}

function tokenGrants(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenGrant[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function pauseDrop() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
}

function startDrop() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < stor14:
        revert with 'NH{q', 17
    call msg.sender with:
       value eth.balance(this.address) - stor14 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addTokenGrant(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if contractowner != msg.sender:
        revert with 0, 'Claim::addTokenGrant: not owner'
    if arg2 <= 0:
        revert with 0, 'Claim::addTokenGrant: zero grant'
    if tokenGrant[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    tokenGrant[address(arg1)] += arg2
    emit Added(arg1, arg2);
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if contractowner != msg.sender:
        revert with 0, 'Claim::changeOwner: not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claim::changeOwner: not valid address'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claim::changeOwner: not valid address'
    contractowner = arg1
    emit ChangedOwner(contractowner, arg1);
}

function claim() {
    if tokenGrant[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claim::claim: availableToClaim is 0'
    tokenGrant[address(msg.sender)] = 0
    if stor14 < tokenGrant[address(msg.sender)]:
        revert with 'NH{q', 17
    stor14 -= tokenGrant[address(msg.sender)]
    call msg.sender with:
       value tokenGrant[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Claimed(msg.sender, tokenGrant[address(msg.sender)]);
}

function getAllNFTForSale() {
    if nftForSale.length:
        mem[128] = uint256(nftForSale.field_0)
        idx = 128
        s = 0
        while (32 * nftForSale.length) + 96 > idx:
            mem[idx + 32] = nftForSale[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=nftForSale.length, data=mem[128 len 32 * nftForSale.length])
    mem[(32 * nftForSale.length) + 128] = 32
    mem[(32 * nftForSale.length) + 160] = nftForSale.length
    mem[(32 * nftForSale.length) + 192 len 32 * nftForSale.length] = mem[128 len 32 * nftForSale.length]
    return memory
      from (32 * nftForSale.length) + 128
       len (96 * nftForSale.length) + 64
}

function setTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == tokenByIndex[stor5[arg1] - 1].field_256
    idx = 0
    s = 0
    while idx < nftForSale.length:
        mem[0] = 16
        if idx == -1:
            revert with 'NH{q', 17
        if nftForSale[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        nftForSale.length++
        nftForSale[nftForSale.length].field_0 = arg1
    bazaar[arg1].field_256 = arg2
    bazaar[arg1].field_512 = 1
    emit ForSale(arg1, arg2);
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not tokenOfOwnerByIndex[address(arg1)]:
        return ''
    if tokenOfOwnerByIndex[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 3
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 3)
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]])
}

function cancelTokenSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    require msg.sender == tokenByIndex[stor5[arg1] - 1].field_256
    bazaar[arg1].field_256 = 0
    idx = 0
    while idx < nftForSale.length:
        mem[0] = 16
        if nftForSale[idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if nftForSale.length < 1:
            revert with 'NH{q', 17
        if nftForSale.length - 1 >= nftForSale.length:
            revert with 'NH{q', 50
        if idx >= nftForSale.length:
            revert with 'NH{q', 50
        nftForSale[idx].field_0 = nftForSale[nftForSale.length].field_0
        if not nftForSale.length:
            revert with 'NH{q', 49
        nftForSale[nftForSale.length].field_0 = 0
        nftForSale.length--
        bazaar[arg1].field_512 = 4
    bazaar[arg1].field_512 = 4
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg2] < 1:
        revert with 'NH{q', 17
    if stor5[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if arg1 == tokenByIndex[stor5[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor5[arg2] - 1].field_256 != msg.sender:
        if not stor7[stor4[stor5[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor5[arg2]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg2] < 1:
        revert with 'NH{q', 17
    if stor5[arg2] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg2] - 1].field_256, arg1, arg2);
}

function setProvenanceHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
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

function name() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function symbol() {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
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

function METADATA_PROVENANCE_HASH() {
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor20.length):
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        else:
            if bool(stor20.length) == stor20.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor20.length.field_1:
                if 31 < stor20.length.field_1:
                    mem[128] = uint256(stor20.field_0)
                    idx = 128
                    s = 0
                    while stor20.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor20[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)])
                mem[128] = 256 * stor20.length.field_8
        mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
        if ceil32(stor20.length.field_1) > stor20.length.field_1:
            mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20.length.field_1), data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
    if bool(stor20.length) == stor20.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor20.length):
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    else:
        if bool(stor20.length) == stor20.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor20.length.field_1:
            if 31 < stor20.length.field_1:
                mem[128] = uint256(stor20.field_0)
                idx = 128
                s = 0
                while stor20.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor20[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)])
            mem[128] = 256 * stor20.length.field_8
    mem[ceil32(stor20.length.field_1) + 192 len ceil32(stor20.length.field_1)] = mem[128 len ceil32(stor20.length.field_1)]
    if ceil32(stor20.length.field_1) > stor20.length.field_1:
        mem[ceil32(stor20.length.field_1) + stor20.length.field_1 + 192] = 0
    return Array(len=stor20.length % 128, data=mem[128 len ceil32(stor20.length.field_1)], mem[(2 * ceil32(stor20.length.field_1)) + 192 len 2 * ceil32(stor20.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[201 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[297 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[393 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
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
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor5[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != msg.sender:
        if not stor5[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[stor5[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor5[arg3]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
    if stor5[arg3] < 1:
        revert with 'NH{q', 17
    if stor5[arg3] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[address(arg1)] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        if tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        if not tokenOfOwnerByIndex[address(arg1)]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor5[arg3]:
        if stor5[arg3] < 1:
            revert with 'NH{q', 17
        if stor5[arg3] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg3] - 1].field_256 = arg2
        tokenByIndex[stor5[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg3] = tokenByIndex.length
    bazaar[arg3].field_256 = 0
    bazaar[arg3].field_512 = 4
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function mintHusky(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require bool(hasSaleStarted) == 1
    if tokenByIndex.length >= 5000:
        revert with 0, 'Sale has already ended'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can craft minimum 1, maximum 20 Husky'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can craft minimum 1, maximum 20 Husky'
    if tokenByIndex.length > -arg1 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg1 > 5000:
        revert with 0, 'Exceeds MAX_HUSKY'
    if stor13 and arg1 > -1 / stor13:
        revert with 'NH{q', 17
    if msg.value < stor13 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ether value sent is below the price'
    idx = 0
    while idx < persons.length:
        mem[0] = 15
        if persons[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if nbNFTHolders[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 17
        nbNFTHolders[address(msg.sender)] += arg1
        idx = 0
        while idx < arg1:
            _646 = mem[64]
            mem[64] = mem[64] + 32
            mem[_646] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor5[stor4.length]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
                mem[0] = tokenByIndex.length
                mem[32] = 5
                if stor5[stor4.length]:
                    if stor5[stor4.length] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_646 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                        _985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_985] == Mask(32, 224, mem[_985])
                        if Mask(32, 224, mem[_985]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_679] = tokenByIndex.length
                    mem[_679 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    stor5[stor4.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_646 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                        _986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_986] == Mask(32, 224, mem[_986])
                        if Mask(32, 224, mem[_986]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length
                mem[32] = 5
                if stor5[stor4.length]:
                    if stor5[stor4.length] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_646 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                        _987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_987] == Mask(32, 224, mem[_987])
                        if Mask(32, 224, mem[_987]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _684 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_684] = tokenByIndex.length
                    mem[_684 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 5
                    stor5[stor4.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_646 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length, 128, 0
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
                        _988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_988] == Mask(32, 224, mem[_988])
                        if Mask(32, 224, mem[_988]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    persons.length++
    persons[persons.length] = msg.sender
    mem[0] = msg.sender
    mem[32] = 17
    if nbNFTHolders[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    nbNFTHolders[address(msg.sender)] += arg1
    idx = 0
    while idx < arg1:
        _645 = mem[64]
        mem[64] = mem[64] + 32
        mem[_645] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor5[stor4.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length]:
            mem[0] = tokenByIndex.length
            mem[32] = 5
            if stor5[stor4.length]:
                if stor5[stor4.length] < 1:
                    revert with 'NH{q', 17
                if stor5[stor4.length] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                mem[0] = 4
                tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_645 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_981] == Mask(32, 224, mem[_981])
                    if Mask(32, 224, mem[_981]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _669 = mem[64]
                mem[64] = mem[64] + 64
                mem[_669] = tokenByIndex.length
                mem[_669 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = tokenByIndex.length
                mem[32] = 5
                stor5[stor4.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_645 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_982] == Mask(32, 224, mem[_982])
                    if Mask(32, 224, mem[_982]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            tokenOfOwnerByIndex[address(msg.sender)]++
            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
            tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length] = tokenOfOwnerByIndex[address(msg.sender)]
            mem[0] = tokenByIndex.length
            mem[32] = 5
            if stor5[stor4.length]:
                if stor5[stor4.length] < 1:
                    revert with 'NH{q', 17
                if stor5[stor4.length] - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                mem[0] = 4
                tokenByIndex[stor5[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor5[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_645 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_983] == Mask(32, 224, mem[_983])
                    if Mask(32, 224, mem[_983]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                _674 = mem[64]
                mem[64] = mem[64] + 64
                mem[_674] = tokenByIndex.length
                mem[_674 + 32] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = tokenByIndex.length
                mem[32] = 5
                stor5[stor4.length] = tokenByIndex.length
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) > 0:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_645 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_984] == Mask(32, 224, mem[_984])
                    if Mask(32, 224, mem[_984]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
