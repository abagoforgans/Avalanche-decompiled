contract main {




// =====================  Runtime code  =====================


#
#  - getNfts(uint256 arg1)
#  - tokenURI(uint256 arg1)
#
const MAX_NFTS = 11000


mapping of uint8 stor0;
mapping of struct bazaar;
address stor2;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor5;
mapping of address approved;
mapping of uint8 stor7;
array of struct stor8;
array of struct stor9;
array of struct stor11;
uint8 isActive; offset 160
uint8 isMarketplaceActive; offset 168
uint128 stor12; offset 168
uint128 stor12; offset 160
address owner;
address feeAddress1;
address feeAddress2;
address stor15;
mapping of address originalOwners;
array of struct stor18;
mapping of uint256 teamMints;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
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

function feeAddress1() {
    return feeAddress1
}

function TeamMints(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return teamMints[arg1]
}

function isActive() {
    return bool(isActive)
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

function getOriginalOwnerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return originalOwners[arg1]
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

function OriginalOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return originalOwners[arg1]
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

function isMarketplaceActive() {
    return bool(isMarketplaceActive)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function feeAddress2() {
    return feeAddress2
}

function _fallback() payable {
    revert
}

function startSales() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = 1
}

function pauseSales() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = 0
}

function startMarketplaceSales() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor12.field_168) = 1
}

function pauseMarketplaceSales() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor12.field_168) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address) / 2:
        revert with 'NH{q', 17
    call stor2 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor15 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 2) wei
         gas 2300 * is_zero(value) wei
}

function removeFromMarketplace(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not isMarketplaceActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace sales is not started yet'
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
    bazaar[arg1].field_512 = 4
    emit 0x1127c659: arg1
}

function putOnMarketplace(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not isMarketplaceActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace sales is not started yet'
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
    bazaar[arg1].field_256 = arg2
    bazaar[arg1].field_512 = 1
    emit 0x358d4e13: arg1, arg2
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
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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

function calculatePrice() {
    if bool(isActive) != 1:
        revert with 0, 'Sale hasn't started'
    if tokenByIndex.length >= 11000:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 10999:
        return 50 * 10^18
    if tokenByIndex.length >= 10990:
        return 30 * 10^18
    if tokenByIndex.length >= 10980:
        return 25 * 10^18
    if tokenByIndex.length >= 10970:
        return 20 * 10^18
    if tokenByIndex.length >= 10960:
        return 15 * 10^18
    if tokenByIndex.length >= 10950:
        return 10 * 10^18
    if tokenByIndex.length >= 10900:
        return 6 * 10^18
    if tokenByIndex.length >= 10000:
        return 5 * 10^18
    if tokenByIndex.length >= 8000:
        return 4 * 10^18
    if tokenByIndex.length >= 6000:
        return 3 * 10^18
    if tokenByIndex.length >= 4000:
        return 25 * 10^17
    if tokenByIndex.length >= 3500:
        return 2 * 10^18
    if tokenByIndex.length >= 3000:
        return 175 * 10^16
    if tokenByIndex.length >= 2500:
        return 15 * 10^17
    if tokenByIndex.length >= 2000:
        return 125 * 10^16
    if tokenByIndex.length >= 1750:
        return 10^18
    if tokenByIndex.length >= 1500:
        return 8 * 10^17
    if tokenByIndex.length >= 1250:
        return 6 * 10^17
    if tokenByIndex.length >= 1000:
        return 5 * 10^17
    if tokenByIndex.length >= 750:
        return 4 * 10^17
    if tokenByIndex.length < 250:
        return 2 * 10^17
    return 3 * 10^17
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0] / 2:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), feeAddress1, ext_call.return_data[0] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), feeAddress2, ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor18.length):
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length.field_1), data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor18.length):
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
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

