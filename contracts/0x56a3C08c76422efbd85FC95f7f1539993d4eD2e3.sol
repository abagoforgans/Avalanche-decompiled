contract main {




// =====================  Runtime code  =====================


#
#  - mint(string arg1, string arg2, bytes32 arg3, bytes32 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - mintWithSig(address arg1, string arg2, string arg3, bytes32 arg4, bytes32 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint8 arg10, bytes32 arg11, bytes32 arg12)
#
const PERMIT_TYPEHASH = 0x49ecf333e5b8c95c40fdafc95c1ad136e8914a8fb55e9dc8bb01eaa83a2df9ad

const MINT_WITH_SIG_TYPEHASH = 0x2952e482b8e2b192305f87374d7af45dc2eafafe4f50d26a0c02e90f2fdbe14b


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
uint256 stor10;
address owner;
address marketContractAddress;
mapping of address previousTokenOwners;
mapping of address tokenCreators;
mapping of uint256 tokenContentHashes;
mapping of uint256 tokenMetadataHashes;
mapping of struct stor18;
mapping of uint256 permitNonces;
mapping of uint256 mintWithSigNonces;
mapping of struct stor22;
uint256 stor23;

function tokenMetadataHashes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenMetadataHashes[arg1]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function mintWithSigNonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintWithSigNonces[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function previousTokenOwners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return previousTokenOwners[arg1]
}

function marketContract() payable {
    return marketContractAddress
}

function tokenCreators(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenCreators[arg1]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function permitNonces(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return permitNonces[arg1][arg2]
}

function tokenContentHashes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenContentHashes[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function removeBid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if stor23 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: token with that id does not exist'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x776a0835 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function revokeApproval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    if approved[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: caller not approved address'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    stor10 = 1
}

function setBid(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require calldata.size - 36 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require calldata.size - 164 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0, 'Media: nonexistent token'
    if arg4 != msg.sender:
        revert with 0, 'Market: Bidder must be msg sender'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0xbdb58698 with:
         gas gas_remaining wei
        args arg1, arg2, address(arg3), address(arg4), address(arg5), arg6, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function approve(address arg1, uint256 arg2) payable {
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

function setAsk(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require calldata.size - 36 >= 64
    require arg3 == arg3
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x62f24b70 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function removeAsk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x28220f35 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function acceptBid(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require calldata.size - 36 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require calldata.size - 164 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0xba339399 with:
         gas gas_remaining wei
        args arg1, arg2, address(arg3), address(arg4), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function permit(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require calldata.size - 68 >= 128
    require arg4 == arg4
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg2]:
        revert with 0, 'Media: nonexistent token'
    if arg3:
        if block.timestamp > arg3:
            revert with 0, 'Media: Permit expired'
    if not arg1:
        revert with 0, 'Media: spender cannot be 0x0'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if permitNonces[stor2[arg2]][arg2] == -1:
        revert with 0, 17
    permitNonces[stor2[arg2]][arg2]++
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, 0x6e37d29020e5a033f916dff6ea0a214cd3410089230b9b34df191ccb9c8a0c0a, 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x49ecf333e5b8c95c40fdafc95c1ad136e8914a8fb55e9dc8bb01eaa83a2df9ad, address(arg1), arg2, permitNonces[stor2[arg2]][arg2], arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Media: Signature invalid'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != address(signer):
        revert with 0, 'Media: Signature invalid'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
    stor10 = 1
}

function updateTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    if not tokenContentHashes[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: token does not have hash of created content'
    if not arg2.length:
        revert with 0, 'Media: specified uri must be non-empty'
    mem[ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 160] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if stor22[arg1].field_0:
        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor22[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22[arg1].field_0 = 0
            idx = 0
            while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor22[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor22[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor22[arg1].field_0 = 0
            idx = 0
            while stor22[arg1].field_1 + 31 / 32 > idx:
                stor22[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[(2 * ceil32(arg2.length)) + 160] = msg.sender
    mem[(2 * ceil32(arg2.length)) + 192] = 64
    mem[(2 * ceil32(arg2.length)) + 224] = arg2.length
    mem[(2 * ceil32(arg2.length)) + 256 len arg2.length] = arg2[all]
    mem[arg2.length + (2 * ceil32(arg2.length)) + 256] = 0
    emit TokenURIUpdated(uint256 rg1, address rg2, string rg3):
                         mem[(2 * ceil32(arg2.length)) + 160 len (4 * ceil32(arg2.length)) + 96],
                         arg1,
    stor10 = 1
}

function updateTokenMetadataURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    if not tokenMetadataHashes[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: token does not have hash of its metadata'
    if not arg2.length:
        revert with 0, 'Media: specified uri must be non-empty'
    mem[ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 160] = 0
    if not ownerOf[arg1]:
        revert with 0, 'Media: nonexistent token'
    if stor18[arg1].field_0:
        if stor18[arg1].field_0 == uint255(stor18[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while (uint255(stor18[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor18[arg1].field_0 == stor18[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor18[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor18[arg1].field_0 = 0
            idx = 0
            while stor18[arg1].field_1 + 31 / 32 > idx:
                stor18[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[(2 * ceil32(arg2.length)) + 160] = msg.sender
    mem[(2 * ceil32(arg2.length)) + 192] = 64
    mem[(2 * ceil32(arg2.length)) + 224] = arg2.length
    mem[(2 * ceil32(arg2.length)) + 256 len arg2.length] = arg2[all]
    mem[arg2.length + (2 * ceil32(arg2.length)) + 256] = 0
    emit TokenMetadataURIUpdated(uint256 rg1, address rg2, string rg3):
                                 mem[(2 * ceil32(arg2.length)) + 160 len (4 * ceil32(arg2.length)) + 96],
                                 arg1,
    stor10 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x28220f35 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() payable {
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
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
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
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function auctionTransfer(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if marketContractAddress != msg.sender:
        revert with 0, 'Media: only market contract'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    previousTokenOwners[arg1] = ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x28220f35 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if ownerOf[arg1] != arg2:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
            stor7[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if arg2:
        if arg2 != ownerOf[arg1]:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg1
            stor7[arg1] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg1]
        stor9[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg1] = arg2
    emit Transfer(ownerOf[arg1], arg2, arg1);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), ownerOf[arg1], arg1, 128, 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x28220f35 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor23 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: token with that id does not exist'
    if stor22[arg1].field_0:
        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor22[arg1].field_0:
            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22[arg1].field_0):
                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor22[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[128 len ceil32(uint255(stor22[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor22[arg1].field_8
        else:
            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                revert with 0, 34
            if stor22[arg1].field_1:
                if 31 < stor22[arg1].field_1:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while stor22[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[128 len ceil32(uint255(stor22[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor22[arg1].field_8
        mem[ceil32(uint255(stor22[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor22[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor22[arg1].field_0) * 0.5) > uint255(stor22[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor22[arg1].field_0) * 0.5) + (uint255(stor22[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[128 len ceil32(uint255(stor22[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor22[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor22[arg1].field_0) * 0.5)]), 
    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
        revert with 0, 34
    if stor22[arg1].field_0:
        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22[arg1].field_0):
            if 31 < uint255(stor22[arg1].field_0) * 0.5:
                mem[128] = stor22[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor22[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22[arg1].field_0, data=mem[128 len ceil32(stor22[arg1].field_1)])
            mem[128] = 256 * stor22[arg1].field_8
    else:
        if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
            revert with 0, 34
        if stor22[arg1].field_1:
            if 31 < stor22[arg1].field_1:
                mem[128] = stor22[arg1].field_0
                idx = 128
                s = 0
                while stor22[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor22[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22[arg1].field_0, data=mem[128 len ceil32(stor22[arg1].field_1)])
            mem[128] = 256 * stor22[arg1].field_8
    mem[ceil32(stor22[arg1].field_1) + 192 len ceil32(stor22[arg1].field_1)] = mem[128 len ceil32(stor22[arg1].field_1)]
    if ceil32(stor22[arg1].field_1) > stor22[arg1].field_1:
        mem[ceil32(stor22[arg1].field_1) + stor22[arg1].field_1 + 192] = 0
    return Array(len=stor22[arg1].field_0, data=mem[128 len ceil32(stor22[arg1].field_1)], mem[(2 * ceil32(stor22[arg1].field_1)) + 192 len 2 * ceil32(stor22[arg1].field_1)]), 
}

function tokenMetadataURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor23 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: token with that id does not exist'
    if stor18[arg1].field_0:
        if stor18[arg1].field_0 == uint255(stor18[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor18[arg1].field_0:
            if stor18[arg1].field_0 == uint255(stor18[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18[arg1].field_0):
                if 31 < uint255(stor18[arg1].field_0) * 0.5:
                    mem[128] = stor18[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor18[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor18[arg1].field_8
        else:
            if stor18[arg1].field_0 == stor18[arg1].field_1 < 32:
                revert with 0, 34
            if stor18[arg1].field_1:
                if 31 < stor18[arg1].field_1:
                    mem[128] = stor18[arg1].field_0
                    idx = 128
                    s = 0
                    while stor18[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor18[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor18[arg1].field_8
        mem[ceil32(uint255(stor18[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor18[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor18[arg1].field_0) * 0.5) > uint255(stor18[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor18[arg1].field_0) * 0.5) + (uint255(stor18[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18[arg1].field_0), data=mem[128 len ceil32(uint255(stor18[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor18[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor18[arg1].field_0) * 0.5)]), 
    if stor18[arg1].field_0 == stor18[arg1].field_1 < 32:
        revert with 0, 34
    if stor18[arg1].field_0:
        if stor18[arg1].field_0 == uint255(stor18[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18[arg1].field_0):
            if 31 < uint255(stor18[arg1].field_0) * 0.5:
                mem[128] = stor18[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor18[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0, data=mem[128 len ceil32(stor18[arg1].field_1)])
            mem[128] = 256 * stor18[arg1].field_8
    else:
        if stor18[arg1].field_0 == stor18[arg1].field_1 < 32:
            revert with 0, 34
        if stor18[arg1].field_1:
            if 31 < stor18[arg1].field_1:
                mem[128] = stor18[arg1].field_0
                idx = 128
                s = 0
                while stor18[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor18[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18[arg1].field_0, data=mem[128 len ceil32(stor18[arg1].field_1)])
            mem[128] = 256 * stor18[arg1].field_8
    mem[ceil32(stor18[arg1].field_1) + 192 len ceil32(stor18[arg1].field_1)] = mem[128 len ceil32(stor18[arg1].field_1)]
    if ceil32(stor18[arg1].field_1) > stor18[arg1].field_1:
        mem[ceil32(stor18[arg1].field_1) + stor18[arg1].field_1 + 192] = 0
    return Array(len=stor18[arg1].field_0, data=mem[128 len ceil32(stor18[arg1].field_1)], mem[(2 * ceil32(stor18[arg1].field_1)) + 192 len 2 * ceil32(stor18[arg1].field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    require ext_code.size(marketContractAddress)
    call marketContractAddress.0x28220f35 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not ownerOf[arg1]:
        revert with 0, 'Media: nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'Media: Only approved or owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if tokenCreators[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Media: owner is not creator of media'
    if not stor22[arg1].field_0:
        if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
            revert with 0, 34
        if stor22[arg1].field_0:
            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22[arg1].field_0):
                if 31 >= uint255(stor22[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor22[arg1].field_8
                else:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor22[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                revert with 0, 34
            if stor22[arg1].field_1:
                if 31 >= stor22[arg1].field_1:
                    mem[128] = 256 * stor22[arg1].field_8
                else:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while stor22[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1]:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
            stor7[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg1]
        stor9[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        approved[arg1] = 0
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg1], 0, arg1);
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        balanceOf[stor2[arg1]]--
        ownerOf[arg1] = 0
        emit Transfer(ownerOf[arg1], 0, arg1);
        if stor22[arg1].field_1:
            if stor22[arg1].field_0:
                if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if stor22[arg1].field_1:
                    stor22[arg1][].field_0 = Array(len=stor22[arg1].field_1, data=mem[128 len stor22[arg1].field_1])
                else:
                    stor22[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor22[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                    revert with 0, 34
                if stor22[arg1].field_1:
                    stor22[arg1][].field_0 = Array(len=stor22[arg1].field_1, data=mem[128 len stor22[arg1].field_1])
                else:
                    stor22[arg1].field_0 = 0
                    idx = 0
                    while stor22[arg1].field_1 + 31 / 32 > idx:
                        stor22[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor22[arg1].field_0:
            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor22[arg1].field_0):
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg1]:
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                    stor7[arg1] = 0
                    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[arg1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg1]
                stor9[arg1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                approved[arg1] = 0
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg1], 0, arg1);
                if balanceOf[stor2[arg1]] < 1:
                    revert with 0, 17
                balanceOf[stor2[arg1]]--
                ownerOf[arg1] = 0
                emit Transfer(ownerOf[arg1], 0, arg1);
                if Mask(256, -1, stor22[arg1].field_0):
                    if stor22[arg1].field_0:
                        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor22[arg1].field_0) * 0.5:
                            stor22[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor22[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                if not Mask(256, -1, stor22[arg1].field_0):
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                        stor22[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor22[arg1].field_0 = 0
                                stor22[arg1].field_1 = stor22[arg1].field_1
                                stor22[arg1].field_8 = mem[128 len 31]
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor22[arg1].field_0) * 0.5:
                            stor22[arg1].field_0 = 0
                            idx = 0
                            while stor22[arg1].field_1 + 31 / 32 > idx:
                                stor22[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                if not Mask(256, -1, stor22[arg1].field_0):
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                        stor22[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor22[arg1].field_0 = 0
                                stor22[arg1].field_1 = stor22[arg1].field_1
                                stor22[arg1].field_8 = mem[128 len 31]
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if 31 >= uint255(stor22[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor22[arg1].field_8
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[arg1]:
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[stor2[arg1]] < 1:
                            revert with 0, 17
                        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                        stor7[arg1] = 0
                        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[arg1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg1]
                    stor9[arg1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    balanceOf[stor2[arg1]]--
                    ownerOf[arg1] = 0
                    emit Transfer(ownerOf[arg1], 0, arg1);
                    if Mask(256, -1, stor22[arg1].field_0):
                        if stor22[arg1].field_0:
                            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = stor22[arg1].field_8
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = stor22[arg1].field_8
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                else:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor22[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[arg1]:
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[stor2[arg1]] < 1:
                            revert with 0, 17
                        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                        stor7[arg1] = 0
                        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[arg1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg1]
                    stor9[arg1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    balanceOf[stor2[arg1]]--
                    ownerOf[arg1] = 0
                    emit Transfer(ownerOf[arg1], 0, arg1);
                    if Mask(256, -1, stor22[arg1].field_0):
                        if stor22[arg1].field_0:
                            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = mem[128 len 31]
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
        else:
            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                revert with 0, 34
            if not stor22[arg1].field_1:
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg1]:
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                    stor7[arg1] = 0
                    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[arg1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg1]
                stor9[arg1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                approved[arg1] = 0
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg1], 0, arg1);
                if balanceOf[stor2[arg1]] < 1:
                    revert with 0, 17
                balanceOf[stor2[arg1]]--
                ownerOf[arg1] = 0
                emit Transfer(ownerOf[arg1], 0, arg1);
                if Mask(256, -1, stor22[arg1].field_0):
                    if stor22[arg1].field_0:
                        if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor22[arg1].field_0) * 0.5:
                            stor22[arg1].field_0 = 0
                            idx = 0
                            while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                stor22[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                if not Mask(256, -1, stor22[arg1].field_0):
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                        stor22[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor22[arg1].field_0 = 0
                                stor22[arg1].field_1 = stor22[arg1].field_1
                                stor22[arg1].field_8 = mem[128 len 31]
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                            revert with 0, 34
                        if not uint255(stor22[arg1].field_0) * 0.5:
                            stor22[arg1].field_0 = 0
                            idx = 0
                            while stor22[arg1].field_1 + 31 / 32 > idx:
                                stor22[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                if not Mask(256, -1, stor22[arg1].field_0):
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = 128
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                        stor22[arg1][s].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                stor22[arg1].field_0 = 0
                                stor22[arg1].field_1 = stor22[arg1].field_1
                                stor22[arg1].field_8 = mem[128 len 31]
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                if 31 >= stor22[arg1].field_1:
                    mem[128] = 256 * stor22[arg1].field_8
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[arg1]:
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[stor2[arg1]] < 1:
                            revert with 0, 17
                        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                        stor7[arg1] = 0
                        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[arg1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg1]
                    stor9[arg1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    balanceOf[stor2[arg1]]--
                    ownerOf[arg1] = 0
                    emit Transfer(ownerOf[arg1], 0, arg1);
                    if Mask(256, -1, stor22[arg1].field_0):
                        if stor22[arg1].field_0:
                            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = stor22[arg1].field_8
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = stor22[arg1].field_8
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                else:
                    mem[128] = stor22[arg1].field_0
                    idx = 128
                    s = 0
                    while stor22[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor22[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[arg1]:
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: balance query for the zero address'
                        if balanceOf[stor2[arg1]] < 1:
                            revert with 0, 17
                        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
                        stor7[arg1] = 0
                        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[arg1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg1]
                    stor9[arg1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[stor2[arg1]] < 1:
                        revert with 0, 17
                    balanceOf[stor2[arg1]]--
                    ownerOf[arg1] = 0
                    emit Transfer(ownerOf[arg1], 0, arg1);
                    if Mask(256, -1, stor22[arg1].field_0):
                        if stor22[arg1].field_0:
                            if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = mem[128 len 31]
                                    idx = 0
                                    while (uint255(stor22[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                                revert with 0, 34
                            if not uint255(stor22[arg1].field_0) * 0.5:
                                stor22[arg1].field_0 = 0
                                idx = 0
                                while stor22[arg1].field_1 + 31 / 32 > idx:
                                    stor22[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor22[arg1].field_0) * 0.5:
                                    stor22[arg1].field_0 = Mask(254, 1, stor22[arg1].field_0) + 1
                                    if not Mask(256, -1, stor22[arg1].field_0):
                                        idx = 0
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = 128
                                        while (uint255(stor22[arg1].field_0) * 0.5) + 128 > idx:
                                            stor22[arg1][s].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor22[arg1].field_0) * 0.5) + 31) >> 5
                                        while stor22[arg1].field_1 + 31 / 32 > idx:
                                            stor22[arg1][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor22[arg1].field_0 = 0
                                    stor22[arg1].field_1 = stor22[arg1].field_1
                                    stor22[arg1].field_8 = mem[128 len 31]
                                    idx = 0
                                    while stor22[arg1].field_1 + 31 / 32 > idx:
                                        stor22[arg1][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
    previousTokenOwners[arg1] = 0
    stor10 = 1
}



}
