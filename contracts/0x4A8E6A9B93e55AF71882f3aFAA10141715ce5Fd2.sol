contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
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
uint256 stor12;
uint256 maxSupply;
uint256 reservedSupply;
uint256 reservedMaxSupply;
uint256 presaleSupply;
uint256 presaleMaxSupply;
uint256 price;
uint256 maxMintRequest;
array of struct stor20;
array of struct stor21;
array of struct stor22;
uint128 stor23; offset 168
uint128 stor23; offset 160
address presalePartnersAddress;
uint256 availableFunds;
uint256 reflectionBalance;
uint256 totalDividend;
uint256 fees;
mapping of uint256 lastDividendAt;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function presaleMaxSupply() {
    return presaleMaxSupply
}

function totalSupply() {
    return tokenByIndex.length
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
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function maxMintRequest() {
    return maxMintRequest
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

function fees() {
    return fees
}

function price() {
    return price
}

function presaleSupply() {
    return presaleSupply
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function presalePartnersAddress() {
    return presalePartnersAddress
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

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function setSaleOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor23.field_160) = Mask(96, 0, arg1)
}

function setPresaleOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor23.field_168) = Mask(88, 0, arg1)
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

function setPresalePartnersAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setPresalePartnersAddress: Must provide a valid contract address.'
    presalePartnersAddress = arg1
}

function withdrawFunds(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        availableFunds = 0
        call owner with:
           value availableFunds wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function eligibleForPresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(presalePartnersAddress)
    staticcall presalePartnersAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'eligibleForPresale: Not eligible for presale.'
    return 1
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseTokenURI(string arg1) {
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
    if stor12:
        revert with 0, 'setBaseTokenURI: Can't change URI once mint started.'
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
}

function claimRewards() {
    if msg.sender == owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'claimRewards: Owner can't claim rewards.'
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
            mem[32] = 28
            lastDividendAt[stor7[address(msg.sender)][idx]] = totalDividend
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if totalDividend < lastDividendAt[stor7[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor7[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 28
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
}

function tinyBones(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor20.length
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_768:
            if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_769:
                if 31 >= stor20[arg1].field_769:
                    mem[128] = 256 * stor20[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_769:
                if 31 >= stor20[arg1].field_769:
                    mem[128] = 256 * stor20[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor20[arg1].field_0, 
               stor20[arg1].field_256,
               stor20[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor20[arg1].field_769), data=mem[128 len ceil32(stor20[arg1].field_769)])
    if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_769:
            if 31 >= stor20[arg1].field_769:
                mem[128] = 256 * stor20[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_769:
            if 31 >= stor20[arg1].field_769:
                mem[128] = 256 * stor20[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor20[arg1].field_0, 
           stor20[arg1].field_256,
           stor20[arg1].field_512,
           Array(len=stor20[arg1].field_768, data=mem[128 len ceil32(stor20[arg1].field_769)])
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
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
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
}

function getTinyBones(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor20.length:
        revert with 'NH{q', 50
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_768:
            if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_769:
                if 31 >= stor20[arg1].field_769:
                    mem[384] = 256 * stor20[arg1].field_776
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 384
                    s = 0
                    while stor20[arg1].field_769 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_769:
                if 31 >= stor20[arg1].field_769:
                    mem[384] = 256 * stor20[arg1].field_776
                else:
                    mem[384] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                    idx = 384
                    s = 0
                    while stor20[arg1].field_769 + 352 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor20[arg1].field_0, 
               stor20[arg1].field_256,
               stor20[arg1].field_512,
               128,
               2 * Mask(256, -1, stor20[arg1].field_769),
               mem[384 len ceil32(stor20[arg1].field_769)]
    if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if stor20[arg1].field_768:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_769:
            if 31 >= stor20[arg1].field_769:
                mem[384] = 256 * stor20[arg1].field_776
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 384
                s = 0
                while stor20[arg1].field_769 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor20[arg1].field_768 == stor20[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_769:
            if 31 >= stor20[arg1].field_769:
                mem[384] = 256 * stor20[arg1].field_776
            else:
                mem[384] = stor[sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_0
                idx = 384
                s = 0
                while stor20[arg1].field_769 + 352 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor20', 20) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor20[arg1].field_0, 
           stor20[arg1].field_256,
           stor20[arg1].field_512,
           128,
           stor20[arg1].field_768,
           mem[384 len ceil32(stor20[arg1].field_769)]
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
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
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
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
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
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
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
    if ext_code.size(arg2) > 0:
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
            mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
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
        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
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
            mem[ceil32(stor22.length.field_1) + stor22.length.field_1 + 192] = 0
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
        mem[ceil32(stor22.length.field_1) + stor22.length.field_1 + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
            mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 224] = 0
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
        mem[ceil32(stor11[arg1].field_1) + stor11[arg1].field_1 + 224] = 0
    return Array(len=stor11[arg1].field_0, data=mem[128 len ceil32(stor11[arg1].field_1)], mem[(2 * ceil32(stor11[arg1].field_1)) + 224 len 2 * ceil32(stor11[arg1].field_1)]), 
}



}
