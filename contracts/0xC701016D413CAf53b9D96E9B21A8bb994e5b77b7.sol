contract main {




// =====================  Runtime code  =====================


const MAX_NFT_SUPPLY = 5000

const MINT_PRICE = 10^15


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
array of uint256 stor11;
uint256 pendingCount;
uint8 stor13;
uint256 stor13;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
mapping of address minters;
uint256 totalSupply;
array of uint256 stor19;
array of uint256 stor20;
address storC364;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
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

function minters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minters[arg1]
}

function owner() {
    return owner
}

function mintIsOpen() {
    return bool(uint8(stor13))
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function pendingCount() {
    return pendingCount
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

function toggleMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor13) = not bool(uint8(stor13)) or Mask(248, 8, uint256(stor13))
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function getMintedCounts() {
    idx = 1
    s = 0
    while idx <= 5000:
        mem[0] = idx
        mem[32] = 17
        if minters[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
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

function getPendingIndexById(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    while idx < arg3:
        if idx > -arg2 - 1:
            revert with 'NH{q', 17
        if idx + arg2 >= 50001:
            revert with 'NH{q', 50
        if stor[idx + arg2 + 19] > -idx + -arg2 - 1:
            revert with 'NH{q', 17
        if stor[idx + arg2 + 19] + idx + arg2 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx > -arg2 - 1:
            revert with 'NH{q', 17
        return (idx + arg2)
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFTInitialSeller: invalid token id(pending index)'
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

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'peepeepoopoo: Only owner or approved can claim rewards'
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value totalDividend - lastDividendAt[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastDividendAt[arg1] = totalDividend
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

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 16
        if totalDividend < lastDividendAt[stor6[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor6[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor6[address(msg.sender)][idx]]
        continue 
    return (s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)])
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

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if totalDividend < lastDividendAt[stor6[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor6[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 16
        lastDividendAt[stor6[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor6[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function presaleReward(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'peepeepoopoo: zero address'
    if not arg3:
        revert with 'NH{q', 18
    if sha3(block.difficulty, block.timestamp, pendingCount) % arg3 > -arg2 - 1:
        revert with 'NH{q', 17
    if (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2 >= 50001:
        revert with 'NH{q', 50
    if stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] > -(sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + -arg2 - 1:
        revert with 'NH{q', 17
    if (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2 != pendingCount:
        if pendingCount >= 50001:
            revert with 'NH{q', 50
        if stor19[stor12] > -pendingCount - 1:
            revert with 'NH{q', 17
        if stor19[stor12] + pendingCount < (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2:
            revert with 'NH{q', 17
        if (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2 >= 50001:
            revert with 'NH{q', 50
        stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] = stor19[stor12] + pendingCount - (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) - arg2
    if not pendingCount:
        revert with 'NH{q', 17
    pendingCount--
    if totalSupply > -2:
        revert with 'NH{q', 17
    totalSupply++
    minters[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] = arg1
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2
        stor7[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2]
        stor9[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2] = arg1
    emit Transfer(0, arg1, stor[(sha3(block.difficulty, block.timestamp, stor12) % arg3) + arg2 + 19] + (sha3(block.difficulty, block.timestamp, pendingCount) % arg3) + arg2);
}

function purchase(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor13):
        revert with 0, 'peepeepoopoo: Period not started'
    if pendingCount <= 0:
        revert with 0, 'peepeepoopoo: All minted'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'peepeepoopoo: numberOfNfts cannot be 0'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'peepeepoopoo: You may not buy more than 20 NFTs at once'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg1 > 5000:
        revert with 0, 'peepeepoopoo: sale already ended'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 'NH{q', 17
    if 10^15 * arg1 != msg.value:
        revert with 0, 'AvaPepes: invalid ether value'
    idx = 0
    while idx < arg1:
        if bool(uint8(stor13)) != 1:
            revert with 0, 'Minting is not open yet.'
        if totalSupply >= 5000:
            revert with 0, 'peepeepoopoo: max supply reached'
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = pendingCount
        _84 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        _86 = sha3(mem[_84 + 32 len mem[_84]])
        if not pendingCount:
            revert with 'NH{q', 18
        if sha3(mem[_84 + 32 len mem[_84]]) % pendingCount > -2:
            revert with 'NH{q', 17
        if (sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) + 1 >= 50001:
            revert with 'NH{q', 50
        if stor20[sha3(mem[_84 + 32 len mem[_84]]) % stor12] > -(sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) - 2:
            revert with 'NH{q', 17
        if (sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) + 1 != pendingCount:
            if pendingCount >= 50001:
                revert with 'NH{q', 50
            if stor19[stor12] > -pendingCount - 1:
                revert with 'NH{q', 17
            if stor19[stor12] + pendingCount < (sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) + 1:
                revert with 'NH{q', 17
            if (sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) + 1 >= 50001:
                revert with 'NH{q', 50
            stor20[sha3(mem[_84 + 32 len mem[_84]]) % stor12] = stor19[stor12] + pendingCount + -(sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) - 1
        if not pendingCount:
            revert with 'NH{q', 17
        pendingCount--
        if totalSupply > -2:
            revert with 'NH{q', 17
        totalSupply++
        mem[0] = stor20[sha3(mem[_84 + 32 len mem[_84]]) % stor12] + (sha3(mem[_84 + 32 len mem[_84]]) % pendingCount) + 1
        minters[mem[0]] = msg.sender
        lastDividendAt[stor20[_86 % stor12] + (_86 % stor12) + 1] = totalDividend
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor20[_86 % stor12] + (_86 % stor12) + 1]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor20[_86 % stor12] + (_86 % stor12) + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor20[_86 % stor12] + (_86 % pendingCount) + 1
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor20[_86 % stor12] + (_86 % pendingCount) + 1
            stor7[stor20[_86 % stor12] + (_86 % stor12) + 1] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor20[_86 % stor12] + (_86 % stor12) + 1] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor20[_86 % stor12] + (_86 % stor12) + 1]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor20[_86 % stor12] + (_86 % stor12) + 1]
            stor9[stor20[_86 % stor12] + (_86 % stor12) + 1] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor20[_86 % stor12] + (_86 % pendingCount) + 1
        mem[32] = 2
        ownerOf[stor20[_86 % stor12] + (_86 % stor12) + 1] = msg.sender
        emit Transfer(0, msg.sender, stor20[_86 % stor12] + (_86 % pendingCount) + 1);
        if not arg1:
            revert with 'NH{q', 18
        if msg.value / arg1 and 20 > -1 / msg.value / arg1:
            revert with 'NH{q', 17
        if msg.value / arg1 < 20 * msg.value / arg1 / 100:
            revert with 'NH{q', 17
        if reflectionBalance > -(20 * msg.value / arg1 / 100) - 1:
            revert with 'NH{q', 17
        reflectionBalance += 20 * msg.value / arg1 / 100
        if not totalSupply:
            revert with 'NH{q', 18
        if totalDividend > -(20 * msg.value / arg1 / 100 / totalSupply) - 1:
            revert with 'NH{q', 17
        totalDividend += 20 * msg.value / arg1 / 100 / totalSupply
        call storC364 with:
           value (msg.value / arg1) - (20 * msg.value / arg1 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ceil32(arg1.length) <= arg1.length:
        _166 = sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(ceil32(arg1.length)) + arg1.length + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len uint255(stor11.length.field_1)]) == _166:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len -ceil32(ceil32(arg1.length)) + -arg1.length - 161]) == _166:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(ceil32(arg1.length)) + arg1.length + idx + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len uint255(stor11.length.field_1)]) == _166:
                        revert with 0, 'ERC721Metadata: existed baseURI'
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(ceil32(arg1.length)) + arg1.length + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len stor11.length.field_1 % 128]) == _166:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len -ceil32(ceil32(arg1.length)) + -arg1.length - 161]) == _166:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + arg1.length + idx + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len stor11.length.field_1 % 128]) == _166:
                        revert with 0, 'ERC721Metadata: existed baseURI'
    else:
        _170 = sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(ceil32(arg1.length)) + arg1.length + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len uint255(stor11.length.field_1)]) == _170:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len -ceil32(ceil32(arg1.length)) + -arg1.length - 161]) == _170:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[ceil32(ceil32(arg1.length)) + arg1.length + idx + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len uint255(stor11.length.field_1)]) == _170:
                        revert with 0, 'ERC721Metadata: existed baseURI'
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[ceil32(ceil32(arg1.length)) + arg1.length + 161] = Mask(248, 8, stor11.length)
                if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len stor11.length.field_1 % 128]) == _170:
                    revert with 0, 'ERC721Metadata: existed baseURI'
            else:
                if bool(stor11.length) != 1:
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len -ceil32(ceil32(arg1.length)) + -arg1.length - 161]) == _170:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '', 0, uint32('ERC721Metadata: existed baseURI')
                else:
                    idx = 0
                    s = 0
                    while idx < stor11.length.field_1 % 128:
                        mem[ceil32(ceil32(arg1.length)) + arg1.length + idx + 161] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sha3(mem[ceil32(ceil32(arg1.length)) + arg1.length + 161 len stor11.length.field_1 % 128]) == _170:
                        revert with 0, 'ERC721Metadata: existed baseURI'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while uint255(stor11.length.field_1) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor11.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[192] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _261 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_261) > _261:
                            mem[_261 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_261) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length.field_1):
                        mem[idx + 192] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[uint255(stor11.length.field_1) + 192] = '0'
                mem[uint255(stor11.length.field_1) + 193] = '.json'
                mem[uint255(stor11.length.field_1) + 198] = 32
                mem[uint255(stor11.length.field_1) + 230] = mem[160]
                mem[uint255(stor11.length.field_1) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[uint255(stor11.length.field_1) + mem[160] + 262] = 0
                return Array(len=mem[160], data=mem[uint255(stor11.length.field_1) + 262 len ceil32(mem[160])])
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _263 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_263) > _263:
                        mem[_263 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_263) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor11.length.field_1 % 128 + 192] = '0'
            mem[stor11.length.field_1 % 128 + 193] = '.json'
            mem[stor11.length.field_1 % 128 + 198] = 32
            mem[stor11.length.field_1 % 128 + 230] = mem[160]
            mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[stor11.length.field_1 % 128 + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _732 = mem[64]
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor11.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                    _792 = mem[96]
                    mem[mem[64] + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_732 + uint255(stor11.length.field_1) + _792 + 32] = '.json'
                    if ceil32(_792) <= _792:
                        _1212 = mem[64]
                        mem[64] = _732 + uint255(stor11.length.field_1) + _792 + 37
                        mem[_732 + uint255(stor11.length.field_1) + _792 + 37] = 32
                        _1284 = mem[_1212]
                        mem[_732 + uint255(stor11.length.field_1) + _792 + 69] = mem[_1212]
                        mem[_732 + uint255(stor11.length.field_1) + _792 + 101 len ceil32(_1284)] = mem[_1212 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_732 + uint255(stor11.length.field_1) + _792 + _1284 + 101] = 0
                        return 32, mem[_732 + uint255(stor11.length.field_1) + _792 + 69 len ceil32(_1284) + 32]
                    _1236 = mem[64]
                    mem[64] = _732 + uint255(stor11.length.field_1) + _792 + 37
                    mem[_732 + uint255(stor11.length.field_1) + _792 + 37] = 32
                    _1300 = mem[_1236]
                    mem[_732 + uint255(stor11.length.field_1) + _792 + 69] = mem[_1236]
                    mem[_732 + uint255(stor11.length.field_1) + _792 + 101 len ceil32(_1300)] = mem[_1236 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_732 + uint255(stor11.length.field_1) + _792 + _1300 + 101] = 0
                    return 32, mem[_732 + uint255(stor11.length.field_1) + _792 + 69 len ceil32(_1300) + 32]
                if bool(stor11.length) != 1:
                    _800 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_800] = '.json'
                    if ceil32(_800) <= _800:
                        _1214 = mem[64]
                        mem[64] = _800 + 5
                        mem[_800 + 5] = 32
                        _1285 = mem[_1214]
                        mem[_800 + 37] = mem[_1214]
                        mem[_800 + 69 len ceil32(_1285)] = mem[_1214 + 32 len ceil32(_1285)]
                        if ceil32(_1285) > _1285:
                            mem[_800 + _1285 + 69] = 0
                        return 32, mem[_800 + 37 len ceil32(_1285) + 32]
                    _1237 = mem[64]
                    mem[64] = _800 + 5
                    mem[_800 + 5] = 32
                    _1301 = mem[_1237]
                    mem[_800 + 37] = mem[_1237]
                    mem[_800 + 69 len ceil32(_1301)] = mem[_1237 + 32 len ceil32(_1301)]
                    if ceil32(_1301) > _1301:
                        mem[_800 + _1301 + 69] = 0
                    return 32, mem[_800 + 37 len ceil32(_1301) + 32]
                mem[0] = 11
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[_732 + idx + 32] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1188 = mem[96]
                mem[_732 + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + uint255(stor11.length.field_1) + _1188 + 32] = '.json'
                if ceil32(_1188) <= _1188:
                    _1612 = mem[64]
                    mem[64] = _732 + uint255(stor11.length.field_1) + _1188 + 37
                    mem[_732 + uint255(stor11.length.field_1) + _1188 + 37] = 32
                    _1644 = mem[_1612]
                    mem[_732 + uint255(stor11.length.field_1) + _1188 + 69] = mem[_1612]
                    mem[_732 + uint255(stor11.length.field_1) + _1188 + 101 len ceil32(_1644)] = mem[_1612 + 32 len ceil32(_1644)]
                    if ceil32(_1644) > _1644:
                        mem[_732 + uint255(stor11.length.field_1) + _1188 + _1644 + 101] = 0
                    return 32, mem[_732 + uint255(stor11.length.field_1) + _1188 + 69 len ceil32(_1644) + 32]
                _1620 = mem[64]
                mem[64] = _732 + uint255(stor11.length.field_1) + _1188 + 37
                mem[_732 + uint255(stor11.length.field_1) + _1188 + 37] = 32
                _1652 = mem[_1620]
                mem[_732 + uint255(stor11.length.field_1) + _1188 + 69] = mem[_1620]
                mem[_732 + uint255(stor11.length.field_1) + _1188 + 101 len ceil32(_1652)] = mem[_1620 + 32 len ceil32(_1652)]
                if ceil32(_1652) > _1652:
                    mem[_732 + uint255(stor11.length.field_1) + _1188 + _1652 + 101] = 0
                return 32, mem[_732 + uint255(stor11.length.field_1) + _1188 + 69 len ceil32(_1652) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _801 = mem[96]
                mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = '.json'
                if ceil32(mem[96]) <= mem[96]:
                    _1215 = mem[64]
                    mem[64] = _732 + stor11.length.field_1 % 128 + _801 + 37
                    mem[_732 + stor11.length.field_1 % 128 + _801 + 37] = 32
                    _1286 = mem[_1215]
                    mem[_732 + stor11.length.field_1 % 128 + _801 + 69] = mem[_1215]
                    mem[_732 + stor11.length.field_1 % 128 + _801 + 101 len ceil32(_1286)] = mem[_1215 + 32 len ceil32(_1286)]
                    if ceil32(_1286) > _1286:
                        mem[_732 + stor11.length.field_1 % 128 + _801 + _1286 + 101] = 0
                    return 32, mem[_732 + stor11.length.field_1 % 128 + _801 + 69 len ceil32(_1286) + 32]
                _1238 = mem[64]
                mem[64] = _732 + stor11.length.field_1 % 128 + _801 + 37
                mem[_732 + stor11.length.field_1 % 128 + _801 + 37] = 32
                _1302 = mem[_1238]
                mem[_732 + stor11.length.field_1 % 128 + _801 + 69] = mem[_1238]
                mem[_732 + stor11.length.field_1 % 128 + _801 + 101 len ceil32(_1302)] = mem[_1238 + 32 len ceil32(_1302)]
                if ceil32(_1302) > _1302:
                    mem[_732 + stor11.length.field_1 % 128 + _801 + _1302 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 % 128 + _801 + 69 len ceil32(_1302) + 32]
            if bool(stor11.length) != 1:
                _812 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_812] = '.json'
                if ceil32(_812) <= _812:
                    _1217 = mem[64]
                    mem[64] = _812 + 5
                    mem[_812 + 5] = 32
                    _1287 = mem[_1217]
                    mem[_812 + 37] = mem[_1217]
                    mem[_812 + 69 len ceil32(_1287)] = mem[_1217 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_812 + _1287 + 69] = 0
                    return 32, mem[_812 + 37 len ceil32(_1287) + 32]
                _1239 = mem[64]
                mem[64] = _812 + 5
                mem[_812 + 5] = 32
                _1303 = mem[_1239]
                mem[_812 + 37] = mem[_1239]
                mem[_812 + 69 len ceil32(_1303)] = mem[_1239 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_812 + _1303 + 69] = 0
                return 32, mem[_812 + 37 len ceil32(_1303) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[_732 + idx + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 32] = '.json'
            if ceil32(_1189) <= _1189:
                _1613 = mem[64]
                mem[64] = _732 + stor11.length.field_1 % 128 + _1189 + 37
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 37] = 32
                _1645 = mem[_1613]
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 69] = mem[_1613]
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 101 len ceil32(_1645)] = mem[_1613 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_732 + stor11.length.field_1 % 128 + _1189 + _1645 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 % 128 + _1189 + 69 len ceil32(_1645) + 32]
            _1621 = mem[64]
            mem[64] = _732 + stor11.length.field_1 % 128 + _1189 + 37
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 37] = 32
            _1653 = mem[_1621]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 69] = mem[_1621]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 101 len ceil32(_1653)] = mem[_1621 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_732 + stor11.length.field_1 % 128 + _1189 + _1653 + 101] = 0
            return 32, mem[_732 + stor11.length.field_1 % 128 + _1189 + 69 len ceil32(_1653) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _793 = mem[96]
                mem[mem[64] + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_733 + uint255(stor11.length.field_1) + _793 + 32] = '.json'
                if ceil32(_793) <= _793:
                    _1218 = mem[64]
                    mem[64] = _733 + uint255(stor11.length.field_1) + _793 + 37
                    mem[_733 + uint255(stor11.length.field_1) + _793 + 37] = 32
                    _1288 = mem[_1218]
                    mem[_733 + uint255(stor11.length.field_1) + _793 + 69] = mem[_1218]
                    mem[_733 + uint255(stor11.length.field_1) + _793 + 101 len ceil32(_1288)] = mem[_1218 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_733 + uint255(stor11.length.field_1) + _793 + _1288 + 101] = 0
                    return 32, mem[_733 + uint255(stor11.length.field_1) + _793 + 69 len ceil32(_1288) + 32]
                _1240 = mem[64]
                mem[64] = _733 + uint255(stor11.length.field_1) + _793 + 37
                mem[_733 + uint255(stor11.length.field_1) + _793 + 37] = 32
                _1304 = mem[_1240]
                mem[_733 + uint255(stor11.length.field_1) + _793 + 69] = mem[_1240]
                mem[_733 + uint255(stor11.length.field_1) + _793 + 101 len ceil32(_1304)] = mem[_1240 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_733 + uint255(stor11.length.field_1) + _793 + _1304 + 101] = 0
                return 32, mem[_733 + uint255(stor11.length.field_1) + _793 + 69 len ceil32(_1304) + 32]
            if bool(stor11.length) != 1:
                _802 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_802] = '.json'
                if ceil32(_802) <= _802:
                    _1220 = mem[64]
                    mem[64] = _802 + 5
                    mem[_802 + 5] = 32
                    _1289 = mem[_1220]
                    mem[_802 + 37] = mem[_1220]
                    mem[_802 + 69 len ceil32(_1289)] = mem[_1220 + 32 len ceil32(_1289)]
                    if ceil32(_1289) > _1289:
                        mem[_802 + _1289 + 69] = 0
                    return 32, mem[_802 + 37 len ceil32(_1289) + 32]
                _1241 = mem[64]
                mem[64] = _802 + 5
                mem[_802 + 5] = 32
                _1305 = mem[_1241]
                mem[_802 + 37] = mem[_1241]
                mem[_802 + 69 len ceil32(_1305)] = mem[_1241 + 32 len ceil32(_1305)]
                if ceil32(_1305) > _1305:
                    mem[_802 + _1305 + 69] = 0
                return 32, mem[_802 + 37 len ceil32(_1305) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length.field_1):
                mem[_733 + idx + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1190 = mem[96]
            mem[_733 + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + uint255(stor11.length.field_1) + _1190 + 32] = '.json'
            if ceil32(_1190) <= _1190:
                _1614 = mem[64]
                mem[64] = _733 + uint255(stor11.length.field_1) + _1190 + 37
                mem[_733 + uint255(stor11.length.field_1) + _1190 + 37] = 32
                _1646 = mem[_1614]
                mem[_733 + uint255(stor11.length.field_1) + _1190 + 69] = mem[_1614]
                mem[_733 + uint255(stor11.length.field_1) + _1190 + 101 len ceil32(_1646)] = mem[_1614 + 32 len ceil32(_1646)]
                if ceil32(_1646) > _1646:
                    mem[_733 + uint255(stor11.length.field_1) + _1190 + _1646 + 101] = 0
                return 32, mem[_733 + uint255(stor11.length.field_1) + _1190 + 69 len ceil32(_1646) + 32]
            _1622 = mem[64]
            mem[64] = _733 + uint255(stor11.length.field_1) + _1190 + 37
            mem[_733 + uint255(stor11.length.field_1) + _1190 + 37] = 32
            _1654 = mem[_1622]
            mem[_733 + uint255(stor11.length.field_1) + _1190 + 69] = mem[_1622]
            mem[_733 + uint255(stor11.length.field_1) + _1190 + 101 len ceil32(_1654)] = mem[_1622 + 32 len ceil32(_1654)]
            if ceil32(_1654) > _1654:
                mem[_733 + uint255(stor11.length.field_1) + _1190 + _1654 + 101] = 0
            return 32, mem[_733 + uint255(stor11.length.field_1) + _1190 + 69 len ceil32(_1654) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _803 = mem[96]
            mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1221 = mem[64]
                mem[64] = _733 + stor11.length.field_1 % 128 + _803 + 37
                mem[_733 + stor11.length.field_1 % 128 + _803 + 37] = 32
                _1290 = mem[_1221]
                mem[_733 + stor11.length.field_1 % 128 + _803 + 69] = mem[_1221]
                mem[_733 + stor11.length.field_1 % 128 + _803 + 101 len ceil32(_1290)] = mem[_1221 + 32 len ceil32(_1290)]
                if ceil32(_1290) > _1290:
                    mem[_733 + stor11.length.field_1 % 128 + _803 + _1290 + 101] = 0
                return 32, mem[_733 + stor11.length.field_1 % 128 + _803 + 69 len ceil32(_1290) + 32]
            _1242 = mem[64]
            mem[64] = _733 + stor11.length.field_1 % 128 + _803 + 37
            mem[_733 + stor11.length.field_1 % 128 + _803 + 37] = 32
            _1306 = mem[_1242]
            mem[_733 + stor11.length.field_1 % 128 + _803 + 69] = mem[_1242]
            mem[_733 + stor11.length.field_1 % 128 + _803 + 101 len ceil32(_1306)] = mem[_1242 + 32 len ceil32(_1306)]
            if ceil32(_1306) > _1306:
                mem[_733 + stor11.length.field_1 % 128 + _803 + _1306 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 % 128 + _803 + 69 len ceil32(_1306) + 32]
        if bool(stor11.length) != 1:
            _813 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_813] = '.json'
            if ceil32(_813) <= _813:
                _1223 = mem[64]
                mem[64] = _813 + 5
                mem[_813 + 5] = 32
                _1291 = mem[_1223]
                mem[_813 + 37] = mem[_1223]
                mem[_813 + 69 len ceil32(_1291)] = mem[_1223 + 32 len ceil32(_1291)]
                if ceil32(_1291) > _1291:
                    mem[_813 + _1291 + 69] = 0
                return 32, mem[_813 + 37 len ceil32(_1291) + 32]
            _1243 = mem[64]
            mem[64] = _813 + 5
            mem[_813 + 5] = 32
            _1307 = mem[_1243]
            mem[_813 + 37] = mem[_1243]
            mem[_813 + 69 len ceil32(_1307)] = mem[_1243 + 32 len ceil32(_1307)]
            if ceil32(_1307) > _1307:
                mem[_813 + _1307 + 69] = 0
            return 32, mem[_813 + 37 len ceil32(_1307) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1 % 128:
            mem[_733 + idx + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1191 = mem[96]
        mem[_733 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 32] = '.json'
        if ceil32(_1191) <= _1191:
            _1615 = mem[64]
            mem[64] = _733 + stor11.length.field_1 % 128 + _1191 + 37
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 37] = 32
            _1647 = mem[_1615]
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 69] = mem[_1615]
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 101 len ceil32(_1647)] = mem[_1615 + 32 len ceil32(_1647)]
            if ceil32(_1647) > _1647:
                mem[_733 + stor11.length.field_1 % 128 + _1191 + _1647 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 % 128 + _1191 + 69 len ceil32(_1647) + 32]
        _1623 = mem[64]
        mem[64] = _733 + stor11.length.field_1 % 128 + _1191 + 37
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 37] = 32
        _1655 = mem[_1623]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 69] = mem[_1623]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 101 len ceil32(_1655)] = mem[_1623 + 32 len ceil32(_1655)]
        if ceil32(_1655) > _1655:
            mem[_733 + stor11.length.field_1 % 128 + _1191 + _1655 + 101] = 0
        return 32, mem[_733 + stor11.length.field_1 % 128 + _1191 + 69 len ceil32(_1655) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if stor11.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _265 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_265) > _265:
                        mem[_265 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_265) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor11.length.field_1):
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[uint255(stor11.length.field_1) + 192] = '0'
            mem[uint255(stor11.length.field_1) + 193] = '.json'
            mem[uint255(stor11.length.field_1) + 198] = 32
            mem[uint255(stor11.length.field_1) + 230] = mem[160]
            mem[uint255(stor11.length.field_1) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[uint255(stor11.length.field_1) + mem[160] + 262] = 0
            return Array(len=mem[160], data=mem[uint255(stor11.length.field_1) + 262 len ceil32(mem[160])])
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[192] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 6
                _267 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_267) > _267:
                    mem[_267 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_267) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[idx + 192] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor11.length.field_1 % 128 + 192] = '0'
        mem[stor11.length.field_1 % 128 + 193] = '.json'
        mem[stor11.length.field_1 % 128 + 198] = 32
        mem[stor11.length.field_1 % 128 + 230] = mem[160]
        mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[stor11.length.field_1 % 128 + mem[160] + 262] = 0
        return Array(len=mem[160], data=mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _734 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _796 = mem[96]
                mem[mem[64] + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_734 + uint255(stor11.length.field_1) + _796 + 32] = '.json'
                if ceil32(_796) <= _796:
                    _1224 = mem[64]
                    mem[64] = _734 + uint255(stor11.length.field_1) + _796 + 37
                    mem[_734 + uint255(stor11.length.field_1) + _796 + 37] = 32
                    _1292 = mem[_1224]
                    mem[_734 + uint255(stor11.length.field_1) + _796 + 69] = mem[_1224]
                    mem[_734 + uint255(stor11.length.field_1) + _796 + 101 len ceil32(_1292)] = mem[_1224 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_734 + uint255(stor11.length.field_1) + _796 + _1292 + 101] = 0
                    return 32, mem[_734 + uint255(stor11.length.field_1) + _796 + 69 len ceil32(_1292) + 32]
                _1244 = mem[64]
                mem[64] = _734 + uint255(stor11.length.field_1) + _796 + 37
                mem[_734 + uint255(stor11.length.field_1) + _796 + 37] = 32
                _1308 = mem[_1244]
                mem[_734 + uint255(stor11.length.field_1) + _796 + 69] = mem[_1244]
                mem[_734 + uint255(stor11.length.field_1) + _796 + 101 len ceil32(_1308)] = mem[_1244 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_734 + uint255(stor11.length.field_1) + _796 + _1308 + 101] = 0
                return 32, mem[_734 + uint255(stor11.length.field_1) + _796 + 69 len ceil32(_1308) + 32]
            if bool(stor11.length) != 1:
                _806 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_806] = '.json'
                if ceil32(_806) <= _806:
                    _1226 = mem[64]
                    mem[64] = _806 + 5
                    mem[_806 + 5] = 32
                    _1293 = mem[_1226]
                    mem[_806 + 37] = mem[_1226]
                    mem[_806 + 69 len ceil32(_1293)] = mem[_1226 + 32 len ceil32(_1293)]
                    if ceil32(_1293) > _1293:
                        mem[_806 + _1293 + 69] = 0
                    return 32, mem[_806 + 37 len ceil32(_1293) + 32]
                _1245 = mem[64]
                mem[64] = _806 + 5
                mem[_806 + 5] = 32
                _1309 = mem[_1245]
                mem[_806 + 37] = mem[_1245]
                mem[_806 + 69 len ceil32(_1309)] = mem[_1245 + 32 len ceil32(_1309)]
                if ceil32(_1309) > _1309:
                    mem[_806 + _1309 + 69] = 0
                return 32, mem[_806 + 37 len ceil32(_1309) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length.field_1):
                mem[_734 + idx + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1192 = mem[96]
            mem[_734 + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + uint255(stor11.length.field_1) + _1192 + 32] = '.json'
            if ceil32(_1192) <= _1192:
                _1616 = mem[64]
                mem[64] = _734 + uint255(stor11.length.field_1) + _1192 + 37
                mem[_734 + uint255(stor11.length.field_1) + _1192 + 37] = 32
                _1648 = mem[_1616]
                mem[_734 + uint255(stor11.length.field_1) + _1192 + 69] = mem[_1616]
                mem[_734 + uint255(stor11.length.field_1) + _1192 + 101 len ceil32(_1648)] = mem[_1616 + 32 len ceil32(_1648)]
                if ceil32(_1648) > _1648:
                    mem[_734 + uint255(stor11.length.field_1) + _1192 + _1648 + 101] = 0
                return 32, mem[_734 + uint255(stor11.length.field_1) + _1192 + 69 len ceil32(_1648) + 32]
            _1624 = mem[64]
            mem[64] = _734 + uint255(stor11.length.field_1) + _1192 + 37
            mem[_734 + uint255(stor11.length.field_1) + _1192 + 37] = 32
            _1656 = mem[_1624]
            mem[_734 + uint255(stor11.length.field_1) + _1192 + 69] = mem[_1624]
            mem[_734 + uint255(stor11.length.field_1) + _1192 + 101 len ceil32(_1656)] = mem[_1624 + 32 len ceil32(_1656)]
            if ceil32(_1656) > _1656:
                mem[_734 + uint255(stor11.length.field_1) + _1192 + _1656 + 101] = 0
            return 32, mem[_734 + uint255(stor11.length.field_1) + _1192 + 69 len ceil32(_1656) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _807 = mem[96]
            mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = '.json'
            if ceil32(mem[96]) <= mem[96]:
                _1227 = mem[64]
                mem[64] = _734 + stor11.length.field_1 % 128 + _807 + 37
                mem[_734 + stor11.length.field_1 % 128 + _807 + 37] = 32
                _1294 = mem[_1227]
                mem[_734 + stor11.length.field_1 % 128 + _807 + 69] = mem[_1227]
                mem[_734 + stor11.length.field_1 % 128 + _807 + 101 len ceil32(_1294)] = mem[_1227 + 32 len ceil32(_1294)]
                if ceil32(_1294) > _1294:
                    mem[_734 + stor11.length.field_1 % 128 + _807 + _1294 + 101] = 0
                return 32, mem[_734 + stor11.length.field_1 % 128 + _807 + 69 len ceil32(_1294) + 32]
            _1246 = mem[64]
            mem[64] = _734 + stor11.length.field_1 % 128 + _807 + 37
            mem[_734 + stor11.length.field_1 % 128 + _807 + 37] = 32
            _1310 = mem[_1246]
            mem[_734 + stor11.length.field_1 % 128 + _807 + 69] = mem[_1246]
            mem[_734 + stor11.length.field_1 % 128 + _807 + 101 len ceil32(_1310)] = mem[_1246 + 32 len ceil32(_1310)]
            if ceil32(_1310) > _1310:
                mem[_734 + stor11.length.field_1 % 128 + _807 + _1310 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 % 128 + _807 + 69 len ceil32(_1310) + 32]
        if bool(stor11.length) != 1:
            _814 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_814] = '.json'
            if ceil32(_814) <= _814:
                _1229 = mem[64]
                mem[64] = _814 + 5
                mem[_814 + 5] = 32
                _1295 = mem[_1229]
                mem[_814 + 37] = mem[_1229]
                mem[_814 + 69 len ceil32(_1295)] = mem[_1229 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_814 + _1295 + 69] = 0
                return 32, mem[_814 + 37 len ceil32(_1295) + 32]
            _1247 = mem[64]
            mem[64] = _814 + 5
            mem[_814 + 5] = 32
            _1311 = mem[_1247]
            mem[_814 + 37] = mem[_1247]
            mem[_814 + 69 len ceil32(_1311)] = mem[_1247 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_814 + _1311 + 69] = 0
            return 32, mem[_814 + 37 len ceil32(_1311) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1 % 128:
            mem[_734 + idx + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 32] = '.json'
        if ceil32(_1193) <= _1193:
            _1617 = mem[64]
            mem[64] = _734 + stor11.length.field_1 % 128 + _1193 + 37
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 37] = 32
            _1649 = mem[_1617]
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 69] = mem[_1617]
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 101 len ceil32(_1649)] = mem[_1617 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_734 + stor11.length.field_1 % 128 + _1193 + _1649 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 % 128 + _1193 + 69 len ceil32(_1649) + 32]
        _1625 = mem[64]
        mem[64] = _734 + stor11.length.field_1 % 128 + _1193 + 37
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 37] = 32
        _1657 = mem[_1625]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 69] = mem[_1625]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 101 len ceil32(_1657)] = mem[_1625 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_734 + stor11.length.field_1 % 128 + _1193 + _1657 + 101] = 0
        return 32, mem[_734 + stor11.length.field_1 % 128 + _1193 + 69 len ceil32(_1657) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _735 = mem[64]
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _797 = mem[96]
            mem[mem[64] + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_735 + uint255(stor11.length.field_1) + _797 + 32] = '.json'
            if ceil32(_797) <= _797:
                _1230 = mem[64]
                mem[64] = _735 + uint255(stor11.length.field_1) + _797 + 37
                mem[_735 + uint255(stor11.length.field_1) + _797 + 37] = 32
                _1296 = mem[_1230]
                mem[_735 + uint255(stor11.length.field_1) + _797 + 69] = mem[_1230]
                mem[_735 + uint255(stor11.length.field_1) + _797 + 101 len ceil32(_1296)] = mem[_1230 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_735 + uint255(stor11.length.field_1) + _797 + _1296 + 101] = 0
                return 32, mem[_735 + uint255(stor11.length.field_1) + _797 + 69 len ceil32(_1296) + 32]
            _1248 = mem[64]
            mem[64] = _735 + uint255(stor11.length.field_1) + _797 + 37
            mem[_735 + uint255(stor11.length.field_1) + _797 + 37] = 32
            _1312 = mem[_1248]
            mem[_735 + uint255(stor11.length.field_1) + _797 + 69] = mem[_1248]
            mem[_735 + uint255(stor11.length.field_1) + _797 + 101 len ceil32(_1312)] = mem[_1248 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_735 + uint255(stor11.length.field_1) + _797 + _1312 + 101] = 0
            return 32, mem[_735 + uint255(stor11.length.field_1) + _797 + 69 len ceil32(_1312) + 32]
        if bool(stor11.length) != 1:
            _808 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_808] = '.json'
            if ceil32(_808) <= _808:
                _1232 = mem[64]
                mem[64] = _808 + 5
                mem[_808 + 5] = 32
                _1297 = mem[_1232]
                mem[_808 + 37] = mem[_1232]
                mem[_808 + 69 len ceil32(_1297)] = mem[_1232 + 32 len ceil32(_1297)]
                if ceil32(_1297) > _1297:
                    mem[_808 + _1297 + 69] = 0
                return 32, mem[_808 + 37 len ceil32(_1297) + 32]
            _1249 = mem[64]
            mem[64] = _808 + 5
            mem[_808 + 5] = 32
            _1313 = mem[_1249]
            mem[_808 + 37] = mem[_1249]
            mem[_808 + 69 len ceil32(_1313)] = mem[_1249 + 32 len ceil32(_1313)]
            if ceil32(_1313) > _1313:
                mem[_808 + _1313 + 69] = 0
            return 32, mem[_808 + 37 len ceil32(_1313) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < uint255(stor11.length.field_1):
            mem[_735 + idx + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1194 = mem[96]
        mem[_735 + uint255(stor11.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + uint255(stor11.length.field_1) + _1194 + 32] = '.json'
        if ceil32(_1194) <= _1194:
            _1618 = mem[64]
            mem[64] = _735 + uint255(stor11.length.field_1) + _1194 + 37
            mem[_735 + uint255(stor11.length.field_1) + _1194 + 37] = 32
            _1650 = mem[_1618]
            mem[_735 + uint255(stor11.length.field_1) + _1194 + 69] = mem[_1618]
            mem[_735 + uint255(stor11.length.field_1) + _1194 + 101 len ceil32(_1650)] = mem[_1618 + 32 len ceil32(_1650)]
            if ceil32(_1650) > _1650:
                mem[_735 + uint255(stor11.length.field_1) + _1194 + _1650 + 101] = 0
            return 32, mem[_735 + uint255(stor11.length.field_1) + _1194 + 69 len ceil32(_1650) + 32]
        _1626 = mem[64]
        mem[64] = _735 + uint255(stor11.length.field_1) + _1194 + 37
        mem[_735 + uint255(stor11.length.field_1) + _1194 + 37] = 32
        _1658 = mem[_1626]
        mem[_735 + uint255(stor11.length.field_1) + _1194 + 69] = mem[_1626]
        mem[_735 + uint255(stor11.length.field_1) + _1194 + 101 len ceil32(_1658)] = mem[_1626 + 32 len ceil32(_1658)]
        if ceil32(_1658) > _1658:
            mem[_735 + uint255(stor11.length.field_1) + _1194 + _1658 + 101] = 0
        return 32, mem[_735 + uint255(stor11.length.field_1) + _1194 + 69 len ceil32(_1658) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor11.length):
        mem[mem[64] + 32] = Mask(248, 8, stor11.length)
        _809 = mem[96]
        mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = '.json'
        if ceil32(mem[96]) <= mem[96]:
            _1233 = mem[64]
            mem[64] = _735 + stor11.length.field_1 % 128 + _809 + 37
            mem[_735 + stor11.length.field_1 % 128 + _809 + 37] = 32
            _1298 = mem[_1233]
            mem[_735 + stor11.length.field_1 % 128 + _809 + 69] = mem[_1233]
            mem[_735 + stor11.length.field_1 % 128 + _809 + 101 len ceil32(_1298)] = mem[_1233 + 32 len ceil32(_1298)]
            if ceil32(_1298) > _1298:
                mem[_735 + stor11.length.field_1 % 128 + _809 + _1298 + 101] = 0
            return 32, mem[_735 + stor11.length.field_1 % 128 + _809 + 69 len ceil32(_1298) + 32]
        _1250 = mem[64]
        mem[64] = _735 + stor11.length.field_1 % 128 + _809 + 37
        mem[_735 + stor11.length.field_1 % 128 + _809 + 37] = 32
        _1314 = mem[_1250]
        mem[_735 + stor11.length.field_1 % 128 + _809 + 69] = mem[_1250]
        mem[_735 + stor11.length.field_1 % 128 + _809 + 101 len ceil32(_1314)] = mem[_1250 + 32 len ceil32(_1314)]
        if ceil32(_1314) > _1314:
            mem[_735 + stor11.length.field_1 % 128 + _809 + _1314 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 % 128 + _809 + 69 len ceil32(_1314) + 32]
    if bool(stor11.length) != 1:
        _815 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_815] = '.json'
        if ceil32(_815) <= _815:
            _1235 = mem[64]
            mem[64] = _815 + 5
            mem[_815 + 5] = 32
            _1299 = mem[_1235]
            mem[_815 + 37] = mem[_1235]
            mem[_815 + 69 len ceil32(_1299)] = mem[_1235 + 32 len ceil32(_1299)]
            if ceil32(_1299) > _1299:
                mem[_815 + _1299 + 69] = 0
            return 32, mem[_815 + 37 len ceil32(_1299) + 32]
        _1251 = mem[64]
        mem[64] = _815 + 5
        mem[_815 + 5] = 32
        _1315 = mem[_1251]
        mem[_815 + 37] = mem[_1251]
        mem[_815 + 69 len ceil32(_1315)] = mem[_1251 + 32 len ceil32(_1315)]
        if ceil32(_1315) > _1315:
            mem[_815 + _1315 + 69] = 0
        return 32, mem[_815 + 37 len ceil32(_1315) + 32]
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1 % 128:
        mem[_735 + idx + 32] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1195 = mem[96]
    mem[_735 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 32] = '.json'
    if ceil32(_1195) <= _1195:
        _1619 = mem[64]
        mem[64] = _735 + stor11.length.field_1 % 128 + _1195 + 37
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 37] = 32
        _1651 = mem[_1619]
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 69] = mem[_1619]
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 101 len ceil32(_1651)] = mem[_1619 + 32 len ceil32(_1651)]
        if ceil32(_1651) > _1651:
            mem[_735 + stor11.length.field_1 % 128 + _1195 + _1651 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 % 128 + _1195 + 69 len ceil32(_1651) + 32]
    _1627 = mem[64]
    mem[64] = _735 + stor11.length.field_1 % 128 + _1195 + 37
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 37] = 32
    _1659 = mem[_1627]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 69] = mem[_1627]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 101 len ceil32(_1659)] = mem[_1627 + 32 len ceil32(_1659)]
    if ceil32(_1659) > _1659:
        mem[_735 + stor11.length.field_1 % 128 + _1195 + _1659 + 101] = 0
    return 32, mem[_735 + stor11.length.field_1 % 128 + _1195 + 69 len ceil32(_1659) + 32]
}



}
