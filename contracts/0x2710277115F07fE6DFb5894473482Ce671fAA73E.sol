contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct stor201;
uint8 paused;
address owner;
uint256 stor401;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'AhoyNFT' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'AhoyNFT' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'ANFT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 4
        stor102.length.field_8 = 'ANFT' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    paused = 0
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor152[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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

function safeMint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor401++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor401]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor154[stor401] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor401
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = stor401
        stor152[stor401] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[stor401] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[stor401]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor401]
        stor154[stor401] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor401] = arg1
    emit Transfer(0, arg1, stor401);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, 0, stor401, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not ownerOf[stor401]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor201[stor401].field_0:
        if stor201[stor401].field_0 == stor201[stor401].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor201[stor401][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor201[stor401].field_0 = 0
            idx = 0
            while stor201[stor401].field_1 + 31 / 32 > idx:
                stor201[stor401][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor201[stor401].field_0 == stor201[stor401].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor201[stor401][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor201[stor401].field_0 = 0
            idx = 0
            while stor201[stor401].field_1 + 31 / 32 > idx:
                stor201[stor401][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor152[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor201[arg1].field_0:
        if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor201[arg1].field_0:
            if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor201[arg1].field_1:
                if 31 < stor201[arg1].field_1:
                    mem[128] = stor201[arg1].field_0
                    idx = 128
                    s = 0
                    while stor201[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor201[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201[arg1].field_1), data=mem[128 len ceil32(stor201[arg1].field_1)])
                mem[128] = 256 * stor201[arg1].field_8
        else:
            if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor201[arg1].field_1:
                if 31 < stor201[arg1].field_1:
                    mem[128] = stor201[arg1].field_0
                    idx = 128
                    s = 0
                    while stor201[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor201[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201[arg1].field_1), data=mem[128 len ceil32(stor201[arg1].field_1)])
                mem[128] = 256 * stor201[arg1].field_8
        mem[ceil32(stor201[arg1].field_1) + 224 len ceil32(stor201[arg1].field_1)] = mem[128 len ceil32(stor201[arg1].field_1)]
        if ceil32(stor201[arg1].field_1) > stor201[arg1].field_1:
            mem[ceil32(stor201[arg1].field_1) + stor201[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor201[arg1].field_1), data=mem[128 len ceil32(stor201[arg1].field_1)], mem[(2 * ceil32(stor201[arg1].field_1)) + 224 len 2 * ceil32(stor201[arg1].field_1)]), 
    if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor201[arg1].field_0:
        if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor201[arg1].field_1:
            if 31 < stor201[arg1].field_1:
                mem[128] = stor201[arg1].field_0
                idx = 128
                s = 0
                while stor201[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor201[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201[arg1].field_0, data=mem[128 len ceil32(stor201[arg1].field_1)])
            mem[128] = 256 * stor201[arg1].field_8
    else:
        if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor201[arg1].field_1:
            if 31 < stor201[arg1].field_1:
                mem[128] = stor201[arg1].field_0
                idx = 128
                s = 0
                while stor201[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor201[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201[arg1].field_0, data=mem[128 len ceil32(stor201[arg1].field_1)])
            mem[128] = 256 * stor201[arg1].field_8
    mem[ceil32(stor201[arg1].field_1) + 224 len ceil32(stor201[arg1].field_1)] = mem[128 len ceil32(stor201[arg1].field_1)]
    if ceil32(stor201[arg1].field_1) > stor201[arg1].field_1:
        mem[ceil32(stor201[arg1].field_1) + stor201[arg1].field_1 + 224] = 0
    return Array(len=stor201[arg1].field_0, data=mem[128 len ceil32(stor201[arg1].field_1)], mem[(2 * ceil32(stor201[arg1].field_1)) + 224 len 2 * ceil32(stor201[arg1].field_1)]), 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor106[stor103[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        stor154[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if balanceOf[stor103[arg1]] < 1:
            revert with 'NH{q', 17
        if stor152[arg1] != balanceOf[stor103[arg1]] - 1:
            tokenOfOwnerByIndex[stor103[arg1]][stor152[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
            stor152[stor151[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor152[arg1]
        stor152[arg1] = 0
        tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor154[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor154[arg1]] = tokenByIndex[tokenByIndex.length]
    stor154[stor153[stor153.length]] = stor154[arg1]
    stor154[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor201[arg1].field_0:
        if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor201[arg1].field_1:
            if stor201[arg1].field_0:
                if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor201[arg1].field_0 = 0
                if 31 < stor201[arg1].field_1:
                    idx = 0
                    while stor201[arg1].field_1 + 31 / 32 > idx:
                        stor201[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor201[arg1].field_0 = 0
                if 31 < stor201[arg1].field_1:
                    idx = 0
                    while stor201[arg1].field_1 + 31 / 32 > idx:
                        stor201[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor201[arg1].field_1:
            if stor201[arg1].field_0:
                if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor201[arg1].field_0 = 0
                if 31 < stor201[arg1].field_1:
                    idx = 0
                    while stor201[arg1].field_1 + 31 / 32 > idx:
                        stor201[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor201[arg1].field_0 == stor201[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                stor201[arg1].field_0 = 0
                if 31 < stor201[arg1].field_1:
                    idx = 0
                    while stor201[arg1].field_1 + 31 / 32 > idx:
                        stor201[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    else:
        if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
            revert with 'NH{q', 65
        else:
            require arg4 + arg4.length + 36 <= calldata.size
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: operator query for nonexistent token'
            else:
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                else:
                    if msg.sender == ownerOf[arg3]:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        else:
                            if ownerOf[arg3] != arg1:
                                revert with 0, 'ERC721: transfer of token that is not own'
                            else:
                                if not arg2:
                                    revert with 0, 'ERC721: transfer to the zero address'
                                else:
                                    if paused:
                                        revert with 0, 'Pausable: paused'
                                    else:
                                        if arg1:
                                            if arg1 == arg2:
                                                if arg2:
                                                    if arg2 == arg1:
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                    else:
                                                        if not arg2:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                            stor152[arg3] = balanceOf[address(arg2)]
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                else:
                                                    if tokenByIndex.length < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            if stor154[arg3] >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                stor154[stor153[stor153.length]] = stor154[arg3]
                                                                stor154[arg3] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 'NH{q', 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                            else:
                                                if not arg1:
                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                else:
                                                    if balanceOf[address(arg1)] < 1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if stor152[arg3] == balanceOf[address(arg1)] - 1:
                                                            stor152[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                        stor152[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor154[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor154[stor153[stor153.length]] = stor154[arg3]
                                                                            stor154[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                        else:
                                                            tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                                            stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                                            stor152[arg3] = 0
                                                            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                        stor152[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor154[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor154[stor153[stor153.length]] = stor154[arg3]
                                                                            stor154[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                        else:
                                            stor154[arg3] = tokenByIndex.length
                                            tokenByIndex.length++
                                            tokenByIndex[tokenByIndex.length] = arg3
                                            if arg2:
                                                if arg2 == arg1:
                                                    approved[arg3] = 0
                                                    if not ownerOf[arg3]:
                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                        if balanceOf[address(arg1)] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            balanceOf[address(arg1)]--
                                                            if balanceOf[address(arg2)] > -2:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg2)]++
                                                                ownerOf[arg3] = arg2
                                                                emit Transfer(arg1, arg2, arg3);
                                                                if ext_code.size(arg2) <= 0:
                                                                else:
                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                                    else:
                                                                        require ext_code.size(arg2)
                                                                        call arg2.0x150b7a02 with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                        if not ext_call.success:
                                                                            if not return_data.size:
                                                                                if not arg4.length:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with arg4[all]
                                                                            else:
                                                                                if not return_data.size:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                            else:
                                                else:
                                                    if not arg2:
                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                    else:
                                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                        stor152[arg3] = balanceOf[address(arg2)]
                                                        approved[arg3] = 0
                                                        if not ownerOf[arg3]:
                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                balanceOf[address(arg1)]--
                                                                if balanceOf[address(arg2)] > -2:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg2)]++
                                                                    ownerOf[arg3] = arg2
                                                                    emit Transfer(arg1, arg2, arg3);
                                                                    if ext_code.size(arg2) <= 0:
                                                                    else:
                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                                                        else:
                                                                            require ext_code.size(arg2)
                                                                            call arg2.0x150b7a02 with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                            if not ext_call.success:
                                                                                if not return_data.size:
                                                                                    if not arg4.length:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with arg4[all]
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                else:
                                            else:
                                                if tokenByIndex.length < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        if stor154[arg3] >= tokenByIndex.length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                            stor154[stor153[stor153.length]] = stor154[arg3]
                                                            stor154[arg3] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 'NH{q', 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                    else:
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        else:
                            if approved[arg3] == msg.sender:
                                if not ownerOf[arg3]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                else:
                                    if ownerOf[arg3] != arg1:
                                        revert with 0, 'ERC721: transfer of token that is not own'
                                    else:
                                        if not arg2:
                                            revert with 0, 'ERC721: transfer to the zero address'
                                        else:
                                            if paused:
                                                revert with 0, 'Pausable: paused'
                                            else:
                                                if arg1:
                                                    if arg1 == arg2:
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                    stor152[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor154[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor154[stor153[stor153.length]] = stor154[arg3]
                                                                        stor154[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 'ERC721: balance query for the zero address'
                                                        else:
                                                            if balanceOf[address(arg1)] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if stor152[arg3] == balanceOf[address(arg1)] - 1:
                                                                    stor152[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                                stor152[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor154[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor154[stor153[stor153.length]] = stor154[arg3]
                                                                                    stor154[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                                                    stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                                                    stor152[arg3] = 0
                                                                    tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                                    if arg2:
                                                                        if arg2 == arg1:
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                        else:
                                                                            if not arg2:
                                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                                            else:
                                                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                                stor152[arg3] = balanceOf[address(arg2)]
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                    else:
                                                                        if tokenByIndex.length < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                if stor154[arg3] >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                    stor154[stor153[stor153.length]] = stor154[arg3]
                                                                                    stor154[arg3] = 0
                                                                                    if not tokenByIndex.length:
                                                                                        revert with 'NH{q', 49
                                                                                    else:
                                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                                        tokenByIndex.length--
                                                                                        approved[arg3] = 0
                                                                                        if not ownerOf[arg3]:
                                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                        else:
                                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                                            if balanceOf[address(arg1)] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg1)]--
                                                                                                if balanceOf[address(arg2)] > -2:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg2)]++
                                                                                                    ownerOf[arg3] = arg2
                                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                                    if ext_code.size(arg2) <= 0:
                                                                                                    else:
                                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                        else:
                                                                                                            require ext_code.size(arg2)
                                                                                                            call arg2.0x150b7a02 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                            if not ext_call.success:
                                                                                                                if not return_data.size:
                                                                                                                    if not arg4.length:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with arg4[all]
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                else:
                                                    stor154[arg3] = tokenByIndex.length
                                                    tokenByIndex.length++
                                                    tokenByIndex[tokenByIndex.length] = arg3
                                                    if arg2:
                                                        if arg2 == arg1:
                                                            approved[arg3] = 0
                                                            if not ownerOf[arg3]:
                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    balanceOf[address(arg1)]--
                                                                    if balanceOf[address(arg2)] > -2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg2)]++
                                                                        ownerOf[arg3] = arg2
                                                                        emit Transfer(arg1, arg2, arg3);
                                                                        if ext_code.size(arg2) <= 0:
                                                                        else:
                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                                            else:
                                                                                require ext_code.size(arg2)
                                                                                call arg2.0x150b7a02 with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                if not ext_call.success:
                                                                                    if not return_data.size:
                                                                                        if not arg4.length:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with arg4[all]
                                                                                    else:
                                                                                        if not return_data.size:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                    else:
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                stor152[arg3] = balanceOf[address(arg2)]
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                    else:
                                                        if tokenByIndex.length < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                if stor154[arg3] >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                    stor154[stor153[stor153.length]] = stor154[arg3]
                                                                    stor154[arg3] = 0
                                                                    if not tokenByIndex.length:
                                                                        revert with 'NH{q', 49
                                                                    else:
                                                                        tokenByIndex[tokenByIndex.length] = 0
                                                                        tokenByIndex.length--
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                            else:
                                if not stor106[stor103[arg3]][address(msg.sender)]:
                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                                else:
                                    if not ownerOf[arg3]:
                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                    else:
                                        if ownerOf[arg3] != arg1:
                                            revert with 0, 'ERC721: transfer of token that is not own'
                                        else:
                                            if not arg2:
                                                revert with 0, 'ERC721: transfer to the zero address'
                                            else:
                                                if paused:
                                                    revert with 0, 'Pausable: paused'
                                                else:
                                                    if arg1:
                                                        if arg1 == arg2:
                                                            if arg2:
                                                                if arg2 == arg1:
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                else:
                                                                    if not arg2:
                                                                        revert with 0, 'ERC721: balance query for the zero address'
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                        stor152[arg3] = balanceOf[address(arg2)]
                                                                        approved[arg3] = 0
                                                                        if not ownerOf[arg3]:
                                                                            revert with 0, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg3], 0, arg3);
                                                                            if balanceOf[address(arg1)] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg1)]--
                                                                                if balanceOf[address(arg2)] > -2:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg2)]++
                                                                                    ownerOf[arg3] = arg2
                                                                                    emit Transfer(arg1, arg2, arg3);
                                                                                    if ext_code.size(arg2) <= 0:
                                                                                    else:
                                                                                        if ceil32(arg4.length) <= arg4.length:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                        else:
                                                                                            require ext_code.size(arg2)
                                                                                            call arg2.0x150b7a02 with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                            if not ext_call.success:
                                                                                                if not return_data.size:
                                                                                                    if not arg4.length:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with arg4[all]
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                            else:
                                                                if tokenByIndex.length < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if stor154[arg3] >= tokenByIndex.length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                            stor154[stor153[stor153.length]] = stor154[arg3]
                                                                            stor154[arg3] = 0
                                                                            if not tokenByIndex.length:
                                                                                revert with 'NH{q', 49
                                                                            else:
                                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                                tokenByIndex.length--
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 'ERC721: balance query for the zero address'
                                                            else:
                                                                if balanceOf[address(arg1)] < 1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if stor152[arg3] == balanceOf[address(arg1)] - 1:
                                                                        stor152[arg3] = 0
                                                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                                        if arg2:
                                                                            if arg2 == arg1:
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                            else:
                                                                                if not arg2:
                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                else:
                                                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                                    stor152[arg3] = balanceOf[address(arg2)]
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                        else:
                                                                            if tokenByIndex.length < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if stor154[arg3] >= tokenByIndex.length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                        stor154[stor153[stor153.length]] = stor154[arg3]
                                                                                        stor154[arg3] = 0
                                                                                        if not tokenByIndex.length:
                                                                                            revert with 'NH{q', 49
                                                                                        else:
                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                            tokenByIndex.length--
                                                                                            approved[arg3] = 0
                                                                                            if not ownerOf[arg3]:
                                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                            else:
                                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                                if balanceOf[address(arg1)] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg1)]--
                                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        balanceOf[address(arg2)]++
                                                                                                        ownerOf[arg3] = arg2
                                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                                        if ext_code.size(arg2) <= 0:
                                                                                                        else:
                                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.0x150b7a02 with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                            else:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.0x150b7a02 with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                    else:
                                                                        tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                                                                        stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
                                                                        stor152[arg3] = 0
                                                                        tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
                                                                        if arg2:
                                                                            if arg2 == arg1:
                                                                                approved[arg3] = 0
                                                                                if not ownerOf[arg3]:
                                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                                    if balanceOf[address(arg1)] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg1)]--
                                                                                        if balanceOf[address(arg2)] > -2:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg2)]++
                                                                                            ownerOf[arg3] = arg2
                                                                                            emit Transfer(arg1, arg2, arg3);
                                                                                            if ext_code.size(arg2) <= 0:
                                                                                            else:
                                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                else:
                                                                                                    require ext_code.size(arg2)
                                                                                                    call arg2.0x150b7a02 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                    if not ext_call.success:
                                                                                                        if not return_data.size:
                                                                                                            if not arg4.length:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with arg4[all]
                                                                                                        else:
                                                                                                            if not return_data.size:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                            else:
                                                                                if not arg2:
                                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                                else:
                                                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                                    stor152[arg3] = balanceOf[address(arg2)]
                                                                                    approved[arg3] = 0
                                                                                    if not ownerOf[arg3]:
                                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                    else:
                                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                                        if balanceOf[address(arg1)] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            balanceOf[address(arg1)]--
                                                                                            if balanceOf[address(arg2)] > -2:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                balanceOf[address(arg2)]++
                                                                                                ownerOf[arg3] = arg2
                                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                                if ext_code.size(arg2) <= 0:
                                                                                                else:
                                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                                                    else:
                                                                                                        require ext_code.size(arg2)
                                                                                                        call arg2.0x150b7a02 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                        if not ext_call.success:
                                                                                                            if not return_data.size:
                                                                                                                if not arg4.length:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with arg4[all]
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                else:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                            else:
                                                                        else:
                                                                            if tokenByIndex.length < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    if stor154[arg3] >= tokenByIndex.length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                                        stor154[stor153[stor153.length]] = stor154[arg3]
                                                                                        stor154[arg3] = 0
                                                                                        if not tokenByIndex.length:
                                                                                            revert with 'NH{q', 49
                                                                                        else:
                                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                                            tokenByIndex.length--
                                                                                            approved[arg3] = 0
                                                                                            if not ownerOf[arg3]:
                                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                                            else:
                                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                                if balanceOf[address(arg1)] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    balanceOf[address(arg1)]--
                                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        balanceOf[address(arg2)]++
                                                                                                        ownerOf[arg3] = arg2
                                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                                        if ext_code.size(arg2) <= 0:
                                                                                                        else:
                                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.0x150b7a02 with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                                                                            else:
                                                                                                                require ext_code.size(arg2)
                                                                                                                call arg2.0x150b7a02 with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                                if not ext_call.success:
                                                                                                                    if not return_data.size:
                                                                                                                        if not arg4.length:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with arg4[all]
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                        else:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                                    else:
                                                    else:
                                                        stor154[arg3] = tokenByIndex.length
                                                        tokenByIndex.length++
                                                        tokenByIndex[tokenByIndex.length] = arg3
                                                        if arg2:
                                                            if arg2 == arg1:
                                                                approved[arg3] = 0
                                                                if not ownerOf[arg3]:
                                                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg3], 0, arg3);
                                                                    if balanceOf[address(arg1)] < 1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        balanceOf[address(arg1)]--
                                                                        if balanceOf[address(arg2)] > -2:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg2)]++
                                                                            ownerOf[arg3] = arg2
                                                                            emit Transfer(arg1, arg2, arg3);
                                                                            if ext_code.size(arg2) <= 0:
                                                                            else:
                                                                                if ceil32(arg4.length) <= arg4.length:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                                                else:
                                                                                    require ext_code.size(arg2)
                                                                                    call arg2.0x150b7a02 with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                    if not ext_call.success:
                                                                                        if not return_data.size:
                                                                                            if not arg4.length:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with arg4[all]
                                                                                        else:
                                                                                            if not return_data.size:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                        else:
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 'ERC721: balance query for the zero address'
                                                                else:
                                                                    tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
                                                                    stor152[arg3] = balanceOf[address(arg2)]
                                                                    approved[arg3] = 0
                                                                    if not ownerOf[arg3]:
                                                                        revert with 0, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg3], 0, arg3);
                                                                        if balanceOf[address(arg1)] < 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            balanceOf[address(arg1)]--
                                                                            if balanceOf[address(arg2)] > -2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                balanceOf[address(arg2)]++
                                                                                ownerOf[arg3] = arg2
                                                                                emit Transfer(arg1, arg2, arg3);
                                                                                if ext_code.size(arg2) <= 0:
                                                                                else:
                                                                                    if ceil32(arg4.length) <= arg4.length:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                                                    else:
                                                                                        require ext_code.size(arg2)
                                                                                        call arg2.0x150b7a02 with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                        if not ext_call.success:
                                                                                            if not return_data.size:
                                                                                                if not arg4.length:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with arg4[all]
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                else:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                            else:
                                                        else:
                                                            if tokenByIndex.length < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    if stor154[arg3] >= tokenByIndex.length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
                                                                        stor154[stor153[stor153.length]] = stor154[arg3]
                                                                        stor154[arg3] = 0
                                                                        if not tokenByIndex.length:
                                                                            revert with 'NH{q', 49
                                                                        else:
                                                                            tokenByIndex[tokenByIndex.length] = 0
                                                                            tokenByIndex.length--
                                                                            approved[arg3] = 0
                                                                            if not ownerOf[arg3]:
                                                                                revert with 0, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg3], 0, arg3);
                                                                                if balanceOf[address(arg1)] < 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    balanceOf[address(arg1)]--
                                                                                    if balanceOf[address(arg2)] > -2:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        balanceOf[address(arg2)]++
                                                                                        ownerOf[arg3] = arg2
                                                                                        emit Transfer(arg1, arg2, arg3);
                                                                                        if ext_code.size(arg2) <= 0:
                                                                                        else:
                                                                                            if ceil32(arg4.length) <= arg4.length:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
                                                                                            else:
                                                                                                require ext_code.size(arg2)
                                                                                                call arg2.0x150b7a02 with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                                                                if not ext_call.success:
                                                                                                    if not return_data.size:
                                                                                                        if not arg4.length:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with arg4[all]
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                        else:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                                                                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                                                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                                                                                    else:
}



}
