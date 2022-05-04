contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - mint(uint256 arg1)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
mapping of struct stor11;
uint256 maxSupply;
uint256 reservedSupply;
uint256 reservedMaxSupply;
uint256 price;
uint256 maxMintRequest;
uint256 availableFunds;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 fees;
array of struct stor21;
array of struct stor22;
address stor23;
uint256 stor24;
uint256 stor25;
uint8 stor26;
uint8 stor26; offset 8
uint256 stor27;
array of struct stor28;
array of address funds;
mapping of uint256 lastDividendAt;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function reflectionBalance() {
    return reflectionBalance
}

function reservedSupply() {
    return reservedSupply
}

function availableFunds() {
    return availableFunds
}

function totalDividend() {
    return totalDividend
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function maxMintRequest() {
    return maxMintRequest
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

function funds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < funds.length
    return funds[arg1]
}

function owner() {
    return owner
}

function fees() {
    return fees
}

function price() {
    return price
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function reservedMaxSupply() {
    return reservedMaxSupply
}

function _fallback() payable {
    revert
}

function topHolder() {
    return stor23, stor24, stor25, bool(uint8(stor26.field_0)), bool(uint8(stor26.field_8))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function withdrawTopHolder() {
    if stor27 < maxSupply:
        revert with 0, 'Collection not purchased'
    if uint8(stor26.field_0):
        revert with 0, 'Top holder is not the only one'
    if uint8(stor26.field_8):
        revert with 0, 'The reward has already been paid'
    call stor23 with:
       value stor25 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor26.field_8) = 1
    return 1
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function withdrawFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Available funds is zero'
    if availableFunds <= 0:
        revert with 0, 'Available funds is zero'
    if arg1 > availableFunds:
        revert with 0, 'Amount better available'
    if not funds.length:
        revert with 'NH{q', 18
    if availableFunds < arg1:
        revert with 'NH{q', 17
    availableFunds -= arg1
    idx = 0
    while idx < funds.length:
        mem[0] = 29
        call funds[idx] with:
           value arg1 / funds.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg1.length + arg1 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor27:
        revert with 0, 'Can't change URI once mint started'
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor21.length = 0
            idx = 0
            while stor21.length.field_1 + 31 / 32 > idx:
                stor21[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function claimRewards() {
    if msg.sender == owner:
        revert with 0, 'Owner can't claim rewards'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if tokenOfOwnerByIndex[address(msg.sender)][idx] < reservedMaxSupply:
            mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
            mem[32] = 30
            lastDividendAt[stor7[address(msg.sender)][idx]] = totalDividend
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if totalDividend < lastDividendAt[stor7[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > !(totalDividend - lastDividendAt[stor7[address(msg.sender)][idx]]):
            revert with 'NH{q', 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 30
        lastDividendAt[stor7[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor7[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function bjoes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor28.length
    if stor28[arg1].field_768:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_768:
            if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor28[arg1].field_769:
                if 31 >= stor28[arg1].field_769:
                    mem[128] = 256 * stor28[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor28[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor28[arg1].field_769:
                if 31 >= stor28[arg1].field_769:
                    mem[128] = 256 * stor28[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor28[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor28[arg1].field_0, 
               stor28[arg1].field_256,
               stor28[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor28[arg1].field_769), data=mem[128 len ceil32(stor28[arg1].field_769)])
    if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if stor28[arg1].field_768:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_769:
            if 31 >= stor28[arg1].field_769:
                mem[128] = 256 * stor28[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                idx = 128
                s = 0
                while stor28[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_769:
            if 31 >= stor28[arg1].field_769:
                mem[128] = 256 * stor28[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                idx = 128
                s = 0
                while stor28[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor28[arg1].field_0, 
           stor28[arg1].field_256,
           stor28[arg1].field_512,
           Array(len=stor28[arg1].field_768, data=mem[128 len ceil32(stor28[arg1].field_769)])
}

function getBjoes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor28.length:
        revert with 'NH{q', 50
    if stor28[arg1].field_768:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_768:
            if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor28[arg1].field_769:
                if 31 >= stor28[arg1].field_769:
                    mem[384] = 256 * stor28[arg1].field_776
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                    idx = 384
                    s = 0
                    while stor28[arg1].field_769 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor28[arg1].field_769:
                if 31 >= stor28[arg1].field_769:
                    mem[384] = 256 * stor28[arg1].field_776
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                    idx = 384
                    s = 0
                    while stor28[arg1].field_769 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor28[arg1].field_0, 
               stor28[arg1].field_256,
               stor28[arg1].field_512,
               128,
               2 * Mask(256, -1, stor28[arg1].field_769),
               mem[384 len ceil32(stor28[arg1].field_769)]
    if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if stor28[arg1].field_768:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_769:
            if 31 >= stor28[arg1].field_769:
                mem[384] = 256 * stor28[arg1].field_776
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                idx = 384
                s = 0
                while stor28[arg1].field_769 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor28[arg1].field_768 == stor28[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor28[arg1].field_769:
            if 31 >= stor28[arg1].field_769:
                mem[384] = 256 * stor28[arg1].field_776
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_0
                idx = 384
                s = 0
                while stor28[arg1].field_769 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor28', 28) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor28[arg1].field_0, 
           stor28[arg1].field_256,
           stor28[arg1].field_512,
           128,
           stor28[arg1].field_768,
           mem[384 len ceil32(stor28[arg1].field_769)]
}

function name() {
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
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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

function baseTokenURI() {
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor21.length):
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
        if ceil32(stor21.length.field_1) > stor21.length.field_1:
            mem[stor21.length.field_1 + ceil32(stor21.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length.field_1), data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor21.length):
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 'NH{q', 34
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
}

function baseExtension() {
    if bool(stor22.length):
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor22.length):
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length.field_1), data=mem[128 len ceil32(stor22.length.field_1)])
                mem[128] = 256 * stor22.length.field_8
        else:
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length.field_1), data=mem[128 len ceil32(stor22.length.field_1)])
                mem[128] = 256 * stor22.length.field_8
        mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
        if ceil32(stor22.length.field_1) > stor22.length.field_1:
            mem[stor22.length.field_1 + ceil32(stor22.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length.field_1), data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
    if bool(stor22.length) == stor22.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor22.length):
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
    if ceil32(stor22.length.field_1) > stor22.length.field_1:
        mem[stor22.length.field_1 + ceil32(stor22.length.field_1) + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_0:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)])
                mem[128] = 256 * stor11[arg1].field_8
        else:
            if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor11[arg1].field_1:
                if 31 < stor11[arg1].field_1:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)])
                mem[128] = 256 * stor11[arg1].field_8
        mem[ceil32(stor11[arg1].field_1) + 224 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
        if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
            mem[stor11[arg1].field_1 + ceil32(stor11[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_1), data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 224 len 2 * ceil32(stor11[arg1].field_1)]), 
    if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor11[arg1].field_0:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    else:
        if stor11[arg1].field_0 == stor11[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor11[arg1].field_1:
            if 31 < stor11[arg1].field_1:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)])
            mem[128] = 256 * stor11[arg1].field_8
    mem[ceil32(stor11[arg1].field_1) + 224 len ceil32(stor11[arg1].field_1)] = mem[128 len ceil32(stor11[arg1].field_1)]
    if ceil32(stor11[arg1].field_1) > stor11[arg1].field_1:
        mem[stor11[arg1].field_1 + ceil32(stor11[arg1].field_1) + 224] = 0
    return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 224 len 2 * ceil32(stor11[arg1].field_1)]), 
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
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg1:
        if stor23 == arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            stor24 = balanceOf[address(arg1)]
    if balanceOf[address(arg2)] > stor24:
        stor23 = arg2
        stor24 = balanceOf[address(arg2)]
        uint8(stor26.field_0) = 0
    if balanceOf[address(arg2)] == stor24:
        if stor23 != arg2:
            uint8(stor26.field_0) = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require calldata.size >= arg4.length + arg4 + 36
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
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
    if not arg2:
        revert with 0, 'ERC721: balance query for the zero address'
    if arg1:
        if stor23 == arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            stor24 = balanceOf[address(arg1)]
    if balanceOf[address(arg2)] > stor24:
        stor23 = arg2
        stor24 = balanceOf[address(arg2)]
        uint8(stor26.field_0) = 0
    if balanceOf[address(arg2)] == stor24:
        if stor23 != arg2:
            uint8(stor26.field_0) = 1
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



}