function buyFromMarketplace(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not isMarketplaceActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketplace sales is not started yet'
    if msg.value < bazaar[arg1].field_256:
        revert with 0, 'Price issue'
    if bazaar[arg1].field_512 > 4:
        revert with 'NH{q', 33
    if bazaar[arg1].field_512 != 1:
        revert with 0, 'No Sale'
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
    if bazaar[arg1].field_256 >= 0:
        if msg.value and 5 > -1 / msg.value:
            revert with 'NH{q', 17
        if msg.value < 5 * msg.value / 100:
            revert with 'NH{q', 17
        if msg.value - (5 * msg.value / 100) and 2 > -1 / msg.value - (5 * msg.value / 100):
            revert with 'NH{q', 17
        if msg.value - (5 * msg.value / 100) < 2 * msg.value - (5 * msg.value / 100) / 100:
            revert with 'NH{q', 17
        call tokenByIndex[stor5[arg1] - 1].field_256 with:
           value msg.value - (5 * msg.value / 100) - (2 * msg.value - (5 * msg.value / 100) / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call originalOwners[arg1] with:
           value 2 * msg.value - (5 * msg.value / 100) / 100 wei
             gas 2300 * is_zero(value) wei
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if tokenByIndex[stor5[arg1] - 1].field_256 != tokenByIndex[stor5[arg1] - 1].field_256:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg1] = 0
    if not stor5[arg1]:
        revert with 0, 
                    32,
                    41,
                    0xfe4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[457 len 23] >> 72,
                    0
    if stor5[arg1] < 1:
        revert with 'NH{q', 17
    if stor5[arg1] - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    emit Approval(tokenByIndex[stor5[arg1] - 1].field_256, 0, arg1);
    if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]:
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] < 1:
            revert with 'NH{q', 17
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256] - 1 >= tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 50
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 >= tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 50
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]
        if tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] - 1 > -2:
            revert with 'NH{q', 17
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1]
        if not tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]:
            revert with 'NH{q', 49
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor4[stor5[arg1] - 1].field_256][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 'NH{q', 17
        if stor5[arg1] - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor5[arg1] - 1].field_256 = msg.sender
        tokenByIndex[stor5[arg1] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor5[arg1] = tokenByIndex.length
    bazaar[arg1].field_256 = 0
    bazaar[arg1].field_512 = 4
    emit Transfer(tokenByIndex[stor5[arg1] - 1].field_256, msg.sender, arg1);
    bazaar[arg1].field_512 = 2
}

function mintForTeam(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == feeAddress1:
        if arg1 > teamMints[address(msg.sender)]:
            revert with 0, 'Already minted all team mints'
        mem[0] = msg.sender
        mem[32] = 19
        if teamMints[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        teamMints[address(msg.sender)] -= arg1
        idx = 0
        while idx < arg1:
            if tokenByIndex.length > -2:
                revert with 'NH{q', 17
            _323 = mem[64]
            mem[64] = mem[64] + 32
            mem[_323] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor5[stor4.length + 1]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length + 1]:
                mem[0] = tokenByIndex.length + 1
                mem[32] = 5
                if stor5[stor4.length + 1]:
                    if stor5[stor4.length + 1] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length + 1] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_323 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_659] == Mask(32, 224, mem[_659])
                        if Mask(32, 224, mem[_659]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_347] = tokenByIndex.length + 1
                    mem[_347 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 5
                    stor5[stor4.length + 1] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_323 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_660] == Mask(32, 224, mem[_660])
                        if Mask(32, 224, mem[_660]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length + 1
                mem[32] = 5
                if stor5[stor4.length + 1]:
                    if stor5[stor4.length + 1] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length + 1] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_323 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_661] == Mask(32, 224, mem[_661])
                        if Mask(32, 224, mem[_661]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _352 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_352] = tokenByIndex.length + 1
                    mem[_352 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 5
                    stor5[stor4.length + 1] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_323 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_662] == Mask(32, 224, mem[_662])
                        if Mask(32, 224, mem[_662]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if feeAddress2 != msg.sender:
            revert with 0, 'Only for the team'
        if arg1 > teamMints[address(msg.sender)]:
            revert with 0, 'Already minted all team mints'
        mem[0] = msg.sender
        mem[32] = 19
        if teamMints[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        teamMints[address(msg.sender)] -= arg1
        idx = 0
        while idx < arg1:
            if tokenByIndex.length > -2:
                revert with 'NH{q', 17
            _324 = mem[64]
            mem[64] = mem[64] + 32
            mem[_324] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor5[stor4.length + 1]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length + 1]:
                mem[0] = tokenByIndex.length + 1
                mem[32] = 5
                if stor5[stor4.length + 1]:
                    if stor5[stor4.length + 1] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length + 1] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_324 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_663] == Mask(32, 224, mem[_663])
                        if Mask(32, 224, mem[_663]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_357] = tokenByIndex.length + 1
                    mem[_357 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 5
                    stor5[stor4.length + 1] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_324 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_664] == Mask(32, 224, mem[_664])
                        if Mask(32, 224, mem[_664]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length + 1
                tokenOfOwnerByIndex[address(msg.sender)][1][stor4.length + 1] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length + 1
                mem[32] = 5
                if stor5[stor4.length + 1]:
                    if stor5[stor4.length + 1] < 1:
                        revert with 'NH{q', 17
                    if stor5[stor4.length + 1] - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    mem[0] = 4
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_256 = msg.sender
                    tokenByIndex[stor5[tokenByIndex.length + 1] - 1].field_416 = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_324 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_665] == Mask(32, 224, mem[_665])
                        if Mask(32, 224, mem[_665]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    _362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_362] = tokenByIndex.length + 1
                    mem[_362 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + 1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 5
                    stor5[stor4.length + 1] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if ext_code.size(msg.sender) > 0:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_324 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_666] == Mask(32, 224, mem[_666])
                        if Mask(32, 224, mem[_666]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
